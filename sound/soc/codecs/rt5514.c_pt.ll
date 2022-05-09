; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5514.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5514.c"
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
%struct.rt5514_platform_data = type { i32, ptr, i32 }
%struct.rt5514_priv = type { %struct.rt5514_platform_data, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_rt5514__299_1336_rt5514_i2c_driver_init6 = internal global ptr @rt5514_i2c_driver_init, section ".initcall6.init", align 4
@rt5514_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5514_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5514_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_i2_pm_ops, ptr null, ptr null }, ptr @rt5514_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5514_i2c_driver_exit = internal global ptr @rt5514_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [46 x i8] c"snd_soc_rt5514.description=ASoC RT5514 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [58 x i8] c"snd_soc_rt5514.author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [52 x i8] c"snd_soc_rt5514.file=sound/soc/codecs/snd-soc-rt5514\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [30 x i8] c"snd_soc_rt5514.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5514\00", [25 x i8] zeroinitializer }, align 32
@rt5514_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5514\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5514_i2_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @rt5514_i2c_resume, ptr null, ptr @rt5514_i2c_resume, ptr null, ptr @rt5514_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rt5514_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5514\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5514_i2c_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.24, i32 32, i32 0, i32 0, i32 32, ptr null, ptr @rt5514_i2c_readable_register, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rt5514:1275:(&rt5514_i2c_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5514_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt5514.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry_ptr = internal global ptr @rt5514_i2c_probe._entry, section ".printk_index", align 4
@rt5514_i2c_probe._key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5514_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 32, ptr null, ptr @rt5514_readable_register, ptr @rt5514_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @rt5514_i2c_read, ptr @rt5514_i2c_write, ptr null, i8 0, i32 12276, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_reg, i32 47, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5514:1283:(&rt5514_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry_ptr.10 = internal global ptr @rt5514_i2c_probe._entry.9, section ".printk_index", align 4
@rt5514_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device with ID register %x is not rt5514\0A\00", [54 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry_ptr.13 = internal global ptr @rt5514_i2c_probe._entry.11, section ".printk_index", align 4
@rt5514_i2c_patch = internal constant { [19 x %struct.reg_sequence], [60 x i8] } { [19 x %struct.reg_sequence] [%struct.reg_sequence { i32 402657308, i32 0, i32 0 }, %struct.reg_sequence { i32 402657536, i32 799, i32 0 }, %struct.reg_sequence { i32 402657540, i32 7, i32 0 }, %struct.reg_sequence { i32 402657544, i32 0, i32 0 }, %struct.reg_sequence { i32 402657548, i32 0, i32 0 }, %struct.reg_sequence { i32 402657552, i32 0, i32 0 }, %struct.reg_sequence { i32 402657556, i32 1, i32 0 }, %struct.reg_sequence { i32 402657560, i32 0, i32 0 }, %struct.reg_sequence { i32 402665224, i32 6, i32 0 }, %struct.reg_sequence { i32 402665216, i32 348489, i32 0 }, %struct.reg_sequence { i32 402665216, i32 348491, i32 0 }, %struct.reg_sequence { i32 402665216, i32 348489, i32 0 }, %struct.reg_sequence { i32 -84215046, i32 1, i32 0 }, %struct.reg_sequence { i32 402665232, i32 1, i32 0 }, %struct.reg_sequence { i32 402665232, i32 0, i32 0 }, %struct.reg_sequence { i32 402665232, i32 1, i32 0 }, %struct.reg_sequence { i32 -84215046, i32 1, i32 0 }, %struct.reg_sequence { i32 402661376, i32 4332, i32 0 }, %struct.reg_sequence { i32 -84215046, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1310, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to apply i2c_regmap patch: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry_ptr.17 = internal global ptr @rt5514_i2c_probe._entry.14, section ".printk_index", align 4
@rt5514_patch = internal constant { [8 x %struct.reg_sequence], [32 x i8] } { [8 x %struct.reg_sequence] [%struct.reg_sequence { i32 8304, i32 64, i32 0 }, %struct.reg_sequence { i32 8452, i32 939655233, i32 0 }, %struct.reg_sequence { i32 8364, i32 1140854510, i32 0 }, %struct.reg_sequence { i32 8704, i32 165380, i32 0 }, %struct.reg_sequence { i32 8740, i32 2048, i32 0 }, %struct.reg_sequence { i32 8576, i32 3, i32 0 }, %struct.reg_sequence { i32 8600, i32 268436290, i32 0 }, %struct.reg_sequence { i32 8616, i32 268436290, i32 0 }], [32 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1315, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rt5514_i2c_probe._entry_ptr.20 = internal global ptr @rt5514_i2c_probe._entry.18, section ".printk_index", align 4
@soc_component_dev_rt5514 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5514_snd_controls, i32 4, ptr @rt5514_dapm_widgets, i32 52, ptr @rt5514_dapm_routes, i32 63, ptr @rt5514_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5514_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.113, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.91, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"realtek,dmic-init-delay-ms\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"realtek,dsp-calib-clk-name\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"realtek,dsp-calib-clk-rate\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@rt5514_reg = internal constant { [47 x %struct.reg_default], [72 x i8] } { [47 x %struct.reg_default] [%struct.reg_default { i32 8192, i32 0 }, %struct.reg_default { i32 8196, i32 8423552 }, %struct.reg_default { i32 8200, i32 2228224 }, %struct.reg_default { i32 8208, i32 816 }, %struct.reg_default { i32 8212, i32 536870912 }, %struct.reg_default { i32 8240, i32 -1073739822 }, %struct.reg_default { i32 8300, i32 -2147483520 }, %struct.reg_default { i32 8304, i32 64 }, %struct.reg_default { i32 8320, i32 8404992 }, %struct.reg_default { i32 8352, i32 5 }, %struct.reg_default { i32 8356, i32 2 }, %struct.reg_default { i32 8364, i32 1140854510 }, %struct.reg_default { i32 8400, i32 34863 }, %struct.reg_default { i32 8448, i32 4 }, %struct.reg_default { i32 8452, i32 939655233 }, %struct.reg_default { i32 8456, i32 0 }, %struct.reg_default { i32 8464, i32 4194816 }, %struct.reg_default { i32 8484, i32 1075970066 }, %struct.reg_default { i32 8512, i32 2147418218 }, %struct.reg_default { i32 8520, i32 0 }, %struct.reg_default { i32 8576, i32 3 }, %struct.reg_default { i32 8592, i32 134191 }, %struct.reg_default { i32 8596, i32 134191 }, %struct.reg_default { i32 8600, i32 268436290 }, %struct.reg_default { i32 8608, i32 134191 }, %struct.reg_default { i32 8612, i32 134191 }, %struct.reg_default { i32 8616, i32 268436290 }, %struct.reg_default { i32 8704, i32 165380 }, %struct.reg_default { i32 8708, i32 33555269 }, %struct.reg_default { i32 8720, i32 41640 }, %struct.reg_default { i32 8724, i32 4480 }, %struct.reg_default { i32 8728, i32 43688 }, %struct.reg_default { i32 8732, i32 1381415 }, %struct.reg_default { i32 8736, i32 8192 }, %struct.reg_default { i32 8740, i32 2048 }, %struct.reg_default { i32 8744, i32 323 }, %struct.reg_default { i32 8748, i32 36176 }, %struct.reg_default { i32 8768, i32 14 }, %struct.reg_default { i32 8800, i32 0 }, %struct.reg_default { i32 8804, i32 197152 }, %struct.reg_default { i32 11776, i32 0 }, %struct.reg_default { i32 11780, i32 0 }, %struct.reg_default { i32 12032, i32 348489 }, %struct.reg_default { i32 12040, i32 6 }, %struct.reg_default { i32 12048, i32 1 }, %struct.reg_default { i32 12272, i32 1 }, %struct.reg_default { i32 12276, i32 283923732 }], [72 x i8] zeroinitializer }, align 32
@rt5514_snd_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt5514_dsp_voice_wake_up_get, ptr @rt5514_dsp_voice_wake_up_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }], [32 x i8] zeroinitializer }, align 32
@rt5514_dapm_routes = internal constant { [63 x %struct.snd_soc_dapm_route], [820 x i8] } { [63 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.102, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.104, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.102, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.104, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.73, ptr @rt5514_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.74, ptr @rt5514_i2s_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.102, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.104, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.102, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.104, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.73, ptr @rt5514_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.75, ptr @rt5514_i2s_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }], [820 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MIC Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@bst_tlv = internal constant { [44 x i32], [48 x i8] } { [44 x i32] [i32 3, i32 168, i32 0, i32 2, i32 1, i32 8, i32 -300, i32 300, i32 3, i32 3, i32 1, i32 8, i32 450, i32 0, i32 4, i32 4, i32 1, i32 8, i32 750, i32 0, i32 5, i32 5, i32 1, i32 8, i32 950, i32 0, i32 6, i32 6, i32 1, i32 8, i32 1200, i32 0, i32 7, i32 7, i32 1, i32 8, i32 1400, i32 0, i32 8, i32 8, i32 1, i32 8, i32 1700, i32 0], [48 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 8736, i32 8736, i32 4, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC1 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 8592, i32 8596, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC2 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 8608, i32 8612, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP Voice Wake Up\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@rt5514_dsp_voice_wake_up_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't set rate for mclk\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rt5514_dsp_voice_wake_up_put\00", [35 x i8] zeroinitializer }, align 32
@rt5514_dsp_voice_wake_up_put._entry_ptr = internal global ptr @rt5514_dsp_voice_wake_up_put._entry, section ".printk_index", align 4
@rt5514_dsp_voice_wake_up_put._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't enable dsp_calib_clk\00", [37 x i8] zeroinitializer }, align 32
@rt5514_dsp_voice_wake_up_put._entry_ptr.36 = internal global ptr @rt5514_dsp_voice_wake_up_put._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5514_dsp_fw1.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5514_dsp_fw2.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1L\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1R\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2L\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2R\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMICL\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMICR\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO18 IN\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO18 ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO21\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BG LDO18 IN\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BG LDO21\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BG MBIAS\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MBIAS\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VREF2\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VREF1\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Power\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LDO16L\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC1L\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BSTL2\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BSTL\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCFEDL\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADCL Power\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LDO16R\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC1R\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BSTR2\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BSTR\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCFEDR\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADCR Power\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PLL1 LDO ENABLE\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLL1 LDO\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASRC AD1\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASRC AD2\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 DMIC Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5514_sto1_dmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5514_stereo1_dmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 DMIC Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5514_sto2_dmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5514_stereo2_dmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc stereo1 filter\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc stereo2 filter\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5514_sto1_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5514_sto1_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto2 ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5514_sto2_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto2 ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5514_sto2_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo1 ADC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo2 ADC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@rt5514_dapm_widgets = internal constant { [52 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2352 x i8] } { [52 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 1, ptr @rt5514_set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8452, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8196, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8196, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8196, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8196, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8196, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8804, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 16, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8200, i8 18, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8456, i8 16, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8456, i8 17, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5514_sto1_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5514_sto2_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8452, i8 23, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8452, i8 24, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5514_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5514_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5514_sto2_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5514_sto2_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8592, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8596, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8608, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8612, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.90, ptr @.str.91, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2352 x i8] zeroinitializer }, align 32
@rt5514_set_dmic_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set DMIC clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt5514_set_dmic_clk\00", [44 x i8] zeroinitializer }, align 32
@rt5514_set_dmic_clk._entry_ptr = internal global ptr @rt5514_set_dmic_clk._entry, section ".printk_index", align 4
@rt5514_calc_dmic_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Base clock rate %d is too low\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5514_calc_dmic_clk\00", [43 x i8] zeroinitializer }, align 32
@rt5514_calc_dmic_clk._entry_ptr = internal global ptr @rt5514_calc_dmic_clk._entry, section ".printk_index", align 4
@rt5514_calc_dmic_clk._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.4, i32 511, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Base clock rate %d is too high\0A\00", [32 x i8] zeroinitializer }, align 32
@rt5514_calc_dmic_clk._entry_ptr.99 = internal global ptr @rt5514_calc_dmic_clk._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stereo1 DMIC Source\00", [44 x i8] zeroinitializer }, align 32
@rt5514_stereo1_dmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8356, i8 0, i8 0, i32 2, i32 1, ptr @rt5514_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5514_dmic_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.45, ptr @.str.46], [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stereo2 DMIC Source\00", [44 x i8] zeroinitializer }, align 32
@rt5514_stereo2_dmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8356, i8 1, i8 1, i32 2, i32 1, ptr @rt5514_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8592, i32 8592, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8592, i32 8592, i32 10, i32 10, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8596, i32 8596, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8596, i32 8596, i32 10, i32 10, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8608, i32 8608, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8608, i32 8608, i32 10, i32 10, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8612, i32 8612, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8612, i32 8612, i32 10, i32 10, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5514-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5514_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rt5514_set_dai_sysclk, ptr @rt5514_set_dai_pll, ptr null, ptr null, ptr @rt5514_set_dai_fmt, ptr null, ptr @rt5514_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rt5514_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 882, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5514_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@rt5514_set_dai_sysclk._entry_ptr = internal global ptr @rt5514_set_dai_sysclk._entry, section ".printk_index", align 4
@rt5514_set_dai_sysclk.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.115, ptr @.str.4, ptr @.str.117, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt5514\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt5514_set_dai_pll.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.118, ptr @.str.4, ptr @.str.119, i8 0, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5514_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5514_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.4, i32 933, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5514_set_dai_pll._entry_ptr = internal global ptr @rt5514_set_dai_pll._entry, section ".printk_index", align 4
@rt5514_set_dai_pll._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.118, ptr @.str.4, i32 939, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5514_set_dai_pll._entry_ptr.123 = internal global ptr @rt5514_set_dai_pll._entry.121, section ".printk_index", align 4
@rt5514_set_dai_pll.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.118, ptr @.str.4, ptr @.str.124, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5514_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.4, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported clock setting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5514_hw_params\00", [47 x i8] zeroinitializer }, align 32
@rt5514_hw_params._entry_ptr = internal global ptr @rt5514_hw_params._entry, section ".printk_index", align 4
@rt5514_hw_params._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5514_hw_params._entry_ptr.129 = internal global ptr @rt5514_hw_params._entry.127, section ".printk_index", align 4
@rt5514_hw_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.126, ptr @.str.4, ptr @.str.130, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5514_hw_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.126, ptr @.str.4, ptr @.str.131, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@switch.table.rt5514_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 67108864, i32 33554432, i32 100663296], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [49 x i64] [i64 47, i64 32, i64 402661376, i64 402661380, i64 402661384, i64 402661392, i64 402661396, i64 402661424, i64 402661484, i64 402661488, i64 402661504, i64 402661536, i64 402661540, i64 402661548, i64 402661584, i64 402661632, i64 402661636, i64 402661640, i64 402661648, i64 402661668, i64 402661696, i64 402661704, i64 402661760, i64 402661776, i64 402661780, i64 402661784, i64 402661792, i64 402661796, i64 402661800, i64 402661888, i64 402661892, i64 402661904, i64 402661908, i64 402661912, i64 402661916, i64 402661920, i64 402661924, i64 402661928, i64 402661932, i64 402661952, i64 402661984, i64 402661988, i64 402664960, i64 402664964, i64 402665216, i64 402665224, i64 402665232, i64 402665456, i64 402665460]
@__sancov_gen_cov_switch_values.132 = internal global [49 x i64] [i64 47, i64 32, i64 8192, i64 8196, i64 8200, i64 8208, i64 8212, i64 8240, i64 8300, i64 8304, i64 8320, i64 8352, i64 8356, i64 8364, i64 8400, i64 8448, i64 8452, i64 8456, i64 8464, i64 8484, i64 8512, i64 8520, i64 8576, i64 8592, i64 8596, i64 8600, i64 8608, i64 8612, i64 8616, i64 8704, i64 8708, i64 8720, i64 8724, i64 8728, i64 8732, i64 8736, i64 8740, i64 8744, i64 8748, i64 8768, i64 8800, i64 8804, i64 11776, i64 11780, i64 12032, i64 12040, i64 12048, i64 12272, i64 12276]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 15, i64 48, i64 240]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 32, i64 20, i64 24, i64 25, i64 32]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 6, i64 36]
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"rt5514_i2c_driver\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1326, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1328, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"rt5514_of_match\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1213, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"rt5514_i2_pm_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1322, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"rt5514_i2c_id\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1206, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"rt5514_i2c_regmap\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1179, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1275, i32 23 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1278, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"rt5514_regmap\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1189, i32 35 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1283, i32 19 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1286, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1301, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"rt5514_i2c_patch\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 35, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1309, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [13 x i8] c"rt5514_patch\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 57, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1315, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt5514\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1165, i32 46 }
@___asan_gen_.225 = private unnamed_addr constant [11 x i8] c"rt5514_dai\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1150, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1230, i32 32 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1232, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1234, i32 32 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1180, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant [11 x i8] c"rt5514_reg\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 68, i32 33 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"rt5514_snd_controls\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 425, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant [19 x i8] c"rt5514_dapm_routes\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 670, i32 40 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 426, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [8 x i8] c"bst_tlv\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 275, i32 14 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 428, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 285, i32 14 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 431, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 434, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 344, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 348, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 371, i32 26 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 384, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 559, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 560, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 561, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 562, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 564, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 565, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 567, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 568, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 570, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 573, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 576, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 578, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 580, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 582, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 584, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 586, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 588, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 590, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 592, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 594, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 597, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 599, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 601, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 603, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 605, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 607, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 609, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 611, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 613, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 615, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 617, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 619, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 621, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 623, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 625, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 627, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 629, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 633, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [21 x i8] c"rt5514_sto1_dmic_mux\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 476, i32 38 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 635, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [21 x i8] c"rt5514_sto2_dmic_mux\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 483, i32 38 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 639, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 641, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 644, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [22 x i8] c"rt5514_sto1_adc_l_mix\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 439, i32 38 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 646, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [22 x i8] c"rt5514_sto1_adc_r_mix\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 446, i32 38 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 648, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [22 x i8] c"rt5514_sto2_adc_l_mix\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 453, i32 38 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 650, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [22 x i8] c"rt5514_sto2_adc_r_mix\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 460, i32 38 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 653, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 655, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 657, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 659, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 663, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 664, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 667, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c"rt5514_dapm_widgets\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 557, i32 41 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 524, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 501, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 511, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 477, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [25 x i8] c"rt5514_stereo1_dmic_enum\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 472, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant [16 x i8] c"rt5514_dmic_src\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 468, i32 27 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 484, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [25 x i8] c"rt5514_stereo2_dmic_enum\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 479, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 440, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 442, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1101, i32 46 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1152, i32 11 }
@___asan_gen_.531 = private unnamed_addr constant [19 x i8] c"rt5514_aif_dai_ops\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1142, i32 37 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 882, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 892, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 906, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 933, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 939, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 943, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 762, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 768, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 775, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.589 = private constant [29 x i8] c"../sound/soc/codecs/rt5514.c\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 777, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [32 x i8] c"switch.table.rt5514_set_dai_fmt\00", align 1
@llvm.compiler.used = appending global [181 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_rt5514_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5514__299_1336_rt5514_i2c_driver_init6, ptr @rt5514_calc_dmic_clk._entry, ptr @rt5514_calc_dmic_clk._entry.97, ptr @rt5514_calc_dmic_clk._entry_ptr, ptr @rt5514_calc_dmic_clk._entry_ptr.99, ptr @rt5514_dsp_voice_wake_up_put._entry, ptr @rt5514_dsp_voice_wake_up_put._entry.34, ptr @rt5514_dsp_voice_wake_up_put._entry_ptr, ptr @rt5514_dsp_voice_wake_up_put._entry_ptr.36, ptr @rt5514_hw_params._entry, ptr @rt5514_hw_params._entry.127, ptr @rt5514_hw_params._entry_ptr, ptr @rt5514_hw_params._entry_ptr.129, ptr @rt5514_i2c_driver_exit, ptr @rt5514_i2c_probe._entry, ptr @rt5514_i2c_probe._entry.11, ptr @rt5514_i2c_probe._entry.14, ptr @rt5514_i2c_probe._entry.18, ptr @rt5514_i2c_probe._entry.9, ptr @rt5514_i2c_probe._entry_ptr, ptr @rt5514_i2c_probe._entry_ptr.10, ptr @rt5514_i2c_probe._entry_ptr.13, ptr @rt5514_i2c_probe._entry_ptr.17, ptr @rt5514_i2c_probe._entry_ptr.20, ptr @rt5514_set_dai_pll._entry, ptr @rt5514_set_dai_pll._entry.121, ptr @rt5514_set_dai_pll._entry_ptr, ptr @rt5514_set_dai_pll._entry_ptr.123, ptr @rt5514_set_dai_sysclk._entry, ptr @rt5514_set_dai_sysclk._entry_ptr, ptr @rt5514_set_dmic_clk._entry, ptr @rt5514_set_dmic_clk._entry_ptr, ptr @rt5514_i2c_driver, ptr @.str, ptr @rt5514_of_match, ptr @rt5514_i2_pm_ops, ptr @rt5514_i2c_id, ptr @rt5514_i2c_probe._key, ptr @rt5514_i2c_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rt5514_i2c_probe._key.7, ptr @rt5514_regmap, ptr @.str.8, ptr @.str.12, ptr @rt5514_i2c_patch, ptr @.str.15, ptr @.str.16, ptr @rt5514_patch, ptr @.str.19, ptr @soc_component_dev_rt5514, ptr @rt5514_dai, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @rt5514_reg, ptr @rt5514_snd_controls, ptr @rt5514_dapm_routes, ptr @.str.25, ptr @bst_tlv, ptr @.compoundliteral, ptr @.str.26, ptr @adc_vol_tlv, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @rt5514_sto1_dmic_mux, ptr @.str.77, ptr @rt5514_sto2_dmic_mux, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @rt5514_sto1_adc_l_mix, ptr @.str.81, ptr @rt5514_sto1_adc_r_mix, ptr @.str.82, ptr @rt5514_sto2_adc_l_mix, ptr @.str.83, ptr @rt5514_sto2_adc_r_mix, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @rt5514_dapm_widgets, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @rt5514_stereo1_dmic_enum, ptr @rt5514_dmic_src, ptr @.str.101, ptr @rt5514_stereo2_dmic_enum, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.str.113, ptr @rt5514_aif_dai_ops, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @switch.table.rt5514_set_dai_fmt], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_probe._key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_patch to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_patch to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt5514 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_reg to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_snd_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_dapm_routes to i32), i32 3276, i32 4096, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bst_tlv to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_dsp_voice_wake_up_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_dsp_voice_wake_up_put._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_sto1_dmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_sto2_dmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_sto1_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_sto1_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_sto2_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_sto2_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_dapm_widgets to i32), i32 9360, i32 11712, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_set_dmic_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_calc_dmic_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_calc_dmic_clk._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_stereo1_dmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_dmic_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_stereo2_dmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_set_dai_pll._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_hw_params._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5514_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5514_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5514_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5514_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %call.i, ptr %1, i32 12)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i, i32 noundef 1) #9
  %dsp_calib_clk_name.i = getelementptr inbounds %struct.rt5514_platform_data, ptr %call.i, i32 0, i32 1
  %call2.i = tail call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %dsp_calib_clk_name.i) #9
  %dsp_calib_clk_rate.i = getelementptr inbounds %struct.rt5514_platform_data, ptr %call.i, i32 0, i32 2
  %call.i1.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %dsp_calib_clk_rate.i, i32 noundef 1) #9
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5514_i2c_regmap, ptr noundef nonnull @rt5514_i2c_probe._key, ptr noundef nonnull @.str.1) #9
  %i2c_regmap = getelementptr inbounds %struct.rt5514_priv, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %i2c_regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %i2c_regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %6) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call18 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %i2c, ptr noundef nonnull @rt5514_regmap, ptr noundef nonnull @rt5514_i2c_probe._key.7, ptr noundef nonnull @.str.8) #9
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %regmap, align 4
  %cmp.i104 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %8) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %call30 = call i32 @regmap_read(ptr noundef %call18, i32 noundef 12276, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.end28.if.then33_crit_edge

if.end28.if.then33_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.end28
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 283923732, i32 %10)
  %cmp32.not = icmp eq i32 %10, 283923732
  br i1 %cmp32.not, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %if.end28.if.then33_crit_edge
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_read(ptr noundef %12, i32 noundef 12276, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %phi.cmp = icmp eq i32 %call35, 0
  br i1 %phi.cmp, label %lor.lhs.false38, label %if.then33.do.end43_crit_edge

if.then33.do.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

lor.lhs.false38:                                  ; preds = %if.then33
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 283923732, i32 %.pr)
  %cmp39.not = icmp eq i32 %.pr, 283923732
  br i1 %cmp39.not, label %lor.lhs.false38.if.end45_crit_edge, label %lor.lhs.false38.do.end43_crit_edge

