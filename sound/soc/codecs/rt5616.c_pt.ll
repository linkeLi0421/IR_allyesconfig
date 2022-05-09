; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5616.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5616.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
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
%struct.rt5616_priv = type { ptr, %struct.delayed_work, ptr, ptr, i32, i32, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_rt5616__301_1416_rt5616_i2c_driver_init6 = internal global ptr @rt5616_i2c_driver_init, section ".initcall6.init", align 4
@rt5616_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5616_i2c_probe, ptr @rt5616_i2c_remove, ptr null, ptr @rt5616_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5616_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5616_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5616_i2c_driver_exit = internal global ptr @rt5616_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [46 x i8] c"snd_soc_rt5616.description=ASoC RT5616 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [55 x i8] c"snd_soc_rt5616.author=Bard Liao <bardliao@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [52 x i8] c"snd_soc_rt5616.file=sound/soc/codecs/snd-soc-rt5616\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [27 x i8] c"snd_soc_rt5616.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5616\00", [25 x i8] zeroinitializer }, align 32
@rt5616_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5616\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5616_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5616\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt5616_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5616_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5616_readable_register, ptr @rt5616_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5616_reg, i32 81, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5616_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5616:1354:(&rt5616_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5616_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5616_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt5616.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5616_i2c_probe._entry_ptr = internal global ptr @rt5616_i2c_probe._entry, section ".printk_index", align 4
@rt5616_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1366, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device with ID register %#x is not rt5616\0A\00", [53 x i8] zeroinitializer }, align 32
@rt5616_i2c_probe._entry_ptr.9 = internal global ptr @rt5616_i2c_probe._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_list = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 317, i32 15872, i32 0 }, %struct.reg_sequence { i32 293, i32 24848, i32 0 }, %struct.reg_sequence { i32 288, i32 24863, i32 0 }, %struct.reg_sequence { i32 289, i32 16448, i32 0 }, %struct.reg_sequence { i32 291, i32 4, i32 0 }], [36 x i8] zeroinitializer }, align 32
@rt5616_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1383, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5616_i2c_probe._entry_ptr.13 = internal global ptr @rt5616_i2c_probe._entry.10, section ".printk_index", align 4
@soc_component_dev_rt5616 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5616_snd_controls, i32 13, ptr @rt5616_dapm_widgets, i32 58, ptr @rt5616_dapm_routes, i32 82, ptr @rt5616_probe, ptr null, ptr @rt5616_suspend, ptr @rt5616_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5616_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5616_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.149, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5616_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.69, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.67, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@rt5616_reg = internal constant { [81 x %struct.reg_default], [184 x i8] } { [81 x %struct.reg_default] [%struct.reg_default { i32 0, i32 33 }, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 3, i32 51400 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 39, i32 30816 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 21074 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 111 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 111 }, %struct.reg_default { i32 69, i32 24576 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 633 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 633 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 192 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 115, i32 4356 }, %struct.reg_default { i32 116, i32 3072 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 139, i32 1536 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 3072 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 8192 }, %struct.reg_default { i32 148, i32 512 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 176, i32 8320 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 180, i32 8710 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 256 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 201, i32 0 }, %struct.reg_default { i32 202, i32 0 }, %struct.reg_default { i32 203, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 19 }, %struct.reg_default { i32 208, i32 1664 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 211, i32 45856 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 214, i32 0 }, %struct.reg_default { i32 215, i32 0 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 250, i32 16 }, %struct.reg_default { i32 251, i32 0 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25217 }], [184 x i8] zeroinitializer }, align 32
@rt5616_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.14, i32 256, i32 504, i32 106, i32 255, i32 0, i32 108, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@rt5616_snd_controls = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }], [144 x i8] zeroinitializer }, align 32
@rt5616_dapm_routes = internal constant { [82 x %struct.snd_soc_dapm_route], [1080 x i8] } { [82 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.101, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.103, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.105, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.107, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.103, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.105, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.111, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.40, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.111, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.40, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.114, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.116, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.114, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.116, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.120, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.122, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.122, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.120, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.40, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.40, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.105, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.103, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.101, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.129, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.120, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.103, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.105, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.107, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.135, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.122, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.138, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.140, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.120, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.122, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.144, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.146, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1080 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HP Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HPVOL Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 14, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HP Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OUT Channel Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 14, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 3, i32 3, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -65625, i32 375], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 175, i32 175, i32 25, i32 25, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IN1 Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@bst_tlv = internal constant { [44 x i32], [48 x i8] } { [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IN2 Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IN Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 15, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -17625, i32 375], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 28, i32 28, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@adc_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 14, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LDO\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"micbias1\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2P\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2N\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST1\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST2\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INL1 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INR1 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INL2 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INR2 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXL\00", [24 x i8] zeroinitializer }, align 32
@rt5616_rec_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXR\00", [24 x i8] zeroinitializer }, align 32
@rt5616_rec_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC L\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC R\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stereo1 filter\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@rt5616_sto1_adc_l_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@rt5616_sto1_adc_r_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 L\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 R\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 ADC1\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Audio DSP\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5616_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5616_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stero1 DAC Power\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXL\00", [16 x i8] zeroinitializer }, align 32
@rt5616_sto_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXR\00", [16 x i8] zeroinitializer }, align 32
@rt5616_sto_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L1\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R1\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5616_out_l_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5616_out_r_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUTVOL L\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUTVOL R\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOVOL L\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOVOL R\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC 1\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC 2\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOVOL\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INL1\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INR1\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INL2\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INR2\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPO MIX\00", [24 x i8] zeroinitializer }, align 32
@rt5616_hpo_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5616_lout_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP amp\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT amp\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTL\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTR\00", [26 x i8] zeroinitializer }, align 32
@rt5616_dapm_widgets = internal constant { [58 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2616 x i8] } { [58 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5616_bst1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5616_bst2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5616_rec_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5616_rec_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @rt5616_adc_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @rt5616_adc_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5616_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5616_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.66, ptr @.str.67, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.68, ptr @.str.69, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5616_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5616_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5616_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5616_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5616_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5616_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5616_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5616_lout_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5616_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5616_lout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5616_charge_pump_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2616 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INL1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INR1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo ADC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INF1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REC MIXL Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REC MIXR Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HPVOL Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTVOL L Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTVOL R Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5616-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5616_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rt5616_set_dai_sysclk, ptr @rt5616_set_dai_pll, ptr null, ptr null, ptr @rt5616_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5616_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rt5616_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.4, i32 1080, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5616_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@rt5616_set_dai_sysclk._entry_ptr = internal global ptr @rt5616_set_dai_sysclk._entry, section ".printk_index", align 4
@rt5616_set_dai_sysclk.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.152, ptr @.str.151, ptr @.str.4, ptr @.str.153, i8 1, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt5616\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt5616_set_dai_pll.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.152, ptr @.str.154, ptr @.str.4, ptr @.str.155, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5616_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5616_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.4, i32 1130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5616_set_dai_pll._entry_ptr = internal global ptr @rt5616_set_dai_pll._entry, section ".printk_index", align 4
@rt5616_set_dai_pll._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.154, ptr @.str.4, i32 1136, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5616_set_dai_pll._entry_ptr.159 = internal global ptr @rt5616_set_dai_pll._entry.157, section ".printk_index", align 4
@rt5616_set_dai_pll.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.152, ptr @.str.154, ptr @.str.4, ptr @.str.160, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5616_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.4, i32 970, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported clock setting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5616_hw_params\00", [47 x i8] zeroinitializer }, align 32
@rt5616_hw_params._entry_ptr = internal global ptr @rt5616_hw_params._entry, section ".printk_index", align 4
@rt5616_hw_params._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.4, i32 975, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5616_hw_params._entry_ptr.165 = internal global ptr @rt5616_hw_params._entry.163, section ".printk_index", align 4
@rt5616_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.152, ptr @.str.162, ptr @.str.4, ptr @.str.166, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5616_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.152, ptr @.str.162, ptr @.str.4, ptr @.str.167, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@switch.table.rt5616_set_dai_pll = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4096, i32 4096], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [86 x i64] [i64 84, i64 32, i64 0, i64 2, i64 3, i64 5, i64 13, i64 15, i64 25, i64 28, i64 30, i64 39, i64 41, i64 42, i64 59, i64 60, i64 61, i64 62, i64 69, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 106, i64 108, i64 112, i64 115, i64 116, i64 128, i64 129, i64 130, i64 139, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 176, i64 177, i64 178, i64 180, i64 181, i64 182, i64 183, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 211, i64 212, i64 214, i64 215, i64 217, i64 218, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.168 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 108, i64 176, i64 180, i64 190, i64 191, i64 200, i64 202, i64 254, i64 255]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.179 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.180 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 6, i64 36]
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"rt5616_i2c_driver\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1406, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1408, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"rt5616_of_match\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1333, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"rt5616_i2c_id\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1326, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"rt5616_regmap\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1310, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1354, i32 19 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1357, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1364, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [10 x i8] c"init_list\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 47, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1383, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt5616\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1294, i32 46 }
@___asan_gen_.241 = private unnamed_addr constant [11 x i8] c"rt5616_dai\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1272, i32 34 }
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"rt5616_reg\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 57, i32 33 }
@___asan_gen_.247 = private unnamed_addr constant [14 x i8] c"rt5616_ranges\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 34, i32 38 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 36, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c"rt5616_snd_controls\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 304, i32 38 }
@___asan_gen_.256 = private unnamed_addr constant [19 x i8] c"rt5616_dapm_routes\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 847, i32 40 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 306, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 308, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 310, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [12 x i8] c"out_vol_tlv\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 287, i32 14 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 313, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 315, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 317, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 321, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 288, i32 14 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 325, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [8 x i8] c"bst_tlv\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 294, i32 14 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 327, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 330, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 289, i32 14 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 334, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 336, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 290, i32 14 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 341, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [12 x i8] c"adc_bst_tlv\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 291, i32 14 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 698, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 702, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 704, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 708, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 709, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 711, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 712, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 713, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 716, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 719, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 723, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 725, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 727, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 729, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 733, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"rt5616_rec_l_mix\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 399, i32 38 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 735, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"rt5616_rec_r_mix\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 408, i32 38 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 738, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 741, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 746, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 748, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [22 x i8] c"rt5616_sto1_adc_l_mix\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 360, i32 38 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 751, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [22 x i8] c"rt5616_sto1_adc_r_mix\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 365, i32 38 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 756, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 758, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 759, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 760, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 761, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 766, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 767, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 770, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 774, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"rt5616_dac_l_mix\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 370, i32 38 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 776, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"rt5616_dac_r_mix\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 377, i32 38 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 779, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 783, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [21 x i8] c"rt5616_sto_dac_l_mix\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 384, i32 38 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 786, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [21 x i8] c"rt5616_sto_dac_r_mix\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 391, i32 38 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 791, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 793, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 796, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"rt5616_out_l_mix\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 419, i32 38 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 798, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"rt5616_out_r_mix\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 432, i32 38 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 801, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 803, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 805, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 807, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 809, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 811, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 813, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 815, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 817, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 819, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 821, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 824, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [15 x i8] c"rt5616_hpo_mix\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 445, i32 38 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 826, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [16 x i8] c"rt5616_lout_mix\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 452, i32 38 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 829, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 832, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 836, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 841, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 842, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 843, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 844, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c"rt5616_dapm_widgets\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 697, i32 41 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 400, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 402, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 404, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 409, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 361, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 371, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 373, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 385, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 387, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.589 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 426, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 439, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 446, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 448, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 457, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 459, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1228, i32 46 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1274, i32 11 }
@___asan_gen_.631 = private unnamed_addr constant [19 x i8] c"rt5616_aif_dai_ops\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1265, i32 37 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1080, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1089, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1107, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1130, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1136, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 1140, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 970, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 975, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 981, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.689 = private constant [29 x i8] c"../sound/soc/codecs/rt5616.c\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 983, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [32 x i8] c"switch.table.rt5616_set_dai_pll\00", align 1
@llvm.compiler.used = appending global [216 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_rt5616_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5616__301_1416_rt5616_i2c_driver_init6, ptr @rt5616_hw_params._entry, ptr @rt5616_hw_params._entry.163, ptr @rt5616_hw_params._entry_ptr, ptr @rt5616_hw_params._entry_ptr.165, ptr @rt5616_i2c_driver_exit, ptr @rt5616_i2c_probe._entry, ptr @rt5616_i2c_probe._entry.10, ptr @rt5616_i2c_probe._entry.7, ptr @rt5616_i2c_probe._entry_ptr, ptr @rt5616_i2c_probe._entry_ptr.13, ptr @rt5616_i2c_probe._entry_ptr.9, ptr @rt5616_set_dai_pll._entry, ptr @rt5616_set_dai_pll._entry.157, ptr @rt5616_set_dai_pll._entry_ptr, ptr @rt5616_set_dai_pll._entry_ptr.159, ptr @rt5616_set_dai_sysclk._entry, ptr @rt5616_set_dai_sysclk._entry_ptr, ptr @rt5616_i2c_driver, ptr @.str, ptr @rt5616_of_match, ptr @rt5616_i2c_id, ptr @rt5616_i2c_probe._key, ptr @rt5616_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @init_list, ptr @.str.11, ptr @.str.12, ptr @soc_component_dev_rt5616, ptr @rt5616_dai, ptr @rt5616_reg, ptr @rt5616_ranges, ptr @.str.14, ptr @rt5616_snd_controls, ptr @rt5616_dapm_routes, ptr @.str.15, ptr @.compoundliteral, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @out_vol_tlv, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @dac_vol_tlv, ptr @.compoundliteral.27, ptr @.str.28, ptr @bst_tlv, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @in_vol_tlv, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @adc_vol_tlv, ptr @.compoundliteral.37, ptr @.str.38, ptr @adc_bst_tlv, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @rt5616_rec_l_mix, ptr @.str.55, ptr @rt5616_rec_r_mix, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @rt5616_sto1_adc_l_mix, ptr @.str.60, ptr @rt5616_sto1_adc_r_mix, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @rt5616_dac_l_mix, ptr @.str.72, ptr @rt5616_dac_r_mix, ptr @.str.73, ptr @.str.74, ptr @rt5616_sto_dac_l_mix, ptr @.str.75, ptr @rt5616_sto_dac_r_mix, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @rt5616_out_l_mix, ptr @.str.79, ptr @rt5616_out_r_mix, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @rt5616_hpo_mix, ptr @.str.92, ptr @rt5616_lout_mix, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @rt5616_dapm_widgets, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.compoundliteral.131, ptr @.compoundliteral.132, ptr @.compoundliteral.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.str.149, ptr @rt5616_aif_dai_ops, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @switch.table.rt5616_set_dai_pll], section "llvm.metadata"
@0 = internal global [201 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_list to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt5616 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_reg to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_snd_controls to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_dapm_routes to i32), i32 4264, i32 5344, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bst_tlv to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_rec_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_rec_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_sto1_adc_l_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_sto1_adc_r_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_sto_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_sto_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_out_l_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_out_r_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_hpo_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_lout_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_dapm_widgets to i32), i32 10440, i32 13056, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_set_dai_pll._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5616_hw_params._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5616_set_dai_pll to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5616_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5616_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5616_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !322
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5616_regmap, ptr noundef nonnull @rt5616_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.rt5616_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 255, ptr noundef nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25217, i32 %5)
  %cmp.not = icmp eq i32 %5, 25217
  br i1 %cmp.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %5) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 0) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i58 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 99, i32 noundef 43024, i32 noundef 43024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #7
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i59 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 99, i32 noundef 16392, i32 noundef 16392, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_register_patch(ptr noundef %23, ptr noundef nonnull @init_list, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end16.if.end32_crit_edge, label %do.end30

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call25) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end16.if.end32_crit_edge
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 99, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call36 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt5616, ptr noundef nonnull @rt5616_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end14, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ -19, %do.end14 ], [ %call36, %if.end32 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5616_i2c_remove(ptr nocapture noundef readnone %i2c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5616_i2c_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt5616_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2, i32 noundef 51400) #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 3, i32 noundef 51400) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5616_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %0)
  %1 = icmp ult i32 %0, 249
  br i1 %1, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %entry
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 253, label %for.end.cleanup_crit_edge9
    i32 254, label %for.end.cleanup_crit_edge10
    i32 255, label %for.end.cleanup_crit_edge11
    i32 2, label %for.end.cleanup_crit_edge12
    i32 3, label %for.end.cleanup_crit_edge13
    i32 5, label %for.end.cleanup_crit_edge14
    i32 13, label %for.end.cleanup_crit_edge15
    i32 15, label %for.end.cleanup_crit_edge16
    i32 25, label %for.end.cleanup_crit_edge17
    i32 28, label %for.end.cleanup_crit_edge18
    i32 30, label %for.end.cleanup_crit_edge19
    i32 39, label %for.end.cleanup_crit_edge20
    i32 41, label %for.end.cleanup_crit_edge21
    i32 42, label %for.end.cleanup_crit_edge22
    i32 59, label %for.end.cleanup_crit_edge23
    i32 60, label %for.end.cleanup_crit_edge24
    i32 61, label %for.end.cleanup_crit_edge25
    i32 62, label %for.end.cleanup_crit_edge26
    i32 69, label %for.end.cleanup_crit_edge27
    i32 77, label %for.end.cleanup_crit_edge28
    i32 78, label %for.end.cleanup_crit_edge29
    i32 79, label %for.end.cleanup_crit_edge30
    i32 80, label %for.end.cleanup_crit_edge31
    i32 81, label %for.end.cleanup_crit_edge32
    i32 82, label %for.end.cleanup_crit_edge33
    i32 83, label %for.end.cleanup_crit_edge34
    i32 97, label %for.end.cleanup_crit_edge35
    i32 98, label %for.end.cleanup_crit_edge36
    i32 99, label %for.end.cleanup_crit_edge37
    i32 100, label %for.end.cleanup_crit_edge38
    i32 101, label %for.end.cleanup_crit_edge39
    i32 102, label %for.end.cleanup_crit_edge40
    i32 106, label %for.end.cleanup_crit_edge41
    i32 108, label %for.end.cleanup_crit_edge42
    i32 112, label %for.end.cleanup_crit_edge43
    i32 115, label %for.end.cleanup_crit_edge44
    i32 116, label %for.end.cleanup_crit_edge45
    i32 128, label %for.end.cleanup_crit_edge46
    i32 129, label %for.end.cleanup_crit_edge47
    i32 130, label %for.end.cleanup_crit_edge48
    i32 139, label %for.end.cleanup_crit_edge49
    i32 142, label %for.end.cleanup_crit_edge50
    i32 143, label %for.end.cleanup_crit_edge51
    i32 144, label %for.end.cleanup_crit_edge52
    i32 145, label %for.end.cleanup_crit_edge53
    i32 146, label %for.end.cleanup_crit_edge54
    i32 147, label %for.end.cleanup_crit_edge55
    i32 148, label %for.end.cleanup_crit_edge56
    i32 149, label %for.end.cleanup_crit_edge57
    i32 176, label %for.end.cleanup_crit_edge58
    i32 177, label %for.end.cleanup_crit_edge59
    i32 178, label %for.end.cleanup_crit_edge60
    i32 180, label %for.end.cleanup_crit_edge61
    i32 181, label %for.end.cleanup_crit_edge62
    i32 182, label %for.end.cleanup_crit_edge63
    i32 183, label %for.end.cleanup_crit_edge64
    i32 187, label %for.end.cleanup_crit_edge65
    i32 188, label %for.end.cleanup_crit_edge66
    i32 189, label %for.end.cleanup_crit_edge67
    i32 190, label %for.end.cleanup_crit_edge68
    i32 191, label %for.end.cleanup_crit_edge69
    i32 192, label %for.end.cleanup_crit_edge70
    i32 193, label %for.end.cleanup_crit_edge71
    i32 194, label %for.end.cleanup_crit_edge72
    i32 200, label %for.end.cleanup_crit_edge73
    i32 201, label %for.end.cleanup_crit_edge74
    i32 202, label %for.end.cleanup_crit_edge75
    i32 203, label %for.end.cleanup_crit_edge76
    i32 204, label %for.end.cleanup_crit_edge77
    i32 205, label %for.end.cleanup_crit_edge78
    i32 206, label %for.end.cleanup_crit_edge79
    i32 207, label %for.end.cleanup_crit_edge80
    i32 208, label %for.end.cleanup_crit_edge81
    i32 209, label %for.end.cleanup_crit_edge82
    i32 211, label %for.end.cleanup_crit_edge83
    i32 212, label %for.end.cleanup_crit_edge84
    i32 214, label %for.end.cleanup_crit_edge85
    i32 215, label %for.end.cleanup_crit_edge86
    i32 217, label %for.end.cleanup_crit_edge87
    i32 218, label %for.end.cleanup_crit_edge88
    i32 250, label %for.end.cleanup_crit_edge89
    i32 251, label %for.end.cleanup_crit_edge90
    i32 252, label %for.end.cleanup_crit_edge91
  ]

for.end.cleanup_crit_edge91:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge90:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge89:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge88:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge87:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge86:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge85:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge84:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge83:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge82:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge81:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge80:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge79:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge78:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge77:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge76:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge75:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge74:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge73:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge72:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge71:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge70:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge69:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge68:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge67:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge66:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge65:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge64:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge63:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge62:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge61:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge60:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge59:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge58:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge57:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge56:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge55:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge54:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge53:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge52:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge51:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge50:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge49:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge48:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge47:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge46:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge45:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge44:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge43:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge42:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge41:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge40:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge39:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge38:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge37:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge36:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge35:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge34:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge33:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge32:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge31:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge30:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge22:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge21:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge20:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge19:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge18:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge17:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge16:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge15:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge14:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge13:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge12:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge11:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge10:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge9:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge9, %for.end.cleanup_crit_edge10, %for.end.cleanup_crit_edge11, %for.end.cleanup_crit_edge12, %for.end.cleanup_crit_edge13, %for.end.cleanup_crit_edge14, %for.end.cleanup_crit_edge15, %for.end.cleanup_crit_edge16, %for.end.cleanup_crit_edge17, %for.end.cleanup_crit_edge18, %for.end.cleanup_crit_edge19, %for.end.cleanup_crit_edge20, %for.end.cleanup_crit_edge21, %for.end.cleanup_crit_edge22, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %for.end.cleanup_crit_edge41, %for.end.cleanup_crit_edge42, %for.end.cleanup_crit_edge43, %for.end.cleanup_crit_edge44, %for.end.cleanup_crit_edge45, %for.end.cleanup_crit_edge46, %for.end.cleanup_crit_edge47, %for.end.cleanup_crit_edge48, %for.end.cleanup_crit_edge49, %for.end.cleanup_crit_edge50, %for.end.cleanup_crit_edge51, %for.end.cleanup_crit_edge52, %for.end.cleanup_crit_edge53, %for.end.cleanup_crit_edge54, %for.end.cleanup_crit_edge55, %for.end.cleanup_crit_edge56, %for.end.cleanup_crit_edge57, %for.end.cleanup_crit_edge58, %for.end.cleanup_crit_edge59, %for.end.cleanup_crit_edge60, %for.end.cleanup_crit_edge61, %for.end.cleanup_crit_edge62, %for.end.cleanup_crit_edge63, %for.end.cleanup_crit_edge64, %for.end.cleanup_crit_edge65, %for.end.cleanup_crit_edge66, %for.end.cleanup_crit_edge67, %for.end.cleanup_crit_edge68, %for.end.cleanup_crit_edge69, %for.end.cleanup_crit_edge70, %for.end.cleanup_crit_edge71, %for.end.cleanup_crit_edge72, %for.end.cleanup_crit_edge73, %for.end.cleanup_crit_edge74, %for.end.cleanup_crit_edge75, %for.end.cleanup_crit_edge76, %for.end.cleanup_crit_edge77, %for.end.cleanup_crit_edge78, %for.end.cleanup_crit_edge79, %for.end.cleanup_crit_edge80, %for.end.cleanup_crit_edge81, %for.end.cleanup_crit_edge82, %for.end.cleanup_crit_edge83, %for.end.cleanup_crit_edge84, %for.end.cleanup_crit_edge85, %for.end.cleanup_crit_edge86, %for.end.cleanup_crit_edge87, %for.end.cleanup_crit_edge88, %for.end.cleanup_crit_edge89, %for.end.cleanup_crit_edge90, %for.end.cleanup_crit_edge91, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge9 ], [ true, %for.end.cleanup_crit_edge10 ], [ true, %for.end.cleanup_crit_edge11 ], [ true, %for.end.cleanup_crit_edge12 ], [ true, %for.end.cleanup_crit_edge13 ], [ true, %for.end.cleanup_crit_edge14 ], [ true, %for.end.cleanup_crit_edge15 ], [ true, %for.end.cleanup_crit_edge16 ], [ true, %for.end.cleanup_crit_edge17 ], [ true, %for.end.cleanup_crit_edge18 ], [ true, %for.end.cleanup_crit_edge19 ], [ true, %for.end.cleanup_crit_edge20 ], [ true, %for.end.cleanup_crit_edge21 ], [ true, %for.end.cleanup_crit_edge22 ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ], [ true, %for.end.cleanup_crit_edge41 ], [ true, %for.end.cleanup_crit_edge42 ], [ true, %for.end.cleanup_crit_edge43 ], [ true, %for.end.cleanup_crit_edge44 ], [ true, %for.end.cleanup_crit_edge45 ], [ true, %for.end.cleanup_crit_edge46 ], [ true, %for.end.cleanup_crit_edge47 ], [ true, %for.end.cleanup_crit_edge48 ], [ true, %for.end.cleanup_crit_edge49 ], [ true, %for.end.cleanup_crit_edge50 ], [ true, %for.end.cleanup_crit_edge51 ], [ true, %for.end.cleanup_crit_edge52 ], [ true, %for.end.cleanup_crit_edge53 ], [ true, %for.end.cleanup_crit_edge54 ], [ true, %for.end.cleanup_crit_edge55 ], [ true, %for.end.cleanup_crit_edge56 ], [ true, %for.end.cleanup_crit_edge57 ], [ true, %for.end.cleanup_crit_edge58 ], [ true, %for.end.cleanup_crit_edge59 ], [ true, %for.end.cleanup_crit_edge60 ], [ true, %for.end.cleanup_crit_edge61 ], [ true, %for.end.cleanup_crit_edge62 ], [ true, %for.end.cleanup_crit_edge63 ], [ true, %for.end.cleanup_crit_edge64 ], [ true, %for.end.cleanup_crit_edge65 ], [ true, %for.end.cleanup_crit_edge66 ], [ true, %for.end.cleanup_crit_edge67 ], [ true, %for.end.cleanup_crit_edge68 ], [ true, %for.end.cleanup_crit_edge69 ], [ true, %for.end.cleanup_crit_edge70 ], [ true, %for.end.cleanup_crit_edge71 ], [ true, %for.end.cleanup_crit_edge72 ], [ true, %for.end.cleanup_crit_edge73 ], [ true, %for.end.cleanup_crit_edge74 ], [ true, %for.end.cleanup_crit_edge75 ], [ true, %for.end.cleanup_crit_edge76 ], [ true, %for.end.cleanup_crit_edge77 ], [ true, %for.end.cleanup_crit_edge78 ], [ true, %for.end.cleanup_crit_edge79 ], [ true, %for.end.cleanup_crit_edge80 ], [ true, %for.end.cleanup_crit_edge81 ], [ true, %for.end.cleanup_crit_edge82 ], [ true, %for.end.cleanup_crit_edge83 ], [ true, %for.end.cleanup_crit_edge84 ], [ true, %for.end.cleanup_crit_edge85 ], [ true, %for.end.cleanup_crit_edge86 ], [ true, %for.end.cleanup_crit_edge87 ], [ true, %for.end.cleanup_crit_edge88 ], [ true, %for.end.cleanup_crit_edge89 ], [ true, %for.end.cleanup_crit_edge90 ], [ true, %for.end.cleanup_crit_edge91 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5616_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %0)
  %1 = icmp ult i32 %0, 249
  br i1 %1, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %entry
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 108, label %for.end.cleanup_crit_edge9
    i32 176, label %for.end.cleanup_crit_edge10
    i32 180, label %for.end.cleanup_crit_edge11
    i32 190, label %for.end.cleanup_crit_edge12
    i32 191, label %for.end.cleanup_crit_edge13
    i32 200, label %for.end.cleanup_crit_edge14
    i32 202, label %for.end.cleanup_crit_edge15
    i32 254, label %for.end.cleanup_crit_edge16
    i32 255, label %for.end.cleanup_crit_edge17
  ]