lor.lhs.false38.do.end43_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

lor.lhs.false38.if.end45_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end43:                                         ; preds = %lor.lhs.false38.do.end43_crit_edge, %if.then33.do.end43_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %15) #12
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false38.if.end45_crit_edge, %lor.lhs.false.if.end45_crit_edge
  %16 = ptrtoint ptr %i2c_regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_regmap, align 4
  %call47 = call i32 @regmap_multi_reg_write(ptr noundef %17, ptr noundef nonnull @rt5514_i2c_patch, i32 noundef 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end45.if.end54_crit_edge, label %do.end52

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call47) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.end45.if.end54_crit_edge
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_register_patch(ptr noundef %19, ptr noundef nonnull @rt5514_patch, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end54.if.end63_crit_edge, label %do.end61

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call56) #12
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %if.end54.if.end63_crit_edge
  %call65 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt5514, ptr noundef nonnull @rt5514_dai, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end43, %if.then21, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then11 ], [ %8, %if.then21 ], [ -19, %do.end43 ], [ %call65, %if.end63 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5514_i2c_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 402661376, label %entry.return_crit_edge
    i32 402661380, label %entry.return_crit_edge1
    i32 402661384, label %entry.return_crit_edge2
    i32 402661392, label %entry.return_crit_edge3
    i32 402661396, label %entry.return_crit_edge4
    i32 402661424, label %entry.return_crit_edge5
    i32 402661484, label %entry.return_crit_edge6
    i32 402661488, label %entry.return_crit_edge7
    i32 402661504, label %entry.return_crit_edge8
    i32 402661536, label %entry.return_crit_edge9
    i32 402661540, label %entry.return_crit_edge10
    i32 402661548, label %entry.return_crit_edge11
    i32 402661584, label %entry.return_crit_edge12
    i32 402661632, label %entry.return_crit_edge13
    i32 402661636, label %entry.return_crit_edge14
    i32 402661640, label %entry.return_crit_edge15
    i32 402661648, label %entry.return_crit_edge16
    i32 402661668, label %entry.return_crit_edge17
    i32 402661696, label %entry.return_crit_edge18
    i32 402661704, label %entry.return_crit_edge19
    i32 402661760, label %entry.return_crit_edge20
    i32 402661776, label %entry.return_crit_edge21
    i32 402661780, label %entry.return_crit_edge22
    i32 402661784, label %entry.return_crit_edge23
    i32 402661792, label %entry.return_crit_edge24
    i32 402661796, label %entry.return_crit_edge25
    i32 402661800, label %entry.return_crit_edge26
    i32 402661888, label %entry.return_crit_edge27
    i32 402661892, label %entry.return_crit_edge28
    i32 402661904, label %entry.return_crit_edge29
    i32 402661908, label %entry.return_crit_edge30
    i32 402661912, label %entry.return_crit_edge31
    i32 402661916, label %entry.return_crit_edge32
    i32 402661920, label %entry.return_crit_edge33
    i32 402661924, label %entry.return_crit_edge34
    i32 402661928, label %entry.return_crit_edge35
    i32 402661932, label %entry.return_crit_edge36
    i32 402661952, label %entry.return_crit_edge37
    i32 402661984, label %entry.return_crit_edge38
    i32 402661988, label %entry.return_crit_edge39
    i32 402664960, label %entry.return_crit_edge40
    i32 402664964, label %entry.return_crit_edge41
    i32 402665216, label %entry.return_crit_edge42
    i32 402665224, label %entry.return_crit_edge43
    i32 402665232, label %entry.return_crit_edge44
    i32 402665456, label %entry.return_crit_edge45
    i32 402665460, label %entry.return_crit_edge46
  ]

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5514_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %reg, label %sw.default [
    i32 8192, label %entry.return_crit_edge
    i32 8196, label %entry.return_crit_edge1
    i32 8200, label %entry.return_crit_edge2
    i32 8208, label %entry.return_crit_edge3
    i32 8212, label %entry.return_crit_edge4
    i32 8240, label %entry.return_crit_edge5
    i32 8300, label %entry.return_crit_edge6
    i32 8304, label %entry.return_crit_edge7
    i32 8320, label %entry.return_crit_edge8
    i32 8352, label %entry.return_crit_edge9
    i32 8356, label %entry.return_crit_edge10
    i32 8364, label %entry.return_crit_edge11
    i32 8400, label %entry.return_crit_edge12
    i32 8448, label %entry.return_crit_edge13
    i32 8452, label %entry.return_crit_edge14
    i32 8456, label %entry.return_crit_edge15
    i32 8464, label %entry.return_crit_edge16
    i32 8484, label %entry.return_crit_edge17
    i32 8512, label %entry.return_crit_edge18
    i32 8520, label %entry.return_crit_edge19
    i32 8576, label %entry.return_crit_edge20
    i32 8592, label %entry.return_crit_edge21
    i32 8596, label %entry.return_crit_edge22
    i32 8600, label %entry.return_crit_edge23
    i32 8608, label %entry.return_crit_edge24
    i32 8612, label %entry.return_crit_edge25
    i32 8616, label %entry.return_crit_edge26
    i32 8704, label %entry.return_crit_edge27
    i32 8708, label %entry.return_crit_edge28
    i32 8720, label %entry.return_crit_edge29
    i32 8724, label %entry.return_crit_edge30
    i32 8728, label %entry.return_crit_edge31
    i32 8732, label %entry.return_crit_edge32
    i32 8736, label %entry.return_crit_edge33
    i32 8740, label %entry.return_crit_edge34
    i32 8744, label %entry.return_crit_edge35
    i32 8748, label %entry.return_crit_edge36
    i32 8768, label %entry.return_crit_edge37
    i32 8800, label %entry.return_crit_edge38
    i32 8804, label %entry.return_crit_edge39
    i32 11776, label %entry.return_crit_edge40
    i32 11780, label %entry.return_crit_edge41
    i32 12032, label %entry.return_crit_edge42
    i32 12040, label %entry.return_crit_edge43
    i32 12048, label %entry.return_crit_edge44
    i32 12272, label %entry.return_crit_edge45
    i32 12276, label %entry.return_crit_edge46
  ]

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5514_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -12272
  %switch.and = and i32 %0, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_i2c_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_regmap = getelementptr inbounds %struct.rt5514_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_regmap, align 4
  %or = or i32 %reg, 402653184
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %or, ptr noundef %val) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_i2c_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_regmap = getelementptr inbounds %struct.rt5514_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_regmap, align 4
  %or = or i32 %reg, 402653184
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %or, i32 noundef %val) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.112) #9
  %mclk = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %mclk, align 4
  %cmp = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsp_calib_clk_name = getelementptr inbounds %struct.rt5514_platform_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dsp_calib_clk_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_calib_clk_name, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then5

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then5:                                         ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull %6) #9
  %dsp_calib_clk = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %dsp_calib_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %dsp_calib_clk, align 4
  %cmp12 = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp12, label %if.then5.cleanup_crit_edge, label %if.then5.if.end15_crit_edge

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then5.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %component16 = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %component16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %component, ptr %component16, align 4
  %pll3_cal_value = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %pll3_cal_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7909376, ptr %pll3_cal_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -517, %entry.cleanup_crit_edge ], [ -517, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mclk = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %6) #9
  tail call void @clk_unprepare(ptr noundef %6) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %6) #9
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %dapm.i.i33 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then13, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %sw.bb10
  %dsp_enabled = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %dsp_enabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dsp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.then13.cleanup_crit_edge, label %if.then15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dsp_enabled to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dsp_enabled, align 4
  %i2c_regmap = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %i2c_regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_regmap, align 4
  %call17 = tail call i32 @regmap_multi_reg_write(ptr noundef %15, ptr noundef nonnull @rt5514_i2c_patch, i32 noundef 19) #9
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %17) #9
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call19 = tail call i32 @regcache_sync(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then13.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5514_dsp_voice_wake_up_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dsp_enabled = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %dsp_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsp_enabled, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_dsp_voice_wake_up_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %9 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %buf, align 8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %dsp_enabled = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 13
  %13 = ptrtoint ptr %dsp_enabled to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsp_enabled, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp eq i32 %12, %14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2 = icmp eq i32 %16, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %17 = ptrtoint ptr %dsp_enabled to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %dsp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then3
  %dsp_calib_clk_name = getelementptr inbounds %struct.rt5514_platform_data, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %dsp_calib_clk_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp_calib_clk_name, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.then8.if.end42_crit_edge, label %land.lhs.true

if.then8.if.end42_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then8
  %dsp_calib_clk = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %dsp_calib_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dsp_calib_clk, align 4
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end42_crit_edge, label %if.then11

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then11:                                        ; preds = %land.lhs.true
  %dsp_calib_clk_rate = getelementptr inbounds %struct.rt5514_platform_data, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %dsp_calib_clk_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dsp_calib_clk_rate, align 4
  %call14 = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.if.end17_crit_edge, label %do.end

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.32) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then11.if.end17_crit_edge
  %26 = ptrtoint ptr %dsp_calib_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsp_calib_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.do.end24_crit_edge