for.end.cleanup_crit_edge17:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge16:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge15:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge14:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge13:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge12:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge11:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge10:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge9:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge9, %for.end.cleanup_crit_edge10, %for.end.cleanup_crit_edge11, %for.end.cleanup_crit_edge12, %for.end.cleanup_crit_edge13, %for.end.cleanup_crit_edge14, %for.end.cleanup_crit_edge15, %for.end.cleanup_crit_edge16, %for.end.cleanup_crit_edge17, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge9 ], [ true, %for.end.cleanup_crit_edge10 ], [ true, %for.end.cleanup_crit_edge11 ], [ true, %for.end.cleanup_crit_edge12 ], [ true, %for.end.cleanup_crit_edge13 ], [ true, %for.end.cleanup_crit_edge14 ], [ true, %for.end.cleanup_crit_edge15 ], [ true, %for.end.cleanup_crit_edge16 ], [ true, %for.end.cleanup_crit_edge17 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_probe(ptr noundef %component) #2 align 64 {
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
  %call1 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.148) #7
  %mclk = getelementptr inbounds %struct.rt5616_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %mclk, align 4
  %cmp = icmp eq ptr %call1, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %component, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5616_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_resume(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5616_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb19
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %mclk = getelementptr inbounds %struct.rt5616_priv, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %dapm.i.i43 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i43 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then13, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #7
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 1) #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 0) #7
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 97, i32 noundef 0) #7
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 98, i32 noundef 0) #7
  %call23 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 102, i32 noundef 0) #7
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 101, i32 noundef 0) #7
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 99, i32 noundef 0) #7
  %call26 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 100, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %if.then13, %sw.bb10.cleanup_crit_edge, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.then3 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb19 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_bst1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 32, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 32, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_bst2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 16, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 16, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_adc_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 32896, %sw.bb2 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 28, i32 noundef 32896, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 1911, i32 noundef 1847) #7
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 311, i32 noundef 64512) #7
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 32768, i32 noundef 32768) #7
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 64, i32 noundef 64) #7
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 832, i32 noundef 768) #7
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 32896, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 100) #7
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 772, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 20) #7
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 214, i32 noundef 32, i32 noundef 32) #7
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 1911, i32 noundef 1590) #7
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 311, i32 noundef 64512) #7
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 4, i32 noundef 4) #7
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 32, i32 noundef 32) #7
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 800, i32 noundef 768) #7
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 214, i32 noundef 32, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 90) #7
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 32896, i32 noundef 32896) #7
  tail call void @msleep(i32 noundef 30) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_lout_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
    i32 4, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 4096, i32 noundef 4096) #7
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 32896, i32 noundef 0) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 32896, i32 noundef 32896) #7
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 4096, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_charge_pump_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 143, i32 noundef 8192, i32 noundef 8192) #7
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 13, i32 noundef 9) #7
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 375, i32 noundef 40704) #7
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 16392, i32 noundef 0) #7
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 102, i32 noundef 3072, i32 noundef 3072) #7
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 224, i32 noundef 224) #7
  tail call void @msleep(i32 noundef 50) #7
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #7
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 145, i32 noundef 768, i32 noundef 512) #7
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 317, i32 noundef 512, i32 noundef 512) #7
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 20, i32 noundef 20) #7
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 317, i32 noundef 512, i32 noundef 0) #7
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 772, i32 noundef 0) #7
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 32925, i32 noundef 132) #7
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 224, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is_sys_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 128) #7
  %and = and i32 %call1, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp = icmp eq i32 %and, 16384
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %clk_id)
  %cmp2 = icmp eq i32 %9, %clk_id
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %clk_id, label %do.end [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.150, i32 noundef %clk_id) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %reg_val.0 = phi i32 [ 16384, %sw.bb3 ], [ %clk_id, %if.end.sw.epilog_crit_edge ]
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef %reg_val.0) #7
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src7 = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %sysclk_src7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clk_id, ptr %sysclk_src7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5616_set_dai_sysclk.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5616_set_dai_sysclk, %if.then12)) #7
          to label %cleanup [label %if.then12], !srcloc !323

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %13 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5616_set_dai_sysclk.__UNIQUE_ID_ddebug298, ptr noundef %14, ptr noundef nonnull @.str.153, i32 noundef %freq, i32 noundef %clk_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.epilog, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_set_dai_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %pll_code = alloca %struct.rl6231_pll_code, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_code) #7
  %6 = call ptr @memset(ptr %pll_code, i32 255, i32 16)
  %pll_src = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %source)
  %cmp = icmp eq i32 %8, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pll_in = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq_in)
  %cmp2 = icmp eq i32 %10, %freq_in
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %pll_out = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %freq_out)
  %cmp4 = icmp eq i32 %12, %freq_out
  br i1 %cmp4, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool5.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5616_set_dai_pll.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5616_set_dai_pll, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !323

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5616_set_dai_pll.__UNIQUE_ID_ddebug299, ptr noundef %14, ptr noundef nonnull @.str.155) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %pll_in13 = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %pll_in13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pll_in13, align 4
  %pll_out14 = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 11
  %16 = ptrtoint ptr %pll_out14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pll_out14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %source)
  %17 = icmp ult i32 %source, 3
  br i1 %17, label %switch.lookup, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.156, i32 noundef %source) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end16
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rt5616_set_dai_pll, i32 0, i32 %source
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 12288, i32 noundef %switch.load) #7
  %call24 = call i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %do.body32