if.end17.do.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end26_crit_edge, label %if.then3.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then3.i, %if.end17.do.end24_crit_edge
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.35) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.end.i.if.end26_crit_edge
  tail call fastcc void @rt5514_calibration(ptr noundef %5, i1 noundef zeroext true)
  tail call void @msleep(i32 noundef 20) #9
  %call28 = call i32 @rt5514_spi_burst_read(i32 noundef 402661672, ptr noundef nonnull %buf, i32 noundef 8) #9
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf, align 8
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %7, align 1
  %conv31 = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv31, 8
  %or = or i32 %shl, %conv
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %8, align 2
  %conv33 = zext i8 %35 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %or35 = or i32 %or, %shl34
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %9, align 1
  %conv37 = zext i8 %37 to i32
  %shl38 = shl nuw i32 %conv37, 24
  %or39 = or i32 %or35, %shl38
  %pll3_cal_value = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 14
  %38 = ptrtoint ptr %pll3_cal_value to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or39, ptr %pll3_cal_value, align 4
  %regmap.i = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 8484, i32 noundef -1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 4
  %call.i5.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 8196, i32 noundef 769, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call.i6.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 8448, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %45 = ptrtoint ptr %dsp_calib_clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dsp_calib_clk, align 4
  call void @clk_disable(ptr noundef %46) #9
  call void @clk_unprepare(ptr noundef %46) #9
  br label %if.end42