do.end29:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.158, i32 noundef %freq_in) #10
  br label %cleanup

do.body32:                                        ; preds = %switch.lookup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5616_set_dai_pll.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5616_set_dai_pll, %if.then44)) #7
          to label %do.end52 [label %if.then44], !srcloc !323

if.then44:                                        ; preds = %do.body32
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pll_code, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not = icmp eq i8 %26, 0
  %27 = zext i8 %26 to i32
  br i1 %tobool46.not, label %cond.false, label %if.then44.cond.end_crit_edge

if.then44.cond.end_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %28 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then44.cond.end_crit_edge
  %cond = phi i32 [ %29, %cond.false ], [ 0, %if.then44.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %30 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %32 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5616_set_dai_pll.__UNIQUE_ID_ddebug300, ptr noundef %24, ptr noundef nonnull @.str.160, i32 noundef %27, i32 noundef %cond, i32 noundef %31, i32 noundef %33) #7
  br label %do.end52

do.end52:                                         ; preds = %cond.end, %do.body32
  %n_code53 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %34 = ptrtoint ptr %n_code53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_code53, align 4
  %shl = shl i32 %35, 7
  %k_code54 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %36 = ptrtoint ptr %k_code54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %k_code54, align 4
  %or = or i32 %shl, %37
  %call55 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 129, i32 noundef %or) #7
  %38 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pll_code, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool57.not = icmp eq i8 %39, 0
  br i1 %tobool57.not, label %cond.false60, label %do.end52.cond.end62_crit_edge

do.end52.cond.end62_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end62

cond.false60:                                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %m_code61 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %40 = ptrtoint ptr %m_code61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %m_code61, align 4
  %phi.bo = shl i32 %41, 12
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false60, %do.end52.cond.end62_crit_edge
  %cond63 = phi i32 [ %phi.bo, %cond.false60 ], [ 0, %do.end52.cond.end62_crit_edge ]
  %42 = zext i8 %39 to i32
  %shl68 = shl nuw nsw i32 %42, 11
  %or69 = or i32 %cond63, %shl68
  %call70 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 130, i32 noundef %or69) #7
  %pll_in71 = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 10
  %43 = ptrtoint ptr %pll_in71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %freq_in, ptr %pll_in71, align 4
  %pll_out72 = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 11
  %44 = ptrtoint ptr %pll_out72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %freq_out, ptr %pll_out72, align 4
  %45 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end62, %do.end29, %do.end22, %do.end, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ %call24, %do.end29 ], [ 0, %cond.end62 ], [ 0, %do.end ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
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
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %reg_val.0 = phi i32 [ 32768, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %id4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id4, align 4
  %arrayidx5 = getelementptr %struct.rt5616_priv, ptr %5, i32 0, i32 8, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %arrayidx5, align 4
  %and6 = and i32 %fmt, 3840
  %11 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %and6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog10_crit_edge
    i32 768, label %sw.bb7
  ]

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %reg_val.0, 128
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb7, %sw.epilog.sw.epilog10_crit_edge
  %reg_val.1 = phi i32 [ %or8, %sw.bb7 ], [ %reg_val.0, %sw.epilog.sw.epilog10_crit_edge ]
  %and11 = and i32 %fmt, 15
  %12 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %and11, label %sw.epilog10.cleanup_crit_edge [
    i32 1, label %sw.epilog10.sw.epilog19_crit_edge
    i32 3, label %sw.bb12
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
  ]

sw.epilog10.sw.epilog19_crit_edge:                ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %reg_val.1, 1
  br label %sw.epilog19

sw.bb14:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %reg_val.1, 2
  br label %sw.epilog19

sw.bb16:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  %or17 = or i32 %reg_val.1, 3
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.epilog10.sw.epilog19_crit_edge
  %reg_val.2 = phi i32 [ %or17, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %reg_val.1, %sw.epilog10.sw.epilog19_crit_edge ]
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 32899, i32 noundef %reg_val.2) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog19, %sw.epilog10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog19 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5616_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.rt5616_priv, ptr %5, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  %sysclk = getelementptr inbounds %struct.rt5616_priv, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk, align 4
  %13 = load i32, ptr %id, align 4
  %arrayidx5 = getelementptr %struct.rt5616_priv, ptr %5, i32 0, i32 6, i32 %13
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @rl6231_get_clk_info(i32 noundef %12, i32 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.161) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.164, i32 noundef %call7) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call7)
  %cmp15 = icmp ugt i32 %call7, 32
  %cond = zext i1 %cmp15 to i32
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %arrayidx18 = getelementptr %struct.rt5616_priv, ptr %5, i32 0, i32 6, i32 %21
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  %shl = shl nuw nsw i32 32, %cond
  %mul = mul i32 %23, %shl
  %arrayidx20 = getelementptr %struct.rt5616_priv, ptr %5, i32 0, i32 7, i32 %21
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %arrayidx20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5616_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5616_hw_params, %if.then25)) #7
          to label %do.body36 [label %if.then25], !srcloc !323

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %25 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev26, align 4
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %arrayidx29 = getelementptr %struct.rt5616_priv, ptr %5, i32 0, i32 7, i32 %28
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr %struct.rt5616_priv, ptr %5, i32 0, i32 6, i32 %28
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5616_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %26, ptr noundef nonnull @.str.166, i32 noundef %30, i32 noundef %32) #7
  br label %do.body36