if.end42:                                         ; preds = %if.end26, %land.lhs.true.if.end42_crit_edge, %if.then8.if.end42_crit_edge
  %i2c_regmap.i = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 2
  %47 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_regmap.i, align 4
  %call.i120 = call i32 @regmap_write(ptr noundef %48, i32 noundef 402661376, i32 noundef 4332) #9
  %49 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_regmap.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 402661888, i32 noundef 165380) #9
  %51 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_regmap.i, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %52, i32 noundef -84215046, i32 noundef 1) #9
  %53 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_regmap.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 402665216, i32 noundef 348491) #9
  %55 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c_regmap.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 402665216, i32 noundef 348489) #9
  %57 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_regmap.i, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %58, i32 noundef -84215046, i32 noundef 0) #9
  %59 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_regmap.i, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 402661488, i32 noundef 64) #9
  %61 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_regmap.i, align 4
  %call14.i = call i32 @regmap_write(ptr noundef %62, i32 noundef 402661952, i32 noundef 10) #9
  %63 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c_regmap.i, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %64, i32 noundef 402661632, i32 noundef 11) #9
  %65 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_regmap.i, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 402661380, i32 noundef 8424321) #9
  %67 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c_regmap.i, align 4
  %call20.i = call i32 @regmap_write(ptr noundef %68, i32 noundef 402665224, i32 noundef 5) #9
  %69 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_regmap.i, align 4
  %call22.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 402657556, i32 noundef 1) #9
  %71 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_regmap.i, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 402657560, i32 noundef 1) #9
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %call44 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.37, ptr noundef %74) #9
  %75 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fw, align 4
  %tobool45.not = icmp eq ptr %76, null
  br i1 %tobool45.not, label %if.end42.if.end48_crit_edge, label %if.then46

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.firmware, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %76, align 4
  %81 = add i32 %80, 8
  %mul = and i32 %81, -8
  %call47 = call i32 @rt5514_spi_burst_write(i32 noundef 1341521920, ptr noundef %78, i32 noundef %mul) #9
  %82 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %83) #9
  %84 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %fw, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42.if.end48_crit_edge
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %call50 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.38, ptr noundef %86) #9
  %87 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fw, align 4
  %tobool51.not = icmp eq ptr %88, null
  br i1 %tobool51.not, label %if.end48.if.end59_crit_edge, label %if.then52

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %data53 = getelementptr inbounds %struct.firmware, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %data53 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data53, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %88, align 4
  %93 = add i32 %92, 8
  %mul57 = and i32 %93, -8
  %call58 = call i32 @rt5514_spi_burst_write(i32 noundef 1341915136, ptr noundef %90, i32 noundef %mul57) #9
  %94 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %95) #9
  %96 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %fw, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %if.end48.if.end59_crit_edge
  %97 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c_regmap.i, align 4
  %call60 = call i32 @regmap_write(ptr noundef %98, i32 noundef 402665216, i32 noundef 348488) #9
  %99 = ptrtoint ptr %dsp_calib_clk_name to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dsp_calib_clk_name, align 4
  %tobool63.not = icmp eq ptr %100, null
  br i1 %tobool63.not, label %if.end59.cleanup_crit_edge, label %land.lhs.true64

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true64:                                  ; preds = %if.end59
  %dsp_calib_clk65 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 5
  %101 = ptrtoint ptr %dsp_calib_clk65 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dsp_calib_clk65, align 4
  %cmp.i121 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %land.lhs.true64.cleanup_crit_edge, label %if.then67