do.body36:                                        ; preds = %if.then25, %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5616_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5616_hw_params, %if.then48)) #7
          to label %do.end53 [label %if.then48], !srcloc !323

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %33 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev49, align 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5616_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %34, ptr noundef nonnull @.str.167, i32 noundef %cond, i32 noundef %call6, i32 noundef %36) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  %arrayidx.i.i101 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %do.end53.params_format.exit_crit_edge

do.end53.params_format.exit_crit_edge:            ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %do.end53
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.bb57_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.sw.bb57_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %do.end53.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %do.end53.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %38, %do.end53.params_format.exit_crit_edge ], [ %40, %for.inc.i.i.params_format.exit_crit_edge ]
  %41 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !325
  %add.i.i = or i32 %41, %i.09.lcssa.i.i
  %42 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 36, label %sw.bb
    i32 6, label %sw.bb55
    i32 0, label %params_format.exit.sw.bb57_crit_edge
  ]

params_format.exit.sw.bb57_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb55:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb57:                                          ; preds = %params_format.exit.sw.bb57_crit_edge, %for.inc.i.i.sw.bb57_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %sw.bb55, %sw.bb, %params_format.exit.sw.epilog_crit_edge
  %val_len.0 = phi i32 [ 12, %sw.bb57 ], [ 8, %sw.bb55 ], [ 4, %sw.bb ], [ 0, %params_format.exit.sw.epilog_crit_edge ]
  %shl59 = shl i32 %call6, 12
  %call60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 12, i32 noundef %val_len.0) #7
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 28672, i32 noundef %shl59) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %params_format.exit.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %sw.epilog ], [ -22, %params_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_clk_info(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !308, !309, !311}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320}
!llvm.ident = !{!321}

!0 = !{ptr @__initcall__kmod_snd_soc_rt5616__301_1416_rt5616_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_rt5616__301_1416_rt5616_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5616.c", i32 1416, i32 1}
!2 = !{ptr @__exitcall_rt5616_i2c_driver_exit, !1, !"__exitcall_rt5616_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5616.c", i32 1418, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5616.c", i32 1419, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5616.c", i32 1420, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5616.c", i32 1408, i32 11}
!12 = !{ptr @rt5616_i2c_driver, !13, !"rt5616_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5616.c", i32 1406, i32 26}
!14 = !{ptr @rt5616_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5616.c", i32 1354, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt5616.c", i32 1357, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt5616_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt5616_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt5616.c", i32 1364, i32 3}
!27 = !{ptr @rt5616_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt5616_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt5616.c", i32 1383, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rt5616_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt5616_i2c_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @rt5616_regmap, !35, !"rt5616_regmap", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt5616.c", i32 1310, i32 35}
!36 = !{ptr @rt5616_reg, !37, !"rt5616_reg", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/rt5616.c", i32 57, i32 33}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/rt5616.c", i32 36, i32 11}
!40 = !{ptr @rt5616_ranges, !41, !"rt5616_ranges", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt5616.c", i32 34, i32 38}
!42 = !{ptr @init_list, !43, !"init_list", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt5616.c", i32 47, i32 34}
!44 = !{ptr @soc_component_dev_rt5616, !45, !"soc_component_dev_rt5616", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt5616.c", i32 1294, i32 46}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt5616.c", i32 306, i32 2}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt5616.c", i32 308, i32 2}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt5616.c", i32 310, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt5616.c", i32 313, i32 2}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt5616.c", i32 315, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt5616.c", i32 317, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5616.c", i32 321, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt5616.c", i32 325, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt5616.c", i32 327, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/rt5616.c", i32 330, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt5616.c", i32 334, i32 2}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt5616.c", i32 336, i32 2}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/rt5616.c", i32 341, i32 2}
!72 = !{ptr @rt5616_snd_controls, !73, !"rt5616_snd_controls", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/rt5616.c", i32 304, i32 38}
!74 = !{ptr @out_vol_tlv, !75, !"out_vol_tlv", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/rt5616.c", i32 287, i32 14}
!76 = !{ptr @dac_vol_tlv, !77, !"dac_vol_tlv", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/rt5616.c", i32 288, i32 14}
!78 = !{ptr @bst_tlv, !79, !"bst_tlv", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/rt5616.c", i32 294, i32 14}
!80 = !{ptr @in_vol_tlv, !81, !"in_vol_tlv", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/rt5616.c", i32 289, i32 14}
!82 = !{ptr @adc_vol_tlv, !83, !"adc_vol_tlv", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/rt5616.c", i32 290, i32 14}
!84 = !{ptr @adc_bst_tlv, !85, !"adc_bst_tlv", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/rt5616.c", i32 291, i32 14}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/rt5616.c", i32 698, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/rt5616.c", i32 702, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/rt5616.c", i32 704, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/rt5616.c", i32 708, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/rt5616.c", i32 709, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/rt5616.c", i32 711, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/rt5616.c", i32 712, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/rt5616.c", i32 713, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt5616.c", i32 716, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt5616.c", i32 719, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt5616.c", i32 723, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt5616.c", i32 725, i32 2}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt5616.c", i32 727, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt5616.c", i32 729, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt5616.c", i32 733, i32 2}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt5616.c", i32 735, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt5616.c", i32 738, i32 2}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt5616.c", i32 741, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt5616.c", i32 746, i32 2}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt5616.c", i32 748, i32 2}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt5616.c", i32 751, i32 2}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/rt5616.c", i32 756, i32 2}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt5616.c", i32 758, i32 2}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt5616.c", i32 759, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt5616.c", i32 760, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt5616.c", i32 761, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt5616.c", i32 766, i32 2}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/rt5616.c", i32 767, i32 2}
!143 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/rt5616.c", i32 770, i32 2}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/rt5616.c", i32 774, i32 2}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt5616.c", i32 776, i32 2}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/rt5616.c", i32 779, i32 2}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt5616.c", i32 783, i32 2}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt5616.c", i32 786, i32 2}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt5616.c", i32 791, i32 2}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt5616.c", i32 793, i32 2}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt5616.c", i32 796, i32 2}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/rt5616.c", i32 798, i32 2}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/rt5616.c", i32 801, i32 2}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt5616.c", i32 803, i32 2}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt5616.c", i32 805, i32 2}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/rt5616.c", i32 807, i32 2}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt5616.c", i32 809, i32 2}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt5616.c", i32 811, i32 2}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt5616.c", i32 813, i32 2}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/rt5616.c", i32 815, i32 2}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt5616.c", i32 817, i32 2}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt5616.c", i32 819, i32 2}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/rt5616.c", i32 821, i32 2}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/rt5616.c", i32 824, i32 2}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/rt5616.c", i32 826, i32 2}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt5616.c", i32 829, i32 2}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/rt5616.c", i32 832, i32 2}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt5616.c", i32 836, i32 2}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt5616.c", i32 841, i32 2}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt5616.c", i32 842, i32 2}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/rt5616.c", i32 843, i32 2}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt5616.c", i32 844, i32 2}
!204 = !{ptr @rt5616_dapm_widgets, !205, !"rt5616_dapm_widgets", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/rt5616.c", i32 697, i32 41}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/rt5616.c", i32 400, i32 2}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/rt5616.c", i32 402, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt5616.c", i32 404, i32 2}
!212 = !{ptr @rt5616_rec_l_mix, !213, !"rt5616_rec_l_mix", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/rt5616.c", i32 399, i32 38}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/rt5616.c", i32 409, i32 2}
!216 = !{ptr @rt5616_rec_r_mix, !217, !"rt5616_rec_r_mix", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/rt5616.c", i32 408, i32 38}
!218 = !{ptr @.str.111, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/rt5616.c", i32 361, i32 2}
!220 = !{ptr @rt5616_sto1_adc_l_mix, !221, !"rt5616_sto1_adc_l_mix", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/rt5616.c", i32 360, i32 38}
!222 = !{ptr @rt5616_sto1_adc_r_mix, !223, !"rt5616_sto1_adc_r_mix", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/rt5616.c", i32 365, i32 38}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/rt5616.c", i32 371, i32 2}
!226 = !{ptr @.str.116, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/rt5616.c", i32 373, i32 2}
!228 = !{ptr @rt5616_dac_l_mix, !229, !"rt5616_dac_l_mix", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/rt5616.c", i32 370, i32 38}
!230 = !{ptr @rt5616_dac_r_mix, !231, !"rt5616_dac_r_mix", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/rt5616.c", i32 377, i32 38}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/rt5616.c", i32 385, i32 2}
!234 = !{ptr @.str.122, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/rt5616.c", i32 387, i32 2}
!236 = !{ptr @rt5616_sto_dac_l_mix, !237, !"rt5616_sto_dac_l_mix", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/rt5616.c", i32 384, i32 38}
!238 = !{ptr @rt5616_sto_dac_r_mix, !239, !"rt5616_sto_dac_r_mix", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/rt5616.c", i32 391, i32 38}
!240 = !{ptr @.str.129, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/rt5616.c", i32 426, i32 2}
!242 = !{ptr @rt5616_out_l_mix, !243, !"rt5616_out_l_mix", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/rt5616.c", i32 419, i32 38}
!244 = !{ptr @.str.135, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/rt5616.c", i32 439, i32 2}
!246 = !{ptr @rt5616_out_r_mix, !247, !"rt5616_out_r_mix", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/rt5616.c", i32 432, i32 38}
!248 = !{ptr @.str.138, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/rt5616.c", i32 446, i32 2}
!250 = !{ptr @.str.140, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/rt5616.c", i32 448, i32 2}
!252 = !{ptr @rt5616_hpo_mix, !253, !"rt5616_hpo_mix", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/rt5616.c", i32 445, i32 38}
!254 = !{ptr @.str.144, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/rt5616.c", i32 457, i32 2}
!256 = !{ptr @.str.146, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/rt5616.c", i32 459, i32 2}
!258 = !{ptr @rt5616_lout_mix, !259, !"rt5616_lout_mix", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/rt5616.c", i32 452, i32 38}
!260 = !{ptr @rt5616_dapm_routes, !261, !"rt5616_dapm_routes", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/rt5616.c", i32 847, i32 40}
!262 = !{ptr @.str.148, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/rt5616.c", i32 1228, i32 46}
!264 = !{ptr @.str.149, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/rt5616.c", i32 1274, i32 11}
!266 = !{ptr @rt5616_dai, !267, !"rt5616_dai", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/rt5616.c", i32 1272, i32 34}
!268 = !{ptr @rt5616_aif_dai_ops, !269, !"rt5616_aif_dai_ops", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/rt5616.c", i32 1265, i32 37}
!270 = !{ptr @.str.150, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/rt5616.c", i32 1080, i32 3}
!272 = !{ptr @.str.151, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @rt5616_set_dai_sysclk._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @rt5616_set_dai_sysclk._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.152, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/rt5616.c", i32 1089, i32 2}
!277 = !{ptr @.str.153, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @rt5616_set_dai_sysclk.__UNIQUE_ID_ddebug298, !276, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!279 = !{ptr @.str.154, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/rt5616.c", i32 1107, i32 3}
!281 = !{ptr @.str.155, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @rt5616_set_dai_pll.__UNIQUE_ID_ddebug299, !280, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!283 = !{ptr @.str.156, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/rt5616.c", i32 1130, i32 3}
!285 = !{ptr @rt5616_set_dai_pll._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @rt5616_set_dai_pll._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.158, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/rt5616.c", i32 1136, i32 3}
!289 = !{ptr @rt5616_set_dai_pll._entry.157, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @rt5616_set_dai_pll._entry_ptr.159, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.160, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/rt5616.c", i32 1140, i32 2}
!293 = !{ptr @rt5616_set_dai_pll.__UNIQUE_ID_ddebug300, !292, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!294 = !{ptr @.str.161, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/rt5616.c", i32 970, i32 3}
!296 = !{ptr @.str.162, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @rt5616_hw_params._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @rt5616_hw_params._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.164, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/rt5616.c", i32 975, i32 3}
!301 = !{ptr @rt5616_hw_params._entry.163, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @rt5616_hw_params._entry_ptr.165, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.166, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/rt5616.c", i32 981, i32 2}
!305 = !{ptr @rt5616_hw_params.__UNIQUE_ID_ddebug296, !304, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!306 = !{ptr @.str.167, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/rt5616.c", i32 983, i32 2}
!308 = !{ptr @rt5616_hw_params.__UNIQUE_ID_ddebug297, !307, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!309 = !{ptr @rt5616_of_match, !310, !"rt5616_of_match", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/rt5616.c", i32 1333, i32 34}
!311 = !{ptr @rt5616_i2c_id, !312, !"rt5616_i2c_id", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/rt5616.c", i32 1326, i32 35}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 1, !"min_enum_size", i32 4}
!315 = !{i32 8, !"branch-target-enforcement", i32 0}
!316 = !{i32 8, !"sign-return-address", i32 0}
!317 = !{i32 8, !"sign-return-address-all", i32 0}
!318 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!319 = !{i32 7, !"uwtable", i32 1}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!322 = !{!"auto-init"}
!323 = !{i64 2148993228, i64 2148993233, i64 2148993246, i64 2148993290, i64 2148993324, i64 2148993345}
!324 = !{i8 0, i8 2}
!325 = !{i32 0, i32 33}