land.lhs.true64.cleanup_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 20) #9
  %103 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i2c_regmap.i, align 4
  %pll3_cal_value69 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 14
  %105 = ptrtoint ptr %pll3_cal_value69 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pll3_cal_value69, align 4
  %call70 = call i32 @regmap_write(ptr noundef %104, i32 noundef 402661660, i32 noundef %106) #9
  %107 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c_regmap.i, align 4
  %call72 = call i32 @regmap_write(ptr noundef %108, i32 noundef 402661668, i32 noundef 2228242) #9
  %109 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i2c_regmap.i, align 4
  %call74 = call i32 @regmap_write(ptr noundef %110, i32 noundef 402661668, i32 noundef -2145255358) #9
  %111 = ptrtoint ptr %i2c_regmap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i2c_regmap.i, align 4
  %call76 = call i32 @regmap_write(ptr noundef %112, i32 noundef 402661668, i32 noundef -534642622) #9
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_regmap78 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 2
  %113 = ptrtoint ptr %i2c_regmap78 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i2c_regmap78, align 4
  %call79 = tail call i32 @regmap_multi_reg_write(ptr noundef %114, ptr noundef nonnull @rt5514_i2c_patch, i32 noundef 19) #9
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %116) #9
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %call81 = tail call i32 @regcache_sync(ptr noundef %118) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then67, %land.lhs.true64.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt5514_calibration(ptr nocapture noundef readonly %rt5514, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %rt5514, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 8768, i32 noundef 10) #9
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 8448, i32 noundef 15, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8196, i32 noundef 769, i32 noundef 769, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %pll3_cal_value = getelementptr inbounds %struct.rt5514_priv, ptr %rt5514, i32 0, i32 14
  %8 = ptrtoint ptr %pll3_cal_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll3_cal_value, align 4
  %or = or i32 %9, -2147483648
  %call6 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 8480, i32 noundef %or) #9
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8464, i32 noundef -1950873600) #9
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 8484, i32 noundef -1073741824, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 8484, i32 noundef -1073741824, i32 noundef -1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8484, i32 noundef -1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8196, i32 noundef 769, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 8448, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt5514_spi_burst_read(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt5514_spi_burst_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_set_dmic_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %sysclk = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %7)
  %cmp.i = icmp slt i32 %7, 2000000
  br i1 %cmp.i, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %7)
  %cmp3.not.i = icmp ugt i32 %7, 6144000
  br i1 %cmp3.not.i, label %for.inc.i, label %for.body.preheader.i.if.else_crit_edge

for.body.preheader.i.if.else_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %7) #12
  br label %do.end

for.inc.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9216000, i32 %7)
  %cmp3.not.1.i = icmp ugt i32 %7, 9216000
  br i1 %cmp3.not.1.i, label %for.inc.1.i, label %for.inc.i.if.else_crit_edge

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %7)
  %cmp3.not.2.i = icmp ugt i32 %7, 12288000
  br i1 %cmp3.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.else_crit_edge

for.inc.1.i.if.else_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %7)
  %cmp3.not.3.i = icmp ugt i32 %7, 24576000
  br i1 %cmp3.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.else_crit_edge

for.inc.2.i.if.else_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %7)
  %cmp3.not.4.i = icmp ugt i32 %7, 36864000
  br i1 %cmp3.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.else_crit_edge

for.inc.3.i.if.else_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152000, i32 %7)
  %cmp3.not.5.i = icmp ugt i32 %7, 49152000
  br i1 %cmp3.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.else_crit_edge

for.inc.4.i.if.else_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 73728000, i32 %7)
  %cmp3.not.6.i = icmp ugt i32 %7, 73728000
  br i1 %cmp3.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.else_crit_edge

for.inc.5.i.if.else_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304000, i32 %7)
  %cmp3.not.7.i = icmp ugt i32 %7, 98304000
  br i1 %cmp3.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.else_crit_edge

for.inc.6.i.if.else_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.98, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %for.inc.7.i, %do.end.i
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.93) #12
  br label %if.end

if.else:                                          ; preds = %for.inc.6.i.if.else_crit_edge, %for.inc.5.i.if.else_crit_edge, %for.inc.4.i.if.else_crit_edge, %for.inc.3.i.if.else_crit_edge, %for.inc.2.i.if.else_crit_edge, %for.inc.1.i.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %for.body.preheader.i.if.else_crit_edge
  %retval.0.i.ph = phi i32 [ 7, %for.inc.6.i.if.else_crit_edge ], [ 6, %for.inc.5.i.if.else_crit_edge ], [ 5, %for.inc.4.i.if.else_crit_edge ], [ 4, %for.inc.3.i.if.else_crit_edge ], [ 3, %for.inc.2.i.if.else_crit_edge ], [ 2, %for.inc.1.i.if.else_crit_edge ], [ 1, %for.inc.i.if.else_crit_edge ], [ 0, %for.body.preheader.i.if.else_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 %retval.0.i.ph, 8
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8452, i32 noundef 1792, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %retval.0.i20 = phi i32 [ %retval.0.i.ph, %if.else ], [ -22, %do.end ]
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef %13) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret i32 %retval.0.i20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5514_is_sys_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %sysclk_src = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5514_i2s_use_asrc(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %sysclk = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %lrck = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lrck, align 4
  %mul = mul i32 %9, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp = icmp sgt i32 %7, %mul
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %sysclk = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %clk_id)
  %cmp2 = icmp eq i32 %9, %clk_id
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %clk_id, label %do.end [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.114, i32 noundef %clk_id) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %reg_val.0 = phi i32 [ 3, %sw.bb3 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8456, i32 noundef 3, i32 noundef %reg_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %13 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src7 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %sysclk_src7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %clk_id, ptr %sysclk_src7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5514_set_dai_sysclk.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5514_set_dai_sysclk, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !304

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %15 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5514_set_dai_sysclk.__UNIQUE_ID_ddebug296, ptr noundef %16, ptr noundef nonnull @.str.117, i32 noundef %freq, i32 noundef %clk_id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.epilog, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_set_dai_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %pll_code = alloca %struct.rl6231_pll_code, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_code) #9
  %6 = call ptr @memset(ptr %pll_code, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool2.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5514_set_dai_pll.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5514_set_dai_pll, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !304

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5514_set_dai_pll.__UNIQUE_ID_ddebug297, ptr noundef %8, ptr noundef nonnull @.str.119) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %pll_in = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 11
  %9 = ptrtoint ptr %pll_in to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pll_in, align 4
  %pll_out = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %pll_out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pll_out, align 4
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8456, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %pll_src = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 10
  %13 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %source)
  %cmp = icmp eq i32 %14, %source
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %pll_in10 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 11
  %15 = ptrtoint ptr %pll_in10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_in10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %freq_in)
  %cmp11 = icmp eq i32 %16, %freq_in
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true12:                                  ; preds = %land.lhs.true
  %pll_out13 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 12
  %17 = ptrtoint ptr %pll_out13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pll_out13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %freq_out)
  %cmp14 = icmp eq i32 %18, %freq_out
  br i1 %cmp14, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end16_crit_edge

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true12.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %19 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %source, label %do.end24 [
    i32 0, label %if.end16.sw.epilog_crit_edge
    i32 1, label %sw.bb19
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.120, i32 noundef %source) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb19, %if.end16.sw.epilog_crit_edge
  %.sink117 = phi i32 [ 12288, %sw.bb19 ], [ 16384, %if.end16.sw.epilog_crit_edge ]
  %regmap20 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap20, align 4
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 8448, i32 noundef 28672, i32 noundef %.sink117, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call26 = call i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %do.body34

do.end31:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.122, i32 noundef %freq_in) #12
  br label %cleanup

do.body34:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5514_set_dai_pll.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5514_set_dai_pll, %if.then46)) #9
          to label %do.end54 [label %if.then46], !srcloc !304

if.then46:                                        ; preds = %do.body34
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pll_code, align 4, !range !305
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.not = icmp eq i8 %29, 0
  %30 = zext i8 %29 to i32
  br i1 %tobool48.not, label %cond.false, label %if.then46.cond.end_crit_edge

if.then46.cond.end_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %31 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then46.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.false ], [ 0, %if.then46.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %33 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %35 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5514_set_dai_pll.__UNIQUE_ID_ddebug298, ptr noundef %27, ptr noundef nonnull @.str.124, i32 noundef %30, i32 noundef %cond, i32 noundef %34, i32 noundef %36) #9
  br label %do.end54

do.end54:                                         ; preds = %cond.end, %do.body34
  %regmap55 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %regmap55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap55, align 4
  %k_code56 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %39 = ptrtoint ptr %k_code56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %k_code56, align 4
  %shl = shl i32 %40, 16
  %n_code57 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %41 = ptrtoint ptr %n_code57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_code57, align 4
  %shl58 = shl i32 %42, 4
  %or = or i32 %shl58, %shl
  %43 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pll_code, align 4, !range !305
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool60.not = icmp eq i8 %44, 0
  br i1 %tobool60.not, label %cond.false63, label %do.end54.cond.end65_crit_edge

do.end54.cond.end65_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end65

cond.false63:                                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  %m_code64 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %45 = ptrtoint ptr %m_code64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m_code64, align 4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false63, %do.end54.cond.end65_crit_edge
  %cond66 = phi i32 [ %46, %cond.false63 ], [ 0, %do.end54.cond.end65_crit_edge ]
  %or68 = or i32 %or, %cond66
  %call69 = call i32 @regmap_write(ptr noundef %38, i32 noundef 8800, i32 noundef %or68) #9
  %47 = ptrtoint ptr %regmap55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap55, align 4
  %49 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pll_code, align 4, !range !305
  %51 = shl nuw nsw i8 %50, 2
  %shl74 = zext i8 %51 to i32
  %call.i114 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 8804, i32 noundef 4, i32 noundef %shl74, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %pll_in76 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 11
  %52 = ptrtoint ptr %pll_in76 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %freq_in, ptr %pll_in76, align 4
  %pll_out77 = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 12
  %53 = ptrtoint ptr %pll_out77 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %freq_out, ptr %pll_out77, align 4
  %54 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end65, %do.end31, %do.end24, %land.lhs.true12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %call26, %do.end31 ], [ 0, %cond.end65 ], [ 0, %do.end ], [ 0, %land.lhs.true12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %and = lshr i32 %fmt, 8
  %6 = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %6 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt5514_set_dai_fmt, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and6 = and i32 %fmt, 15
  %10 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %and6, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %switch.lookup.sw.epilog14_crit_edge
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 5, label %sw.bb11
  ]

switch.lookup.sw.epilog14_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %or8 = or i32 %switch.load, 65536
  br label %sw.epilog14

sw.bb9:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %or10 = or i32 %switch.load, 131072
  br label %sw.epilog14

sw.bb11:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %switch.load, 196608
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %switch.lookup.sw.epilog14_crit_edge
  %reg_val.1 = phi i32 [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %switch.load, %switch.lookup.sw.epilog14_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8208, i32 noundef 101122048, i32 noundef %reg_val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog14, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = or i32 %rx_mask, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %val.0 = select i1 %7, i32 0, i32 268435456
  %8 = zext i32 %tx_mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %tx_mask, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 48, label %sw.bb4
    i32 15, label %sw.bb6
    i32 240, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %val2.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ -1342177280, %sw.bb8 ], [ -1610612736, %sw.bb6 ], [ -1879048192, %sw.bb4 ], [ -2147483648, %sw.bb ]
  %9 = zext i32 %slots to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %slots, label %sw.epilog.sw.epilog18_crit_edge [
    i32 4, label %sw.bb10
    i32 6, label %sw.bb12
    i32 8, label %sw.bb14
  ]

sw.epilog.sw.epilog18_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog18

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or11 = or i32 %val.0, 1088
  br label %sw.epilog18

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %val.0, 2176
  br label %sw.epilog18

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %val.0, 3264
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb14, %sw.bb12, %sw.bb10, %sw.epilog.sw.epilog18_crit_edge
  %val.1 = phi i32 [ %val.0, %sw.epilog.sw.epilog18_crit_edge ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %or11, %sw.bb10 ]
  %10 = zext i32 %slot_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %slot_width, label %sw.epilog18.sw.epilog29_crit_edge [
    i32 20, label %sw.bb19
    i32 24, label %sw.bb21
    i32 25, label %sw.bb23
    i32 32, label %sw.bb25
  ]

sw.epilog18.sw.epilog29_crit_edge:                ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29

sw.bb19:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #11
  %or20 = or i32 %val.1, 272
  br label %sw.epilog29

sw.bb21:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #11
  %or22 = or i32 %val.1, 544
  br label %sw.epilog29

sw.bb23:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #11
  %or24 = or i32 %val.1, 1073741824
  br label %sw.epilog29

sw.bb25:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #11
  %or26 = or i32 %val.1, 816
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.epilog18.sw.epilog29_crit_edge
  %val.2 = phi i32 [ %val.1, %sw.epilog18.sw.epilog29_crit_edge ], [ %or26, %sw.bb25 ], [ %or24, %sw.bb23 ], [ %or22, %sw.bb21 ], [ %or20, %sw.bb19 ]
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8208, i32 noundef 1342181360, i32 noundef %val.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 8212, i32 noundef -1342177280, i32 noundef %val2.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %lrck = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %lrck to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lrck, align 4
  %sysclk = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sysclk, align 4
  %call4 = tail call i32 @rl6231_get_clk_info(i32 noundef %10, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.125) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.128, i32 noundef %call5) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp13 = icmp ugt i32 %call5, 32
  %conv = zext i1 %cmp13 to i32
  %15 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lrck, align 4
  %shl = shl nuw nsw i32 32, %conv
  %mul = mul i32 %16, %shl
  %bclk = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %bclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5514_hw_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5514_hw_params, %if.then19)) #9
          to label %do.body26 [label %if.then19], !srcloc !304

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %18 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev20, align 4
  %20 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bclk, align 4
  %22 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lrck, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5514_hw_params.__UNIQUE_ID_ddebug294, ptr noundef %19, ptr noundef nonnull @.str.130, i32 noundef %21, i32 noundef %23) #9
  br label %do.body26

do.body26:                                        ; preds = %if.then19, %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5514_hw_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5514_hw_params, %if.then38)) #9
          to label %do.end42 [label %if.then38], !srcloc !304

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %24 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev39, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5514_hw_params.__UNIQUE_ID_ddebug295, ptr noundef %25, ptr noundef nonnull @.str.131, i32 noundef %conv, i32 noundef %call4, i32 noundef %27) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  %arrayidx.i.i85 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %do.end42.params_format.exit_crit_edge

do.end42.params_format.exit_crit_edge:            ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %do.end42
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.bb45_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i.sw.bb45_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %do.end42.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %do.end42.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %29, %do.end42.params_format.exit_crit_edge ], [ %31, %for.inc.i.i.params_format.exit_crit_edge ]
  %32 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !306
  %add.i.i = or i32 %32, %i.09.lcssa.i.i
  %33 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 36, label %sw.bb
    i32 6, label %sw.bb44
    i32 0, label %params_format.exit.sw.bb45_crit_edge
  ]

params_format.exit.sw.bb45_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb44:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb45:                                          ; preds = %params_format.exit.sw.bb45_crit_edge, %for.inc.i.i.sw.bb45_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %sw.bb44, %sw.bb, %params_format.exit.sw.epilog_crit_edge
  %val_len.0 = phi i32 [ 3, %sw.bb45 ], [ 2, %sw.bb44 ], [ 1, %sw.bb ], [ 0, %params_format.exit.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 8208, i32 noundef 3, i32 noundef %val_len.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %add = add nuw i32 %call4, 1
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 8452, i32 noundef 15, i32 noundef %add, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %shl51 = shl i32 %call4, 8
  %shl52 = shl i32 %call4, 4
  %or = or i32 %shl51, %shl52
  %call.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 8456, i32 noundef 1904, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %params_format.exit.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %sw.epilog ], [ -22, %params_format.exit.cleanup_crit_edge ]
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
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !307
  %regmap = getelementptr inbounds %struct.rt5514_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12276, ptr noundef nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !198, !200, !201, !202, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !276, !277, !278, !279, !281, !282, !283, !285, !286, !288, !289, !291, !293}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @__initcall__kmod_snd_soc_rt5514__299_1336_rt5514_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_rt5514__299_1336_rt5514_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5514.c", i32 1336, i32 1}
!2 = !{ptr @__exitcall_rt5514_i2c_driver_exit, !1, !"__exitcall_rt5514_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description300, !4, !"__UNIQUE_ID_description300", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5514.c", i32 1338, i32 1}
!5 = !{ptr @__UNIQUE_ID_author301, !6, !"__UNIQUE_ID_author301", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5514.c", i32 1339, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5514.c", i32 1340, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5514.c", i32 1328, i32 11}
!12 = !{ptr @rt5514_i2c_driver, !13, !"rt5514_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5514.c", i32 1326, i32 26}
!14 = !{ptr @rt5514_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5514.c", i32 1275, i32 23}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt5514.c", i32 1278, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt5514_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt5514_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @rt5514_i2c_probe._key.7, !26, !"_key", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt5514.c", i32 1283, i32 19}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rt5514_i2c_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/rt5514.c", i32 1286, i32 3}
!30 = !{ptr @rt5514_i2c_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt5514.c", i32 1301, i32 3}
!33 = !{ptr @rt5514_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rt5514_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/rt5514.c", i32 1309, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rt5514_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rt5514_i2c_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt5514.c", i32 1315, i32 3}
!42 = !{ptr @rt5514_i2c_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rt5514_i2c_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt5514.c", i32 1230, i32 32}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt5514.c", i32 1232, i32 35}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt5514.c", i32 1234, i32 32}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt5514.c", i32 1180, i32 10}
!52 = !{ptr @rt5514_i2c_regmap, !53, !"rt5514_i2c_regmap", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt5514.c", i32 1179, i32 35}
!54 = !{ptr @rt5514_regmap, !55, !"rt5514_regmap", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt5514.c", i32 1189, i32 35}
!56 = !{ptr @rt5514_reg, !57, !"rt5514_reg", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt5514.c", i32 68, i32 33}
!58 = !{ptr @rt5514_i2c_patch, !59, !"rt5514_i2c_patch", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5514.c", i32 35, i32 34}
!60 = !{ptr @rt5514_patch, !61, !"rt5514_patch", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt5514.c", i32 57, i32 34}
!62 = !{ptr @soc_component_dev_rt5514, !63, !"soc_component_dev_rt5514", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt5514.c", i32 1165, i32 46}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/rt5514.c", i32 426, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt5514.c", i32 428, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt5514.c", i32 431, i32 2}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/rt5514.c", i32 434, i32 2}
!72 = !{ptr @rt5514_snd_controls, !73, !"rt5514_snd_controls", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/rt5514.c", i32 425, i32 38}
!74 = !{ptr @bst_tlv, !75, !"bst_tlv", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/rt5514.c", i32 275, i32 14}
!76 = !{ptr @adc_vol_tlv, !77, !"adc_vol_tlv", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/rt5514.c", i32 285, i32 14}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/rt5514.c", i32 344, i32 6}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rt5514_dsp_voice_wake_up_put._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @rt5514_dsp_voice_wake_up_put._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/rt5514.c", i32 348, i32 6}
!85 = !{ptr @rt5514_dsp_voice_wake_up_put._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rt5514_dsp_voice_wake_up_put._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt5514.c", i32 371, i32 26}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt5514.c", i32 384, i32 26}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt5514.c", i32 559, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/rt5514.c", i32 560, i32 2}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt5514.c", i32 561, i32 2}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/rt5514.c", i32 562, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/rt5514.c", i32 564, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/rt5514.c", i32 565, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/rt5514.c", i32 567, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/rt5514.c", i32 568, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/rt5514.c", i32 570, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/rt5514.c", i32 573, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/rt5514.c", i32 576, i32 2}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/rt5514.c", i32 578, i32 2}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/rt5514.c", i32 580, i32 2}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/rt5514.c", i32 582, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/rt5514.c", i32 584, i32 2}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/rt5514.c", i32 586, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/rt5514.c", i32 588, i32 2}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/rt5514.c", i32 590, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/rt5514.c", i32 592, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/rt5514.c", i32 594, i32 2}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/rt5514.c", i32 597, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/rt5514.c", i32 599, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/rt5514.c", i32 601, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/rt5514.c", i32 603, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/rt5514.c", i32 605, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/rt5514.c", i32 607, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/rt5514.c", i32 609, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/rt5514.c", i32 611, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/rt5514.c", i32 613, i32 2}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/rt5514.c", i32 615, i32 2}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/rt5514.c", i32 617, i32 2}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/rt5514.c", i32 619, i32 2}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/rt5514.c", i32 621, i32 2}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/rt5514.c", i32 623, i32 2}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/rt5514.c", i32 625, i32 2}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/rt5514.c", i32 627, i32 2}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/rt5514.c", i32 629, i32 2}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/rt5514.c", i32 633, i32 2}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/rt5514.c", i32 635, i32 2}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/rt5514.c", i32 639, i32 2}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/rt5514.c", i32 641, i32 2}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/rt5514.c", i32 644, i32 2}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/rt5514.c", i32 646, i32 2}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/rt5514.c", i32 648, i32 2}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/rt5514.c", i32 650, i32 2}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/rt5514.c", i32 653, i32 2}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/rt5514.c", i32 655, i32 2}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/rt5514.c", i32 657, i32 2}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/rt5514.c", i32 659, i32 2}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/rt5514.c", i32 663, i32 2}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/rt5514.c", i32 664, i32 2}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/rt5514.c", i32 667, i32 2}
!195 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rt5514_dapm_widgets, !197, !"rt5514_dapm_widgets", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt5514.c", i32 557, i32 41}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt5514.c", i32 524, i32 3}
!200 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @rt5514_set_dmic_clk._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @rt5514_set_dmic_clk._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = distinct !{null, !204, !"div", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/rt5514.c", i32 497, i32 19}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/rt5514.c", i32 501, i32 3}
!207 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @rt5514_calc_dmic_clk._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @rt5514_calc_dmic_clk._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt5514.c", i32 511, i32 2}
!212 = !{ptr @rt5514_calc_dmic_clk._entry.97, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @rt5514_calc_dmic_clk._entry_ptr.99, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/rt5514.c", i32 477, i32 2}
!216 = !{ptr @rt5514_sto1_dmic_mux, !217, !"rt5514_sto1_dmic_mux", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/rt5514.c", i32 476, i32 38}
!218 = !{ptr @rt5514_stereo1_dmic_enum, !219, !"rt5514_stereo1_dmic_enum", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/rt5514.c", i32 472, i32 8}
!220 = !{ptr @rt5514_dmic_src, !221, !"rt5514_dmic_src", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/rt5514.c", i32 468, i32 27}
!222 = !{ptr @.str.101, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/rt5514.c", i32 484, i32 2}
!224 = !{ptr @rt5514_sto2_dmic_mux, !225, !"rt5514_sto2_dmic_mux", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/rt5514.c", i32 483, i32 38}
!226 = !{ptr @rt5514_stereo2_dmic_enum, !227, !"rt5514_stereo2_dmic_enum", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/rt5514.c", i32 479, i32 8}
!228 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/rt5514.c", i32 440, i32 2}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/rt5514.c", i32 442, i32 2}
!232 = !{ptr @rt5514_sto1_adc_l_mix, !233, !"rt5514_sto1_adc_l_mix", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/rt5514.c", i32 439, i32 38}
!234 = !{ptr @rt5514_sto1_adc_r_mix, !235, !"rt5514_sto1_adc_r_mix", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/rt5514.c", i32 446, i32 38}
!236 = !{ptr @rt5514_sto2_adc_l_mix, !237, !"rt5514_sto2_adc_l_mix", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/rt5514.c", i32 453, i32 38}
!238 = !{ptr @rt5514_sto2_adc_r_mix, !239, !"rt5514_sto2_adc_r_mix", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/rt5514.c", i32 460, i32 38}
!240 = !{ptr @rt5514_dapm_routes, !241, !"rt5514_dapm_routes", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/rt5514.c", i32 670, i32 40}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/rt5514.c", i32 1101, i32 46}
!244 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/rt5514.c", i32 1152, i32 11}
!246 = !{ptr @rt5514_dai, !247, !"rt5514_dai", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/rt5514.c", i32 1150, i32 34}
!248 = !{ptr @rt5514_aif_dai_ops, !249, !"rt5514_aif_dai_ops", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/rt5514.c", i32 1142, i32 37}
!250 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/rt5514.c", i32 882, i32 3}
!252 = !{ptr @.str.115, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @rt5514_set_dai_sysclk._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @rt5514_set_dai_sysclk._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.116, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/rt5514.c", i32 892, i32 2}
!257 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @rt5514_set_dai_sysclk.__UNIQUE_ID_ddebug296, !256, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!259 = !{ptr @.str.118, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/rt5514.c", i32 906, i32 3}
!261 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @rt5514_set_dai_pll.__UNIQUE_ID_ddebug297, !260, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!263 = !{ptr @.str.120, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/rt5514.c", i32 933, i32 3}
!265 = !{ptr @rt5514_set_dai_pll._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @rt5514_set_dai_pll._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.122, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/rt5514.c", i32 939, i32 3}
!269 = !{ptr @rt5514_set_dai_pll._entry.121, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @rt5514_set_dai_pll._entry_ptr.123, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.124, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/rt5514.c", i32 943, i32 2}
!273 = !{ptr @rt5514_set_dai_pll.__UNIQUE_ID_ddebug298, !272, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!274 = !{ptr @.str.125, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/rt5514.c", i32 762, i32 3}
!276 = !{ptr @.str.126, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @rt5514_hw_params._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @rt5514_hw_params._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.128, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/rt5514.c", i32 768, i32 3}
!281 = !{ptr @rt5514_hw_params._entry.127, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @rt5514_hw_params._entry_ptr.129, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.130, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/rt5514.c", i32 775, i32 2}
!285 = !{ptr @rt5514_hw_params.__UNIQUE_ID_ddebug294, !284, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/rt5514.c", i32 777, i32 2}
!288 = !{ptr @rt5514_hw_params.__UNIQUE_ID_ddebug295, !287, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!289 = !{ptr @rt5514_of_match, !290, !"rt5514_of_match", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/rt5514.c", i32 1213, i32 34}
!291 = !{ptr @rt5514_i2_pm_ops, !292, !"rt5514_i2_pm_ops", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/rt5514.c", i32 1322, i32 32}
!293 = !{ptr @rt5514_i2c_id, !294, !"rt5514_i2c_id", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/rt5514.c", i32 1206, i32 35}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{i64 2148985393, i64 2148985398, i64 2148985411, i64 2148985455, i64 2148985489, i64 2148985510}
!305 = !{i8 0, i8 2}
!306 = !{i32 0, i32 33}
!307 = !{!"auto-init"}
