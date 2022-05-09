; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/da7218.c_pt.bc'
source_filename = "../sound/soc/codecs/da7218.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+da7218_hpldet\22, \22a\22\09"
module asm "\09.weak\09__crc_da7218_hpldet\09\09\09\09"
module asm "\09.long\09__crc_da7218_hpldet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da7218_hpldet:\09\09\09\09\09"
module asm "\09.asciz \09\22da7218_hpldet\22\09\09\09\09\09"
module asm "__kstrtabns_da7218_hpldet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
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
%struct.da7218_priv = type { ptr, [3 x %struct.regulator_bulk_data], ptr, i32, ptr, i32, ptr, i32, i8, i8, i8, i8, i8, [50 x i8], [30 x i8] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.da7218_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.da7218_hpldet_pdata = type { i32, i32, i32, i8, i8, i8 }
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

@__kstrtab_da7218_hpldet = external dso_local constant [0 x i8], align 1
@__kstrtabns_da7218_hpldet = external dso_local constant [0 x i8], align 1
@__ksymtab_da7218_hpldet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da7218_hpldet to i32), ptr @__kstrtab_da7218_hpldet, ptr @__kstrtabns_da7218_hpldet }, section "___ksymtab_gpl+da7218_hpldet", align 4
@__initcall__kmod_snd_soc_da7218__294_3318_da7218_i2c_driver_init6 = internal global ptr @da7218_i2c_driver_init, section ".initcall6.init", align 4
@da7218_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da7218_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da7218_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da7218_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da7218_i2c_driver_exit = internal global ptr @da7218_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [52 x i8] c"snd_soc_da7218.description=ASoC DA7218 Codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [73 x i8] c"snd_soc_da7218.author=Adam Thomson <Adam.Thomson.Opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"snd_soc_da7218.file=sound/soc/codecs/snd-soc-da7218\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"snd_soc_da7218.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da7218\00", [25 x i8] zeroinitializer }, align 32
@da7218_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da7217\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da7218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@da7218_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da7217\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"da7218\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@da7218_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid device Id\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7218_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/da7218.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da7218_i2c_probe._entry_ptr = internal global ptr @da7218_i2c_probe._entry, section ".printk_index", align 4
@da7218_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da7218_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @da7218_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 253, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7218_reg_defaults, i32 166, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"da7218:3286:(&da7218_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@da7218_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 3289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@da7218_i2c_probe._entry_ptr.9 = internal global ptr @da7218_i2c_probe._entry.7, section ".printk_index", align 4
@soc_component_dev_da7218 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @da7218_snd_controls, i32 152, ptr @da7218_dapm_widgets, i32 51, ptr @da7218_audio_map, i32 102, ptr @da7218_probe, ptr @da7218_remove, ptr @da7218_suspend, ptr @da7218_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7218_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@da7218_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.586, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @da7218_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.446, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.448, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 4, i32 0 }, i8 -32, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@da7218_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 3297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register da7218 component: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@da7218_i2c_probe._entry_ptr.12 = internal global ptr @da7218_i2c_probe._entry.10, section ".printk_index", align 4
@da7218_reg_defaults = internal global { [166 x %struct.reg_default], [336 x i8] } { [166 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 11, i32 170 }, %struct.reg_default { i32 12, i32 2 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 16, i32 1 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 32, i32 64 }, %struct.reg_default { i32 33, i32 64 }, %struct.reg_default { i32 36, i32 128 }, %struct.reg_default { i32 37, i32 119 }, %struct.reg_default { i32 38, i32 119 }, %struct.reg_default { i32 39, i32 7 }, %struct.reg_default { i32 40, i32 64 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 44, i32 72 }, %struct.reg_default { i32 45, i32 3 }, %struct.reg_default { i32 46, i32 72 }, %struct.reg_default { i32 47, i32 3 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 63 }, %struct.reg_default { i32 52, i32 63 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 255 }, %struct.reg_default { i32 55, i32 113 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 9 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 127 }, %struct.reg_default { i32 84, i32 36 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 80 }, %struct.reg_default { i32 87, i32 163 }, %struct.reg_default { i32 88, i32 49 }, %struct.reg_default { i32 89, i32 17 }, %struct.reg_default { i32 90, i32 1 }, %struct.reg_default { i32 91, i32 116 }, %struct.reg_default { i32 92, i32 1 }, %struct.reg_default { i32 93, i32 28 }, %struct.reg_default { i32 94, i32 28 }, %struct.reg_default { i32 95, i32 28 }, %struct.reg_default { i32 96, i32 28 }, %struct.reg_default { i32 97, i32 28 }, %struct.reg_default { i32 98, i32 28 }, %struct.reg_default { i32 99, i32 28 }, %struct.reg_default { i32 100, i32 4 }, %struct.reg_default { i32 101, i32 28 }, %struct.reg_default { i32 102, i32 28 }, %struct.reg_default { i32 103, i32 28 }, %struct.reg_default { i32 104, i32 28 }, %struct.reg_default { i32 105, i32 28 }, %struct.reg_default { i32 106, i32 28 }, %struct.reg_default { i32 107, i32 28 }, %struct.reg_default { i32 108, i32 1 }, %struct.reg_default { i32 109, i32 28 }, %struct.reg_default { i32 110, i32 28 }, %struct.reg_default { i32 111, i32 28 }, %struct.reg_default { i32 112, i32 28 }, %struct.reg_default { i32 113, i32 28 }, %struct.reg_default { i32 114, i32 28 }, %struct.reg_default { i32 115, i32 28 }, %struct.reg_default { i32 116, i32 4 }, %struct.reg_default { i32 117, i32 28 }, %struct.reg_default { i32 118, i32 28 }, %struct.reg_default { i32 119, i32 28 }, %struct.reg_default { i32 120, i32 28 }, %struct.reg_default { i32 121, i32 28 }, %struct.reg_default { i32 122, i32 28 }, %struct.reg_default { i32 123, i32 28 }, %struct.reg_default { i32 124, i32 4 }, %struct.reg_default { i32 125, i32 28 }, %struct.reg_default { i32 126, i32 28 }, %struct.reg_default { i32 127, i32 28 }, %struct.reg_default { i32 128, i32 28 }, %struct.reg_default { i32 129, i32 28 }, %struct.reg_default { i32 130, i32 28 }, %struct.reg_default { i32 131, i32 28 }, %struct.reg_default { i32 132, i32 8 }, %struct.reg_default { i32 133, i32 28 }, %struct.reg_default { i32 134, i32 28 }, %struct.reg_default { i32 135, i32 28 }, %struct.reg_default { i32 136, i32 28 }, %struct.reg_default { i32 137, i32 28 }, %struct.reg_default { i32 138, i32 28 }, %struct.reg_default { i32 139, i32 28 }, %struct.reg_default { i32 140, i32 40 }, %struct.reg_default { i32 141, i32 64 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 1 }, %struct.reg_default { i32 145, i32 4 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 32 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 85 }, %struct.reg_default { i32 163, i32 21 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 165, i32 64 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 2 }, %struct.reg_default { i32 168, i32 1 }, %struct.reg_default { i32 172, i32 96 }, %struct.reg_default { i32 173, i32 17 }, %struct.reg_default { i32 174, i32 14 }, %struct.reg_default { i32 180, i32 64 }, %struct.reg_default { i32 181, i32 1 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 184, i32 64 }, %struct.reg_default { i32 185, i32 1 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 128 }, %struct.reg_default { i32 189, i32 128 }, %struct.reg_default { i32 192, i32 7 }, %struct.reg_default { i32 193, i32 7 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 205, i32 3 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 3 }, %struct.reg_default { i32 208, i32 64 }, %struct.reg_default { i32 209, i32 59 }, %struct.reg_default { i32 210, i32 64 }, %struct.reg_default { i32 211, i32 59 }, %struct.reg_default { i32 213, i32 0 }, %struct.reg_default { i32 215, i32 195 }, %struct.reg_default { i32 216, i32 11 }, %struct.reg_default { i32 217, i32 0 }, %struct.reg_default { i32 220, i32 8 }, %struct.reg_default { i32 224, i32 0 }, %struct.reg_default { i32 225, i32 0 }, %struct.reg_default { i32 228, i32 64 }, %struct.reg_default { i32 229, i32 0 }, %struct.reg_default { i32 230, i32 28 }, %struct.reg_default { i32 232, i32 1 }, %struct.reg_default { i32 233, i32 2 }, %struct.reg_default { i32 234, i32 0 }, %struct.reg_default { i32 235, i32 0 }, %struct.reg_default { i32 238, i32 0 }, %struct.reg_default { i32 240, i32 0 }, %struct.reg_default { i32 241, i32 0 }, %struct.reg_default { i32 244, i32 111 }, %struct.reg_default { i32 245, i32 111 }, %struct.reg_default { i32 246, i32 111 }, %struct.reg_default { i32 247, i32 111 }, %struct.reg_default { i32 248, i32 111 }, %struct.reg_default { i32 249, i32 111 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 253, i32 0 }], [336 x i8] zeroinitializer }, align 32
@da7218_snd_controls = internal constant { [152 x %struct.snd_kcontrol_new], [1824 x i8] } { [152 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7218_mixin_gain_put, %union.anon.94 { ptr @da7218_mixin_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7218_mixin_gain_put, %union.anon.94 { ptr @da7218_mixin_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_in_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_in_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_in_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_in_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_ags_trigger_tlv }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_ags_att_max_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_alc_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_alc_release_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_alc_hold_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @da7218_alc_ana_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @da7218_alc_ana_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_alc_anticlip_step to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7218_alc_sw_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7218_alc_sw_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_integ_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_integ_release_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_in1_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_in1_audio_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_in1_voice_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_in2_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_in2_audio_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_in2_voice_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7218_mic_lvl_det_sw_get, ptr @da7218_mic_lvl_det_sw_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7218_mic_lvl_det_sw_get, ptr @da7218_mic_lvl_det_sw_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info_ext, ptr @da7218_biquad_coeff_get, ptr @da7218_biquad_coeff_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dmix_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_tonegen_dtmf_key to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_tonegen_swg_sel to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7218_tonegen_freq_get, ptr @da7218_tonegen_freq_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7218_tonegen_freq_get, ptr @da7218_tonegen_freq_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_gain_ramp_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dgs_trigger_tlv }, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_dgs_rise_coeff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_dgs_fall_coeff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.225, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.226 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.227, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dgs_anticlip_tlv }, i32 ptrtoint (ptr @.compoundliteral.228 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.229, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dgs_signal_tlv }, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.232 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.233, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.234 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.235, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.236 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_out1_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_out1_audio_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_out1_voice_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_out_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.244, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_out_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.246, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_out_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_out_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_out_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.254, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info_ext, ptr @da7218_biquad_coeff_get, ptr @da7218_biquad_coeff_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @da7218_out_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @da7218_mixout_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_dac_ng_setup_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_dac_ng_rampup_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_dac_ng_rampdown_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.271, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dac_ng_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7218_dac_ng_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_cp_mchange to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.278, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_cp_fcontrol to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.279, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_cp_tau_delay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.282, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @da7218_hp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.286, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }], [1824 x i8] zeroinitializer }, align 32
@da7218_audio_map = internal constant { [102 x %struct.snd_soc_dapm_route], [1320 x i8] } { [102 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.418, ptr null, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.419, ptr null, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.420, ptr null, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.420, ptr null, ptr @.str.414, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.421, ptr null, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.421, ptr null, ptr @.str.415, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.422, ptr null, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.422, ptr null, ptr @.str.416, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.423, ptr null, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.423, ptr null, ptr @.str.417, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.426, ptr null, ptr @.str.418, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.427, ptr null, ptr @.str.419, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.428, ptr null, ptr @.str.424, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.429, ptr null, ptr @.str.425, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.428, ptr null, ptr @.str.426, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.429, ptr null, ptr @.str.427, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.430, ptr @.str.466, ptr @.str.428, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.430, ptr @.str.467, ptr @.str.420, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.430, ptr @.str.467, ptr @.str.421, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.431, ptr @.str.466, ptr @.str.429, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.431, ptr @.str.467, ptr @.str.422, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.431, ptr @.str.467, ptr @.str.423, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.432, ptr null, ptr @.str.430, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.433, ptr null, ptr @.str.430, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.434, ptr null, ptr @.str.431, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.435, ptr null, ptr @.str.431, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.437, ptr null, ptr @.str.436, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.432, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.433, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.434, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.435, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.439, ptr null, ptr @.str.438, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr @.str.44, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr @.str.50, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr @.str.56, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr @.str.62, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr @.str.472, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr @.str.474, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr @.str.476, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr @.str.44, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr @.str.50, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr @.str.56, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr @.str.62, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr @.str.472, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr @.str.474, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr @.str.476, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr @.str.44, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr @.str.50, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr @.str.56, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr @.str.62, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr @.str.472, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr @.str.474, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr @.str.476, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr @.str.44, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr @.str.50, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr @.str.56, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr @.str.62, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr @.str.472, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr @.str.474, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr @.str.476, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.445, ptr null, ptr @.str.440, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.445, ptr null, ptr @.str.441, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.445, ptr null, ptr @.str.442, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.445, ptr null, ptr @.str.443, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.445, ptr null, ptr @.str.444, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.447, ptr null, ptr @.str.444, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.449, ptr @.str.44, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.449, ptr @.str.50, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.449, ptr @.str.56, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.449, ptr @.str.62, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.449, ptr @.str.472, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.449, ptr @.str.474, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.449, ptr @.str.476, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.450, ptr @.str.44, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.450, ptr @.str.50, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.450, ptr @.str.56, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.450, ptr @.str.62, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.450, ptr @.str.472, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.450, ptr @.str.474, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.450, ptr @.str.476, ptr @.str.447, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.453, ptr null, ptr @.str.449, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.453, ptr null, ptr @.str.450, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.451, ptr @.str.518, ptr @.str.449, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.451, ptr @.str.519, ptr @.str.453, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.452, ptr @.str.518, ptr @.str.450, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.452, ptr @.str.519, ptr @.str.453, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.454, ptr @.str.520, ptr @.str.451, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.454, ptr @.str.522, ptr @.str.452, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.454, ptr @.str.202, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.455, ptr @.str.520, ptr @.str.451, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.455, ptr @.str.522, ptr @.str.452, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.455, ptr @.str.202, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.456, ptr null, ptr @.str.454, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.457, ptr null, ptr @.str.455, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr null, ptr @.str.456, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.459, ptr null, ptr @.str.457, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.460, ptr null, ptr @.str.458, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.461, ptr null, ptr @.str.459, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.463, ptr null, ptr @.str.460, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.464, ptr null, ptr @.str.461, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.463, ptr null, ptr @.str.462, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.464, ptr null, ptr @.str.462, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1320 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic1 Volume\00", [20 x i8] zeroinitializer }, align 32
@da7218_mic_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 181, i32 181, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 185, i32 185, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 184, i32 184, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mixin1 Volume\00", [18 x i8] zeroinitializer }, align 32
@da7218_mixin_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mixin1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mixin1 Gain Ramp Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mixin1 ZC Gain Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mixin2 Volume\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mixin2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mixin2 Gain Ramp Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mixin2 ZC Gain Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC1 AAF Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 192, i32 192, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC2 AAF Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 193, i32 193, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC LP Mode Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 194, i32 194, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter1L Volume\00", [45 x i8] zeroinitializer }, align 32
@da7218_in_dig_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8325, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 244, i32 244, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter1L Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"In Filter1L Gain Ramp Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter1R Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 245, i32 245, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter1R Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"In Filter1R Gain Ramp Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter2L Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 246, i32 246, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter2L Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"In Filter2L Gain Ramp Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter2R Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 247, i32 247, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"In Filter2R Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"In Filter2R Gain Ramp Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AGS Trigger\00", [20 x i8] zeroinitializer }, align 32
@da7218_ags_trigger_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9000, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 61, i32 61, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGS Max Attenuation\00", [44 x i8] zeroinitializer }, align 32
@da7218_ags_att_max_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 62, i32 62, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGS Anticlip Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGS Channel1 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGS Channel2 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ALC Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@da7218_alc_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 0, i8 0, i32 13, i32 15, ptr @da7218_alc_attack_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Release Rate\00", [47 x i8] zeroinitializer }, align 32
@da7218_alc_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 4, i8 4, i32 11, i32 15, ptr @da7218_alc_release_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC Hold Time\00", [18 x i8] zeroinitializer }, align 32
@da7218_alc_hold_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 50, i8 0, i8 0, i32 16, i32 15, ptr @da7218_alc_hold_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Noise Threshold\00", [44 x i8] zeroinitializer }, align 32
@da7218_alc_threshold_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 51, i32 51, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Min Threshold\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 52, i32 52, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Max Threshold\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 53, i32 53, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Max Attenuation\00", [44 x i8] zeroinitializer }, align 32
@da7218_alc_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ALC Max Gain\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 54, i32 54, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Min Analog Gain\00", [44 x i8] zeroinitializer }, align 32
@da7218_alc_ana_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1, i32 7, i32 7, i32 55, i32 55, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Max Analog Gain\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1, i32 7, i32 7, i32 55, i32 55, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Anticlip Step\00", [46 x i8] zeroinitializer }, align 32
@da7218_alc_anticlip_step = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 0, i8 0, i32 4, i32 3, ptr @da7218_alc_anticlip_step_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Anticlip Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Channel1 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Channel2 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Envelope Tracking Attack Rate\00", [34 x i8] zeroinitializer }, align 32
@da7218_integ_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 76, i8 0, i8 0, i32 4, i32 3, ptr @da7218_integ_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Envelope Tracking Release Rate\00", [33 x i8] zeroinitializer }, align 32
@da7218_integ_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 76, i8 4, i8 4, i32 4, i32 3, ptr @da7218_integ_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"In Filter1 HPF Mode\00", [44 x i8] zeroinitializer }, align 32
@da7218_in1_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 188, i8 0, i8 0, i32 3, i32 136, ptr @da7218_hpf_mode_txt, ptr @da7218_hpf_mode_val, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"In Filter1 HPF Corner Audio\00", [36 x i8] zeroinitializer }, align 32
@da7218_in1_audio_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 188, i8 4, i8 4, i32 4, i32 3, ptr @da7218_audio_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"In Filter1 HPF Corner Voice\00", [36 x i8] zeroinitializer }, align 32
@da7218_in1_voice_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 188, i8 0, i8 0, i32 8, i32 7, ptr @da7218_voice_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"In Filter2 HPF Mode\00", [44 x i8] zeroinitializer }, align 32
@da7218_in2_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 189, i8 0, i8 0, i32 3, i32 136, ptr @da7218_hpf_mode_txt, ptr @da7218_hpf_mode_val, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"In Filter2 HPF Corner Audio\00", [36 x i8] zeroinitializer }, align 32
@da7218_in2_audio_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 189, i8 4, i8 4, i32 4, i32 3, ptr @da7218_audio_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"In Filter2 HPF Corner Voice\00", [36 x i8] zeroinitializer }, align 32
@da7218_in2_voice_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 189, i8 0, i8 0, i32 8, i32 7, ptr @da7218_voice_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mic Level Detect Channel1 Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mic Level Detect Channel2 Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mic Level Detect Level\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 81, i32 81, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1L Out1 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@da7218_dmix_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4200, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 93, i32 93, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1L Out1 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 101, i32 101, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1L Out2 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 125, i32 125, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1L Out2 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 133, i32 133, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1R Out1 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 94, i32 94, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1R Out1 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 102, i32 102, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1R Out2 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 126, i32 126, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter1R Out2 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 134, i32 134, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2L Out1 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 95, i32 95, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2L Out1 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 103, i32 103, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2L Out2 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 127, i32 127, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2L Out2 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 135, i32 135, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2R Out1 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 96, i32 96, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2R Out1 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 104, i32 104, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2R Out2 DAIL Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 128, i32 128, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMix In Filter2R Out2 DAIR Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 136, i32 136, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix ToneGen Out1 DAIL Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 97, i32 97, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix ToneGen Out1 DAIR Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 105, i32 105, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix ToneGen Out2 DAIL Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 129, i32 129, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix ToneGen Out2 DAIR Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 137, i32 137, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIL Out1 DAIL Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 98, i32 98, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIL Out1 DAIR Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 106, i32 106, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIL Out2 DAIL Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 130, i32 130, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIL Out2 DAIR Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 138, i32 138, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIR Out1 DAIL Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 99, i32 99, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIR Out1 DAIR Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 107, i32 107, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIR Out2 DAIL Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 131, i32 131, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMix In DAIR Out2 DAIR Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 139, i32 139, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter1L Out FilterL Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 109, i32 109, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter1L Out FilterR Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 117, i32 117, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter1R Out FilterL Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 110, i32 110, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter1R Out FilterR Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 118, i32 118, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter2L Out FilterL Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 111, i32 111, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter2L Out FilterR Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 119, i32 119, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter2R Out FilterL Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 112, i32 112, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMix In Filter2R Out FilterR Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 120, i32 120, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMix ToneGen Out FilterL Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 113, i32 113, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMix ToneGen Out FilterR Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 121, i32 121, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMix In DAIL Out FilterL Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 114, i32 114, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMix In DAIL Out FilterR Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 122, i32 122, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMix In DAIR Out FilterL Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 115, i32 115, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMix In DAIR Out FilterR Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 123, i32 123, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sidetone BiQuad Coefficients\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 30, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 230, i32 230, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 228, i32 228, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ToneGen DTMF Key\00", [47 x i8] zeroinitializer }, align 32
@da7218_tonegen_dtmf_key = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 160, i8 0, i8 0, i32 16, i32 15, ptr @da7218_tonegen_dtmf_key_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ToneGen DTMF Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 160, i32 160, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ToneGen Sinewave Gen Type\00", [38 x i8] zeroinitializer }, align 32
@da7218_tonegen_swg_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 161, i8 0, i8 0, i32 4, i32 3, ptr @da7218_tonegen_swg_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ToneGen Sinewave1 Freq\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 162, i32 162, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ToneGen Sinewave2 Freq\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 164, i32 164, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ToneGen On Time\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 167, i32 167, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ToneGen Off Time\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 168, i32 168, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gain Ramp Rate\00", [17 x i8] zeroinitializer }, align 32
@da7218_gain_ramp_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 4, i32 3, ptr @da7218_gain_ramp_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DGS Trigger\00", [20 x i8] zeroinitializer }, align 32
@da7218_dgs_trigger_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 84, i32 84, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DGS Rise Coefficient\00", [43 x i8] zeroinitializer }, align 32
@da7218_dgs_rise_coeff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 86, i8 0, i8 0, i32 7, i32 7, ptr @da7218_dgs_rise_coeff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DGS Fall Coefficient\00", [43 x i8] zeroinitializer }, align 32
@da7218_dgs_fall_coeff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 86, i8 4, i8 4, i32 8, i32 7, ptr @da7218_dgs_fall_coeff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DGS Sync Delay\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 87, i32 87, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DGS Fast SR Sync Delay\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 88, i32 88, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DGS Voice Filter Sync Delay\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 89, i32 89, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DGS Anticlip Level\00", [45 x i8] zeroinitializer }, align 32
@da7218_dgs_anticlip_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 90, i32 90, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DGS Signal Level\00", [47 x i8] zeroinitializer }, align 32
@da7218_dgs_signal_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9000, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 90, i32 90, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DGS Gain Subrange Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.232 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DGS Gain Ramp Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DGS Gain Steps\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 91, i32 91, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DGS Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 85, i32 85, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out Filter HPF Mode\00", [44 x i8] zeroinitializer }, align 32
@da7218_out1_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 0, i8 0, i32 3, i32 136, ptr @da7218_hpf_mode_txt, ptr @da7218_hpf_mode_val, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Out Filter HPF Corner Audio\00", [36 x i8] zeroinitializer }, align 32
@da7218_out1_audio_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 4, i8 4, i32 4, i32 3, ptr @da7218_audio_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Out Filter HPF Corner Voice\00", [36 x i8] zeroinitializer }, align 32
@da7218_out1_voice_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 0, i8 0, i32 8, i32 7, ptr @da7218_voice_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out EQ Band1 Volume\00", [44 x i8] zeroinitializer }, align 32
@da7218_out_eq_band_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1050, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out EQ Band2 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 37, i32 37, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out EQ Band3 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out EQ Band4 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out EQ Band5 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 39, i32 39, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out EQ Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BiQuad Coefficients\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 50, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BiQuad Filter Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Out Filter Volume\00", [46 x i8] zeroinitializer }, align 32
@da7218_out_dig_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8325, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 151, i32 151, i32 248, i32 249, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Out Filter Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 33, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Out Filter Gain Subrange Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 33, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Out Filter Gain Ramp Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 33, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mixout Volume\00", [18 x i8] zeroinitializer }, align 32
@da7218_mixout_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -100, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1, i32 3, i32 3, i32 205, i32 207, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC NG Setup Time\00", [46 x i8] zeroinitializer }, align 32
@da7218_dac_ng_setup_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 157, i8 0, i8 0, i32 4, i32 3, ptr @da7218_dac_ng_setup_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC NG Rampup Rate\00", [45 x i8] zeroinitializer }, align 32
@da7218_dac_ng_rampup_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 157, i8 2, i8 2, i32 2, i32 1, ptr @da7218_dac_ng_rampup_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG Rampdown Rate\00", [43 x i8] zeroinitializer }, align 32
@da7218_dac_ng_rampdown_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 157, i8 3, i8 3, i32 2, i32 1, ptr @da7218_dac_ng_rampdown_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG Off Threshold\00", [43 x i8] zeroinitializer }, align 32
@da7218_dac_ng_threshold_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 158, i32 158, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC NG On Threshold\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 159, i32 159, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC NG Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 156, i32 156, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Charge Pump Track Mode\00", [41 x i8] zeroinitializer }, align 32
@da7218_cp_mchange = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 172, i8 4, i8 4, i32 3, i32 3, ptr @da7218_cp_mchange_txt, ptr @da7218_cp_mchange_val, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Charge Pump Frequency\00", [42 x i8] zeroinitializer }, align 32
@da7218_cp_fcontrol = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 173, i8 0, i8 0, i32 6, i32 7, ptr @da7218_cp_fcontrol_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Charge Pump Decay Rate\00", [41 x i8] zeroinitializer }, align 32
@da7218_cp_tau_delay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 173, i8 3, i8 3, i32 8, i32 7, ptr @da7218_cp_tau_delay_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Charge Pump Threshold\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 174, i32 174, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@da7218_hp_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 21, i32 63, i32 63, i32 209, i32 211, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.285 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 208, i32 210, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone Gain Ramp Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 208, i32 210, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headphone ZC Gain Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 208, i32 210, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7218_alc_calib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.291, ptr @.str.3, i32 387, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ALC auto calibration failed - %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7218_alc_calib\00", [47 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da7218_alc_calib._entry_ptr = internal global ptr @da7218_alc_calib._entry, section ".printk_index", align 4
@.str.293 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overflow\00", [23 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@da7218_alc_attack_rate_txt = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307], [44 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.33/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.66/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"29.32/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"58.64/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"117.3/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"234.6/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"469.1/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"938.2/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1876/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3753/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7506/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15012/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"30024/fs\00", [23 x i8] zeroinitializer }, align 32
@da7218_alc_release_rate_txt = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318], [52 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"28.66/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"57.33/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"114.6/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"229.3/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"458.6/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"917.1/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1834/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3668/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7337/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14674/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"29348/fs\00", [23 x i8] zeroinitializer }, align 32
@da7218_alc_hold_time_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334], [32 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"62/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"124/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"248/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"496/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"992/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1984/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3968/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7936/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15872/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"31744/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"63488/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"126976/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"253952/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"507904/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1015808/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2031616/fs\00", [21 x i8] zeroinitializer }, align 32
@da7218_alc_anticlip_step_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338], [16 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.034dB/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.068dB/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.136dB/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.272dB/fs\00", [21 x i8] zeroinitializer }, align 32
@da7218_integ_rate_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342], [16 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/16\00", [27 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1/256\00", [26 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1/65536\00", [24 x i8] zeroinitializer }, align 32
@da7218_hpf_mode_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.343, ptr @.str.344, ptr @.str.345], [20 x i8] zeroinitializer }, align 32
@da7218_hpf_mode_val = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 128, i32 136], [20 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@da7218_audio_hpf_corner_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349], [16 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16Hz\00", [27 x i8] zeroinitializer }, align 32
@da7218_voice_hpf_corner_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357], [32 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.5Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@da7218_tonegen_dtmf_key_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373], [32 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"#\00", [30 x i8] zeroinitializer }, align 32
@da7218_tonegen_swg_sel_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377], [16 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Sum\00", [28 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWG1\00", [27 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWG2\00", [27 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWG1_1-Cos\00", [21 x i8] zeroinitializer }, align 32
@da7218_gain_ramp_rate_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381], [16 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Nominal Rate * 8\00", [47 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Nominal Rate\00", [19 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Nominal Rate / 8\00", [47 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Nominal Rate / 16\00", [46 x i8] zeroinitializer }, align 32
@da7218_dgs_rise_coeff_txt = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.382, ptr @.str.340, ptr @.str.383, ptr @.str.341, ptr @.str.384, ptr @.str.385, ptr @.str.386], [36 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/1\00", [28 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/64\00", [27 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1/1024\00", [25 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1/4096\00", [25 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1/16384\00", [24 x i8] zeroinitializer }, align 32
@da7218_dgs_fall_coeff_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.339, ptr @.str.340, ptr @.str.383, ptr @.str.341, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.342], [32 x i8] zeroinitializer }, align 32
@da7218_dac_ng_setup_time_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390], [16 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"256 Samples\00", [20 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"512 Samples\00", [20 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1024 Samples\00", [19 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2048 Samples\00", [19 x i8] zeroinitializer }, align 32
@da7218_dac_ng_rampup_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.391, ptr @.str.392], [24 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0.22ms/dB\00", [22 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0.0138ms/dB\00", [20 x i8] zeroinitializer }, align 32
@da7218_dac_ng_rampdown_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.393, ptr @.str.394], [24 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0.88ms/dB\00", [22 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"14.08ms/dB\00", [21 x i8] zeroinitializer }, align 32
@da7218_cp_mchange_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.395, ptr @.str.396, ptr @.str.397], [20 x i8] zeroinitializer }, align 32
@da7218_cp_mchange_val = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Largest Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Signal Magnitude\00", [47 x i8] zeroinitializer }, align 32
@da7218_cp_fcontrol_txt = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403], [40 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1MHz\00", [27 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"500KHz\00", [25 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"250KHz\00", [25 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"125KHz\00", [25 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"63KHz\00", [26 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0KHz\00", [27 x i8] zeroinitializer }, align 32
@da7218_cp_tau_delay_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411], [32 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0ms\00", [28 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2ms\00", [28 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4ms\00", [28 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16ms\00", [27 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"64ms\00", [27 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"128ms\00", [26 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"256ms\00", [26 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"512ms\00", [26 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic Bias1\00", [22 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic Bias2\00", [22 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMic1 Left\00", [21 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMic1 Right\00", [20 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMic2 Left\00", [21 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMic2 Right\00", [20 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1L\00", [25 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1R\00", [25 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2L\00", [25 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2R\00", [25 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mixin1 Supply\00", [18 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mixin2 Supply\00", [18 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic1 PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic2 PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mixin1 PGA\00", [21 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mixin2 PGA\00", [21 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic1 Mux\00", [23 x i8] zeroinitializer }, align 32
@da7218_mic1_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.430, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_mic1_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic2 Mux\00", [23 x i8] zeroinitializer }, align 32
@da7218_mic2_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.431, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_mic2_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"In Filter1L\00", [20 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"In Filter1R\00", [20 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"In Filter2L\00", [20 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"In Filter2R\00", [20 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TONE\00", [27 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tone Generator\00", [17 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sidetone Mux\00", [19 x i8] zeroinitializer }, align 32
@da7218_sidetone_in_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.438, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_sidetone_in_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Filter\00", [16 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mixer DAI1L\00", [20 x i8] zeroinitializer }, align 32
@da7218_out_dai1l_mix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.468 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.469 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.470 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.471 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.472, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.473 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.474, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.475 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.476, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.477 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mixer DAI1R\00", [20 x i8] zeroinitializer }, align 32
@da7218_out_dai1r_mix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.478 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.479 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.480 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.481 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.472, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.482 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.474, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.483 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.476, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.484 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mixer DAI2L\00", [20 x i8] zeroinitializer }, align 32
@da7218_out_dai2l_mix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.485 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.486 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.487 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.488 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.472, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.489 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.474, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.490 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.476, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.491 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mixer DAI2R\00", [20 x i8] zeroinitializer }, align 32
@da7218_out_dai2r_mix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.492 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.493 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.494 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.495 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.472, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.496 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.474, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.497 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.476, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.498 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAI\00", [28 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAIOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAIIN\00", [26 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mixer Out FilterL\00", [46 x i8] zeroinitializer }, align 32
@da7218_out_filtl_mix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.504 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.505 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.506 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.507 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.472, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.508 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.474, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.509 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.476, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.510 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mixer Out FilterR\00", [46 x i8] zeroinitializer }, align 32
@da7218_out_filtr_mix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.511 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.512 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.513 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.514 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.472, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.515 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.474, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.516 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.476, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.517 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Out FilterL BiQuad Mux\00", [41 x i8] zeroinitializer }, align 32
@da7218_out_filtl_biq_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.451, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_out_filtl_biq_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Out FilterR BiQuad Mux\00", [41 x i8] zeroinitializer }, align 32
@da7218_out_filtr_biq_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.452, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7218_out_filtr_biq_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BiQuad Filter\00", [18 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ST Mixer Out FilterL\00", [43 x i8] zeroinitializer }, align 32
@da7218_st_out_filtl_mix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.520, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.521 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.522, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.523 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.524 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ST Mixer Out FilterR\00", [43 x i8] zeroinitializer }, align 32
@da7218_st_out_filtr_mix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.520, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.525 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.522, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.526 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.527 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Out FilterL\00", [20 x i8] zeroinitializer }, align 32
@.str.457 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Out FilterR\00", [20 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mixout Left PGA\00", [16 x i8] zeroinitializer }, align 32
@.str.459 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mixout Right PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headphone Left PGA\00", [45 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone Right PGA\00", [44 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@da7218_dapm_widgets = internal constant { [51 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2276 x i8] } { [51 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.412, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 253, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.413, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 253, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.414, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 240, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.415, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 240, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.416, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 241, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.417, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 241, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.418, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.419, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.420, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.421, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.422, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.423, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.424, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 44, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.425, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 46, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.426, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 180, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.427, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 184, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.428, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 44, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.429, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 46, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.430, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7218_mic1_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.431, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7218_mic2_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.432, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7218_in_filter_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.433, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7218_in_filter_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.434, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7218_in_filter_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.435, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7218_in_filter_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.436, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.437, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 160, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.438, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7218_sidetone_in_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.439, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 228, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.440, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7218_out_dai1l_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.441, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7218_out_dai1r_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.442, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7218_out_dai2l_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.443, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7218_out_dai2r_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.444, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 140, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @da7218_dai_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.445, ptr @.str.446, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 141, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.447, ptr @.str.448, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.449, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7218_out_filtl_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.450, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7218_out_filtr_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.451, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7218_out_filtl_biq_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.452, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7218_out_filtr_biq_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.453, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.454, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @da7218_st_out_filtl_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.455, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @da7218_st_out_filtr_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.456, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 32, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.457, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 33, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.458, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 204, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.459, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 206, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.460, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 208, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7218_hp_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.461, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 210, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7218_hp_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.462, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @da7218_cp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.463, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.464, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2276 x i8] zeroinitializer }, align 32
@da7218_mic1_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @da7218_mic_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7218_mic_sel_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.466, ptr @.str.467], [24 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@da7218_mic2_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @da7218_mic_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7218_sidetone_in_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 229, i8 0, i8 0, i32 4, i32 3, ptr @da7218_sidetone_in_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7218_sidetone_in_sel_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.468 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.469 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.470 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.471 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ToneGen Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.473 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAIL Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.475 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAIR Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.477 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.478 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.479 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.480 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.481 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.482 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.483 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.484 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.485 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 124, i32 124, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.486 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 124, i32 124, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.487 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 124, i32 124, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.488 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 124, i32 124, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.489 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 124, i32 124, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.490 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 124, i32 124, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.491 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 124, i32 124, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.492 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 132, i32 132, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.493 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 132, i32 132, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.494 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 132, i32 132, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.495 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 132, i32 132, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.496 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 132, i32 132, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.497 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 132, i32 132, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.498 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 132, i32 132, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7218_dai_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.499, ptr @.str.500, ptr @.str.3, i32 1434, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.499 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Reference oscillator failed calibration\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7218_dai_event\00", [47 x i8] zeroinitializer }, align 32
@da7218_dai_event._entry_ptr = internal global ptr @da7218_dai_event._entry, section ".printk_index", align 4
@da7218_dai_event._entry.501 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.502, ptr @.str.500, ptr @.str.3, i32 1459, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SRM failed to lock\0A\00", [44 x i8] zeroinitializer }, align 32
@da7218_dai_event._entry_ptr.503 = internal global ptr @da7218_dai_event._entry.501, section ".printk_index", align 4
@.compoundliteral.504 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.505 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.506 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.507 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.508 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.509 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.510 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.511 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.512 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.513 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.514 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.515 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.516 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.517 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7218_out_filtl_biq_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 3, i8 3, i32 2, i32 1, ptr @da7218_out_filt_biq_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7218_out_filt_biq_sel_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.518, ptr @.str.519], [24 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.519 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@da7218_out_filtr_biq_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 3, i8 3, i32 2, i32 1, ptr @da7218_out_filt_biq_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.520 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Out FilterL Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.521 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 232, i32 232, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Out FilterR Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.523 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 232, i32 232, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.524 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 232, i32 232, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.525 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 233, i32 233, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.526 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 233, i32 233, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.527 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 233, i32 233, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.528 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@da7218_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.529, ptr @.str.530, ptr @.str.3, i32 2975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.529 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da7218_probe\00", [19 x i8] zeroinitializer }, align 32
@da7218_probe._entry_ptr = internal global ptr @da7218_probe._entry, section ".printk_index", align 4
@da7218_handle_supplies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.531, ptr @.str.532, ptr @.str.3, i32 2647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.531 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get supplies\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da7218_handle_supplies\00", [41 x i8] zeroinitializer }, align 32
@da7218_handle_supplies._entry_ptr = internal global ptr @da7218_handle_supplies._entry, section ".printk_index", align 4
@da7218_handle_supplies._entry.533 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.534, ptr @.str.532, ptr @.str.3, i32 2655, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.534 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid VDDIO voltage\0A\00", [41 x i8] zeroinitializer }, align 32
@da7218_handle_supplies._entry_ptr.535 = internal global ptr @da7218_handle_supplies._entry.533, section ".printk_index", align 4
@da7218_handle_supplies._entry.536 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.537, ptr @.str.532, ptr @.str.3, i32 2662, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.537 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable supplies\0A\00", [37 x i8] zeroinitializer }, align 32
@da7218_handle_supplies._entry_ptr.538 = internal global ptr @da7218_handle_supplies._entry.536, section ".printk_index", align 4
@.str.539 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDD\00", [28 x i8] zeroinitializer }, align 32
@.str.540 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.541 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDIO\00", [26 x i8] zeroinitializer }, align 32
@.str.542 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlg,micbias1-lvl-millivolt\00", [37 x i8] zeroinitializer }, align 32
@.str.543 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlg,micbias2-lvl-millivolt\00", [37 x i8] zeroinitializer }, align 32
@.str.544 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlg,mic1-amp-in-sel\00", [44 x i8] zeroinitializer }, align 32
@.str.545 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlg,mic2-amp-in-sel\00", [44 x i8] zeroinitializer }, align 32
@.str.546 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,dmic1-data-sel\00", [45 x i8] zeroinitializer }, align 32
@.str.547 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlg,dmic1-samplephase\00", [42 x i8] zeroinitializer }, align 32
@.str.548 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlg,dmic1-clkrate-hz\00", [43 x i8] zeroinitializer }, align 32
@.str.549 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,dmic2-data-sel\00", [45 x i8] zeroinitializer }, align 32
@.str.550 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlg,dmic2-samplephase\00", [42 x i8] zeroinitializer }, align 32
@.str.551 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlg,dmic2-clkrate-hz\00", [43 x i8] zeroinitializer }, align 32
@.str.552 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dlg,hp-diff-single-supply\00", [38 x i8] zeroinitializer }, align 32
@.str.553 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"da7218_hpldet\00", [18 x i8] zeroinitializer }, align 32
@.str.554 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,jack-rate-us\00", [47 x i8] zeroinitializer }, align 32
@.str.555 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,jack-debounce\00", [46 x i8] zeroinitializer }, align 32
@.str.556 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlg,jack-threshold-pct\00", [41 x i8] zeroinitializer }, align 32
@.str.557 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dlg,comp-inv\00", [19 x i8] zeroinitializer }, align 32
@.str.558 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dlg,hyst\00", [23 x i8] zeroinitializer }, align 32
@.str.559 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlg,discharge\00", [18 x i8] zeroinitializer }, align 32
@da7218_of_micbias_lvl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.560, ptr @.str.561, ptr @.str.3, i32 2321, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.560 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid micbias level\00", [42 x i8] zeroinitializer }, align 32
@.str.561 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7218_of_micbias_lvl\00", [42 x i8] zeroinitializer }, align 32
@da7218_of_micbias_lvl._entry_ptr = internal global ptr @da7218_of_micbias_lvl._entry, section ".printk_index", align 4
@.str.562 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"diff\00", [27 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"se_p\00", [27 x i8] zeroinitializer }, align 32
@.str.564 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"se_n\00", [27 x i8] zeroinitializer }, align 32
@da7218_of_mic_amp_in_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.565, ptr @.str.566, ptr @.str.3, i32 2336, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.565 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid mic input type selection\00", [63 x i8] zeroinitializer }, align 32
@.str.566 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da7218_of_mic_amp_in_sel\00", [39 x i8] zeroinitializer }, align 32
@da7218_of_mic_amp_in_sel._entry_ptr = internal global ptr @da7218_of_mic_amp_in_sel._entry, section ".printk_index", align 4
@.str.567 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lrise_rfall\00", [20 x i8] zeroinitializer }, align 32
@.str.568 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lfall_rrise\00", [20 x i8] zeroinitializer }, align 32
@da7218_of_dmic_data_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.569, ptr @.str.570, ptr @.str.3, i32 2349, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.569 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid DMIC data type selection\00", [63 x i8] zeroinitializer }, align 32
@.str.570 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7218_of_dmic_data_sel\00", [40 x i8] zeroinitializer }, align 32
@da7218_of_dmic_data_sel._entry_ptr = internal global ptr @da7218_of_dmic_data_sel._entry, section ".printk_index", align 4
@.str.571 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"on_clkedge\00", [21 x i8] zeroinitializer }, align 32
@.str.572 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"between_clkedge\00", [16 x i8] zeroinitializer }, align 32
@da7218_of_dmic_samplephase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.573, ptr @.str.574, ptr @.str.3, i32 2362, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.573 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid DMIC sample phase\00", [38 x i8] zeroinitializer }, align 32
@.str.574 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"da7218_of_dmic_samplephase\00", [37 x i8] zeroinitializer }, align 32
@da7218_of_dmic_samplephase._entry_ptr = internal global ptr @da7218_of_dmic_samplephase._entry, section ".printk_index", align 4
@da7218_of_dmic_clkrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.575, ptr @.str.576, ptr @.str.3, i32 2376, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.575 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid DMIC clock rate\00", [40 x i8] zeroinitializer }, align 32
@.str.576 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da7218_of_dmic_clkrate\00", [41 x i8] zeroinitializer }, align 32
@da7218_of_dmic_clkrate._entry_ptr = internal global ptr @da7218_of_dmic_clkrate._entry, section ".printk_index", align 4
@da7218_of_jack_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.577, ptr @.str.578, ptr @.str.3, i32 2402, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.577 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid jack detect rate\00", [39 x i8] zeroinitializer }, align 32
@.str.578 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"da7218_of_jack_rate\00", [44 x i8] zeroinitializer }, align 32
@da7218_of_jack_rate._entry_ptr = internal global ptr @da7218_of_jack_rate._entry, section ".printk_index", align 4
@da7218_of_jack_debounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.579, ptr @.str.580, ptr @.str.3, i32 2420, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.579 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid jack debounce\00", [42 x i8] zeroinitializer }, align 32
@.str.580 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7218_of_jack_debounce\00", [40 x i8] zeroinitializer }, align 32
@da7218_of_jack_debounce._entry_ptr = internal global ptr @da7218_of_jack_debounce._entry, section ".printk_index", align 4
@da7218_of_jack_thr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.581, ptr @.str.582, ptr @.str.3, i32 2438, ptr @.str.292, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.581 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid jack threshold level\00", [35 x i8] zeroinitializer }, align 32
@.str.582 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da7218_of_jack_thr\00", [45 x i8] zeroinitializer }, align 32
@da7218_of_jack_thr._entry_ptr = internal global ptr @da7218_of_jack_thr._entry, section ".printk_index", align 4
@.str.583 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EVENT=MIC_LEVEL_DETECT\00", [41 x i8] zeroinitializer }, align 32
@__const.da7218_micldet_irq.envp = private unnamed_addr constant [2 x ptr] [ptr @.str.583, ptr null], align 8
@da7218_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.584, ptr @.str.585, ptr @.str.3, i32 2586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.584 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable mclk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.585 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7218_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@da7218_set_bias_level._entry_ptr = internal global ptr @da7218_set_bias_level._entry, section ".printk_index", align 4
@.str.586 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da7218-hifi\00", [20 x i8] zeroinitializer }, align 32
@da7218_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @da7218_set_dai_sysclk, ptr @da7218_set_dai_pll, ptr null, ptr null, ptr @da7218_set_dai_fmt, ptr null, ptr @da7218_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7218_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@da7218_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.587, ptr @.str.588, ptr @.str.3, i32 1821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.587 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported MCLK value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.588 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7218_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@da7218_set_dai_sysclk._entry_ptr = internal global ptr @da7218_set_dai_sysclk._entry, section ".printk_index", align 4
@da7218_set_dai_sysclk._entry.589 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.590, ptr @.str.588, ptr @.str.3, i32 1836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.590 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown clock source %d\0A\00", [39 x i8] zeroinitializer }, align 32
@da7218_set_dai_sysclk._entry_ptr.591 = internal global ptr @da7218_set_dai_sysclk._entry.589, section ".printk_index", align 4
@da7218_set_dai_sysclk._entry.592 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.593, ptr @.str.588, ptr @.str.3, i32 1845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.593 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set clock rate %d\0A\00", [35 x i8] zeroinitializer }, align 32
@da7218_set_dai_sysclk._entry_ptr.594 = internal global ptr @da7218_set_dai_sysclk._entry.592, section ".printk_index", align 4
@da7218_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.595, ptr @.str.596, ptr @.str.3, i32 1869, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.595 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLL input clock %d below valid range\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.596 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da7218_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@da7218_set_dai_pll._entry_ptr = internal global ptr @da7218_set_dai_pll._entry, section ".printk_index", align 4
@da7218_set_dai_pll._entry.597 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.598, ptr @.str.596, ptr @.str.3, i32 1888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.598 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLL input clock %d above valid range\0A\00", [58 x i8] zeroinitializer }, align 32
@da7218_set_dai_pll._entry_ptr.599 = internal global ptr @da7218_set_dai_pll._entry.597, section ".printk_index", align 4
@da7218_set_dai_pll._entry.600 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.601, ptr @.str.596, ptr @.str.3, i32 1909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.601 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid PLL config\0A\00", [44 x i8] zeroinitializer }, align 32
@da7218_set_dai_pll._entry_ptr.602 = internal global ptr @da7218_set_dai_pll._entry.600, section ".printk_index", align 4
@da7218_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.603, ptr @.str.604, ptr @.str.3, i32 2040, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.603 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid number of slots, max = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.604 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7218_set_dai_tdm_slot\00", [40 x i8] zeroinitializer }, align 32
@da7218_set_dai_tdm_slot._entry_ptr = internal global ptr @da7218_set_dai_tdm_slot._entry, section ".printk_index", align 4
@da7218_set_dai_tdm_slot._entry.605 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.606, ptr @.str.604, ptr @.str.3, i32 2047, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.606 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid slot offset, max = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da7218_set_dai_tdm_slot._entry_ptr.607 = internal global ptr @da7218_set_dai_tdm_slot._entry.605, section ".printk_index", align 4
@da7218_set_dai_tdm_slot._entry.608 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.609, ptr @.str.604, ptr @.str.3, i32 2067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.609 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid frame size\0A\00", [44 x i8] zeroinitializer }, align 32
@da7218_set_dai_tdm_slot._entry_ptr.610 = internal global ptr @da7218_set_dai_tdm_slot._entry.608, section ".printk_index", align 4
@da7218_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.611, ptr @.str.612, ptr @.str.3, i32 2116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.611 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid number of channels, only 1 to %d supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.612 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7218_hw_params\00", [47 x i8] zeroinitializer }, align 32
@da7218_hw_params._entry_ptr = internal global ptr @da7218_hw_params._entry, section ".printk_index", align 4
@switch.table.da7218_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.da7218_probe.613 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\08\00\01\02\03\04\05\06\07", [23 x i8] zeroinitializer }, align 32
@switch.table.da7218_in_filter_event = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.da7218_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 9, i32 5, i32 13], [44 x i8] zeroinitializer }, align 32
@switch.table.da7218_set_dai_fmt.614 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5, i32 5, i32 13, i32 1, i32 9], [44 x i8] zeroinitializer }, align 32
@switch.table.da7218_set_dai_tdm_slot = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.da7218_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 8, i64 9, i64 22, i64 68, i64 69, i64 70, i64 71, i64 72, i64 149, i64 152, i64 160, i64 194, i64 212, i64 218, i64 236, i64 237]
@__sancov_gen_cov_switch_values.615 = internal global [11 x i64] [i64 9, i64 32, i64 1200, i64 1600, i64 1800, i64 2000, i64 2200, i64 2400, i64 2600, i64 2800, i64 3000]
@__sancov_gen_cov_switch_values.616 = internal global [11 x i64] [i64 9, i64 32, i64 1200, i64 1600, i64 1800, i64 2000, i64 2200, i64 2400, i64 2600, i64 2800, i64 3000]
@__sancov_gen_cov_switch_values.617 = internal global [4 x i64] [i64 2, i64 32, i64 1500000, i64 3000000]
@__sancov_gen_cov_switch_values.618 = internal global [4 x i64] [i64 2, i64 32, i64 1500000, i64 3000000]
@__sancov_gen_cov_switch_values.619 = internal global [10 x i64] [i64 8, i64 32, i64 5, i64 10, i64 20, i64 40, i64 80, i64 160, i64 320, i64 640]
@__sancov_gen_cov_switch_values.620 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.621 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.622 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 50]
@__sancov_gen_cov_switch_values.623 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 50]
@__sancov_gen_cov_switch_values.624 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.625 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.626 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.627 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.628 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.629 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.630 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.631 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.632 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.633 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.634 = private unnamed_addr constant [18 x i8] c"da7218_i2c_driver\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3309, i32 26 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3311, i32 11 }
@___asan_gen_.640 = private unnamed_addr constant [16 x i8] c"da7218_of_match\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2281, i32 34 }
@___asan_gen_.643 = private unnamed_addr constant [14 x i8] c"da7218_i2c_id\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3302, i32 35 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3280, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.667 = private unnamed_addr constant [21 x i8] c"da7218_regmap_config\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3245, i32 35 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3286, i32 19 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3289, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant [25 x i8] c"soc_component_dev_da7218\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3028, i32 46 }
@___asan_gen_.682 = private unnamed_addr constant [11 x i8] c"da7218_dai\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2180, i32 34 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3296, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant [20 x i8] c"da7218_reg_defaults\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 3051, i32 27 }
@___asan_gen_.694 = private unnamed_addr constant [20 x i8] c"da7218_snd_controls\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 637, i32 38 }
@___asan_gen_.697 = private unnamed_addr constant [17 x i8] c"da7218_audio_map\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1717, i32 40 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 639, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [20 x i8] c"da7218_mic_gain_tlv\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 37, i32 14 }
@___asan_gen_.706 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 642, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 645, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 648, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 653, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [22 x i8] c"da7218_mixin_gain_tlv\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 38, i32 14 }
@___asan_gen_.725 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 658, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 661, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 664, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 667, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 672, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 675, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 678, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 683, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 686, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 689, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 694, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [23 x i8] c"da7218_in_dig_gain_tlv\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 39, i32 14 }
@___asan_gen_.772 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 698, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 701, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 704, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 708, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 711, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 714, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 718, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 721, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 724, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 728, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 731, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 736, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [23 x i8] c"da7218_ags_trigger_tlv\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 40, i32 14 }
@___asan_gen_.823 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 739, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [23 x i8] c"da7218_ags_att_max_tlv\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 41, i32 14 }
@___asan_gen_.830 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 742, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 745, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 748, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 753, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant [23 x i8] c"da7218_alc_attack_rate\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 66, i32 30 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 754, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant [24 x i8] c"da7218_alc_release_rate\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 75, i32 30 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 755, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [21 x i8] c"da7218_alc_hold_time\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 85, i32 30 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 756, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant [25 x i8] c"da7218_alc_threshold_tlv\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 42, i32 14 }
@___asan_gen_.867 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 759, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 762, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 765, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant [20 x i8] c"da7218_alc_gain_tlv\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 43, i32 14 }
@___asan_gen_.882 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 768, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 771, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant [24 x i8] c"da7218_alc_ana_gain_tlv\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 44, i32 14 }
@___asan_gen_.893 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 775, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 779, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [25 x i8] c"da7218_alc_anticlip_step\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 93, i32 30 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 780, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 783, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 787, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 793, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [25 x i8] c"da7218_integ_attack_rate\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 103, i32 30 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 794, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant [26 x i8] c"da7218_integ_release_rate\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 107, i32 30 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 797, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant [20 x i8] c"da7218_in1_hpf_mode\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 129, i32 30 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 798, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant [28 x i8] c"da7218_in1_audio_hpf_corner\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 151, i32 30 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 799, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [28 x i8] c"da7218_in1_voice_hpf_corner\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 173, i32 30 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 800, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant [20 x i8] c"da7218_in2_hpf_mode\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 135, i32 30 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 801, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant [28 x i8] c"da7218_in2_audio_hpf_corner\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 157, i32 30 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 802, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant [28 x i8] c"da7218_in2_voice_hpf_corner\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 179, i32 30 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 805, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 810, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 815, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 820, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant [21 x i8] c"da7218_dmix_gain_tlv\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 47, i32 14 }
@___asan_gen_.982 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 825, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 830, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 835, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 841, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 846, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 851, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 856, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 862, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 867, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 872, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 877, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 883, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 888, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 893, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 898, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 904, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 909, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 914, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 919, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 925, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 930, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 935, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 940, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 946, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 951, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 956, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 961, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 968, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 973, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 979, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 984, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 990, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 995, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1001, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1006, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1012, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1017, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1023, i32 2 }
@___asan_gen_.1134 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1028, i32 2 }
@___asan_gen_.1138 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1034, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1039, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1046, i32 2 }
@___asan_gen_.1150 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1049, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1052, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1057, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant [24 x i8] c"da7218_tonegen_dtmf_key\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 196, i32 30 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1058, i32 2 }
@___asan_gen_.1168 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1061, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant [23 x i8] c"da7218_tonegen_swg_sel\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 204, i32 30 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1062, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1065, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1068, i32 2 }
@___asan_gen_.1186 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1071, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1076, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant [22 x i8] c"da7218_gain_ramp_rate\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 117, i32 30 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1079, i32 2 }
@___asan_gen_.1200 = private unnamed_addr constant [23 x i8] c"da7218_dgs_trigger_tlv\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 50, i32 14 }
@___asan_gen_.1203 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1082, i32 2 }
@___asan_gen_.1207 = private unnamed_addr constant [22 x i8] c"da7218_dgs_rise_coeff\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 213, i32 30 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1083, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant [22 x i8] c"da7218_dgs_fall_coeff\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 221, i32 30 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1084, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1087, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1090, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1093, i32 2 }
@___asan_gen_.1231 = private unnamed_addr constant [24 x i8] c"da7218_dgs_anticlip_tlv\00", align 1
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 51, i32 14 }
@___asan_gen_.1234 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1097, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant [22 x i8] c"da7218_dgs_signal_tlv\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 52, i32 14 }
@___asan_gen_.1241 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1100, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant [21 x i8] c".compoundliteral.232\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1103, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1106, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1109, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1114, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant [21 x i8] c"da7218_out1_hpf_mode\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 141, i32 30 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1115, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant [29 x i8] c"da7218_out1_audio_hpf_corner\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 163, i32 30 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1116, i32 2 }
@___asan_gen_.1273 = private unnamed_addr constant [29 x i8] c"da7218_out1_voice_hpf_corner\00", align 1
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 185, i32 30 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1119, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant [23 x i8] c"da7218_out_eq_band_tlv\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 53, i32 14 }
@___asan_gen_.1282 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1122, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1125, i32 2 }
@___asan_gen_.1290 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1128, i32 2 }
@___asan_gen_.1294 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1131, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1134, i32 2 }
@___asan_gen_.1302 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1139, i32 2 }
@___asan_gen_.1306 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1142, i32 2 }
@___asan_gen_.1310 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1147, i32 2 }
@___asan_gen_.1314 = private unnamed_addr constant [24 x i8] c"da7218_out_dig_gain_tlv\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 54, i32 14 }
@___asan_gen_.1317 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1153, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1156, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1160, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1165, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant [23 x i8] c"da7218_mixout_gain_tlv\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 56, i32 14 }
@___asan_gen_.1336 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1173, i32 2 }
@___asan_gen_.1340 = private unnamed_addr constant [25 x i8] c"da7218_dac_ng_setup_time\00", align 1
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 229, i32 30 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1174, i32 2 }
@___asan_gen_.1346 = private unnamed_addr constant [26 x i8] c"da7218_dac_ng_rampup_rate\00", align 1
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 239, i32 30 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1175, i32 2 }
@___asan_gen_.1352 = private unnamed_addr constant [28 x i8] c"da7218_dac_ng_rampdown_rate\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 249, i32 30 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1176, i32 2 }
@___asan_gen_.1358 = private unnamed_addr constant [28 x i8] c"da7218_dac_ng_threshold_tlv\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 55, i32 14 }
@___asan_gen_.1361 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1180, i32 2 }
@___asan_gen_.1365 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1184, i32 2 }
@___asan_gen_.1369 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1188, i32 2 }
@___asan_gen_.1373 = private unnamed_addr constant [18 x i8] c"da7218_cp_mchange\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 264, i32 30 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1189, i32 2 }
@___asan_gen_.1379 = private unnamed_addr constant [19 x i8] c"da7218_cp_fcontrol\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 273, i32 30 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1190, i32 2 }
@___asan_gen_.1385 = private unnamed_addr constant [20 x i8] c"da7218_cp_tau_delay\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 281, i32 30 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1191, i32 2 }
@___asan_gen_.1391 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1196, i32 2 }
@___asan_gen_.1395 = private unnamed_addr constant [19 x i8] c"da7218_hp_gain_tlv\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 57, i32 14 }
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1200, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant [21 x i8] c".compoundliteral.285\00", align 1
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1203, i32 2 }
@___asan_gen_.1406 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1206, i32 2 }
@___asan_gen_.1410 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 385, i32 3 }
@___asan_gen_.1429 = private unnamed_addr constant [27 x i8] c"da7218_alc_attack_rate_txt\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 60, i32 27 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 61, i32 2 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 61, i32 13 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 61, i32 25 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 61, i32 37 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 61, i32 49 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 61, i32 61 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 62, i32 2 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 62, i32 14 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 62, i32 26 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 62, i32 37 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 62, i32 48 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 62, i32 59 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 63, i32 2 }
@___asan_gen_.1471 = private unnamed_addr constant [28 x i8] c"da7218_alc_release_rate_txt\00", align 1
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 70, i32 27 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 71, i32 2 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 71, i32 14 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 71, i32 26 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 71, i32 38 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 71, i32 50 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 71, i32 62 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 72, i32 2 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 72, i32 13 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 72, i32 24 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 72, i32 35 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 72, i32 47 }
@___asan_gen_.1507 = private unnamed_addr constant [25 x i8] c"da7218_alc_hold_time_txt\00", align 1
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 79, i32 27 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 80, i32 2 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 80, i32 11 }
@___asan_gen_.1518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 80, i32 21 }
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 80, i32 31 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 80, i32 41 }
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 80, i32 51 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 80, i32 62 }
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 81, i32 2 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 81, i32 13 }
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 81, i32 25 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 81, i32 37 }
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 81, i32 49 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 82, i32 2 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 82, i32 15 }
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 82, i32 28 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 82, i32 42 }
@___asan_gen_.1558 = private unnamed_addr constant [29 x i8] c"da7218_alc_anticlip_step_txt\00", align 1
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 89, i32 27 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 90, i32 2 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 90, i32 16 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 90, i32 30 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 90, i32 44 }
@___asan_gen_.1573 = private unnamed_addr constant [22 x i8] c"da7218_integ_rate_txt\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 99, i32 27 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 100, i32 2 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 100, i32 9 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 100, i32 17 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 100, i32 26 }
@___asan_gen_.1588 = private unnamed_addr constant [20 x i8] c"da7218_hpf_mode_txt\00", align 1
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 121, i32 27 }
@___asan_gen_.1591 = private unnamed_addr constant [20 x i8] c"da7218_hpf_mode_val\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 125, i32 27 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 122, i32 2 }
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 122, i32 14 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 122, i32 23 }
@___asan_gen_.1603 = private unnamed_addr constant [28 x i8] c"da7218_audio_hpf_corner_txt\00", align 1
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 147, i32 27 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 148, i32 2 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 148, i32 9 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 148, i32 16 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 148, i32 23 }
@___asan_gen_.1618 = private unnamed_addr constant [28 x i8] c"da7218_voice_hpf_corner_txt\00", align 1
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 169, i32 27 }
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 2 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 11 }
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 19 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 27 }
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 36 }
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 45 }
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 54 }
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 170, i32 63 }
@___asan_gen_.1645 = private unnamed_addr constant [28 x i8] c"da7218_tonegen_dtmf_key_txt\00", align 1
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 191, i32 27 }
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 2 }
@___asan_gen_.1653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 7 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 12 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 17 }
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 22 }
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 27 }
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 32 }
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 37 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 42 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 47 }
@___asan_gen_.1680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 52 }
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 57 }
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 62 }
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 192, i32 67 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 193, i32 2 }
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 193, i32 7 }
@___asan_gen_.1696 = private unnamed_addr constant [27 x i8] c"da7218_tonegen_swg_sel_txt\00", align 1
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 200, i32 27 }
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 201, i32 2 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 201, i32 9 }
@___asan_gen_.1707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 201, i32 17 }
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 201, i32 25 }
@___asan_gen_.1711 = private unnamed_addr constant [26 x i8] c"da7218_gain_ramp_rate_txt\00", align 1
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 112, i32 27 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 113, i32 2 }
@___asan_gen_.1719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 113, i32 22 }
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 113, i32 38 }
@___asan_gen_.1725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 114, i32 2 }
@___asan_gen_.1726 = private unnamed_addr constant [26 x i8] c"da7218_dgs_rise_coeff_txt\00", align 1
@___asan_gen_.1728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 209, i32 27 }
@___asan_gen_.1731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 210, i32 2 }
@___asan_gen_.1734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 210, i32 17 }
@___asan_gen_.1737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 210, i32 34 }
@___asan_gen_.1740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 210, i32 44 }
@___asan_gen_.1743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 210, i32 54 }
@___asan_gen_.1744 = private unnamed_addr constant [26 x i8] c"da7218_dgs_fall_coeff_txt\00", align 1
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 217, i32 27 }
@___asan_gen_.1747 = private unnamed_addr constant [29 x i8] c"da7218_dac_ng_setup_time_txt\00", align 1
@___asan_gen_.1749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 225, i32 27 }
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 226, i32 2 }
@___asan_gen_.1755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 226, i32 17 }
@___asan_gen_.1758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 226, i32 32 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 226, i32 48 }
@___asan_gen_.1762 = private unnamed_addr constant [25 x i8] c"da7218_dac_ng_rampup_txt\00", align 1
@___asan_gen_.1764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 235, i32 27 }
@___asan_gen_.1767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 236, i32 2 }
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 236, i32 15 }
@___asan_gen_.1771 = private unnamed_addr constant [27 x i8] c"da7218_dac_ng_rampdown_txt\00", align 1
@___asan_gen_.1773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 245, i32 27 }
@___asan_gen_.1776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 246, i32 2 }
@___asan_gen_.1779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 246, i32 15 }
@___asan_gen_.1780 = private unnamed_addr constant [22 x i8] c"da7218_cp_mchange_txt\00", align 1
@___asan_gen_.1782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 255, i32 27 }
@___asan_gen_.1783 = private unnamed_addr constant [22 x i8] c"da7218_cp_mchange_val\00", align 1
@___asan_gen_.1785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 259, i32 27 }
@___asan_gen_.1788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 256, i32 2 }
@___asan_gen_.1791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 256, i32 20 }
@___asan_gen_.1794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 256, i32 34 }
@___asan_gen_.1795 = private unnamed_addr constant [23 x i8] c"da7218_cp_fcontrol_txt\00", align 1
@___asan_gen_.1797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 269, i32 27 }
@___asan_gen_.1800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 270, i32 2 }
@___asan_gen_.1803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 270, i32 10 }
@___asan_gen_.1806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 270, i32 20 }
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 270, i32 30 }
@___asan_gen_.1812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 270, i32 40 }
@___asan_gen_.1815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 270, i32 49 }
@___asan_gen_.1816 = private unnamed_addr constant [24 x i8] c"da7218_cp_tau_delay_txt\00", align 1
@___asan_gen_.1818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 277, i32 27 }
@___asan_gen_.1821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 2 }
@___asan_gen_.1824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 9 }
@___asan_gen_.1827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 16 }
@___asan_gen_.1830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 23 }
@___asan_gen_.1833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 31 }
@___asan_gen_.1836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 39 }
@___asan_gen_.1839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 48 }
@___asan_gen_.1842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 278, i32 57 }
@___asan_gen_.1845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1531, i32 2 }
@___asan_gen_.1848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1534, i32 2 }
@___asan_gen_.1851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1537, i32 2 }
@___asan_gen_.1854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1540, i32 2 }
@___asan_gen_.1857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1543, i32 2 }
@___asan_gen_.1860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1546, i32 2 }
@___asan_gen_.1863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1551, i32 2 }
@___asan_gen_.1866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1552, i32 2 }
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1553, i32 2 }
@___asan_gen_.1872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1554, i32 2 }
@___asan_gen_.1875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1555, i32 2 }
@___asan_gen_.1878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1556, i32 2 }
@___asan_gen_.1881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1559, i32 2 }
@___asan_gen_.1884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1562, i32 2 }
@___asan_gen_.1887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1567, i32 2 }
@___asan_gen_.1890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1570, i32 2 }
@___asan_gen_.1893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1573, i32 2 }
@___asan_gen_.1896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1576, i32 2 }
@___asan_gen_.1899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1581, i32 2 }
@___asan_gen_.1900 = private unnamed_addr constant [20 x i8] c"da7218_mic1_sel_mux\00", align 1
@___asan_gen_.1902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1222, i32 38 }
@___asan_gen_.1905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1582, i32 2 }
@___asan_gen_.1906 = private unnamed_addr constant [20 x i8] c"da7218_mic2_sel_mux\00", align 1
@___asan_gen_.1908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1229, i32 38 }
@___asan_gen_.1911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1585, i32 2 }
@___asan_gen_.1914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1589, i32 2 }
@___asan_gen_.1917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1593, i32 2 }
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1597, i32 2 }
@___asan_gen_.1923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1603, i32 2 }
@___asan_gen_.1926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1604, i32 2 }
@___asan_gen_.1929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1608, i32 2 }
@___asan_gen_.1930 = private unnamed_addr constant [27 x i8] c"da7218_sidetone_in_sel_mux\00", align 1
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1242, i32 38 }
@___asan_gen_.1935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1610, i32 2 }
@___asan_gen_.1938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1614, i32 2 }
@___asan_gen_.1939 = private unnamed_addr constant [30 x i8] c"da7218_out_dai1l_mix_controls\00", align 1
@___asan_gen_.1941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1293, i32 38 }
@___asan_gen_.1944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1617, i32 2 }
@___asan_gen_.1945 = private unnamed_addr constant [30 x i8] c"da7218_out_dai1r_mix_controls\00", align 1
@___asan_gen_.1947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1297, i32 38 }
@___asan_gen_.1950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1620, i32 2 }
@___asan_gen_.1951 = private unnamed_addr constant [30 x i8] c"da7218_out_dai2l_mix_controls\00", align 1
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1301, i32 38 }
@___asan_gen_.1956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1623, i32 2 }
@___asan_gen_.1957 = private unnamed_addr constant [30 x i8] c"da7218_out_dai2r_mix_controls\00", align 1
@___asan_gen_.1959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1305, i32 38 }
@___asan_gen_.1962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1628, i32 2 }
@___asan_gen_.1968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1633, i32 2 }
@___asan_gen_.1974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1635, i32 2 }
@___asan_gen_.1977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1638, i32 2 }
@___asan_gen_.1978 = private unnamed_addr constant [30 x i8] c"da7218_out_filtl_mix_controls\00", align 1
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1309, i32 38 }
@___asan_gen_.1983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1641, i32 2 }
@___asan_gen_.1984 = private unnamed_addr constant [30 x i8] c"da7218_out_filtr_mix_controls\00", align 1
@___asan_gen_.1986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1313, i32 38 }
@___asan_gen_.1989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1646, i32 2 }
@___asan_gen_.1990 = private unnamed_addr constant [29 x i8] c"da7218_out_filtl_biq_sel_mux\00", align 1
@___asan_gen_.1992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1255, i32 38 }
@___asan_gen_.1995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1648, i32 2 }
@___asan_gen_.1996 = private unnamed_addr constant [29 x i8] c"da7218_out_filtr_biq_sel_mux\00", align 1
@___asan_gen_.1998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1264, i32 38 }
@___asan_gen_.2001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1650, i32 2 }
@___asan_gen_.2004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1655, i32 2 }
@___asan_gen_.2005 = private unnamed_addr constant [33 x i8] c"da7218_st_out_filtl_mix_controls\00", align 1
@___asan_gen_.2007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1328, i32 38 }
@___asan_gen_.2010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1658, i32 2 }
@___asan_gen_.2011 = private unnamed_addr constant [33 x i8] c"da7218_st_out_filtr_mix_controls\00", align 1
@___asan_gen_.2013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1332, i32 38 }
@___asan_gen_.2016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1663, i32 2 }
@___asan_gen_.2019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1665, i32 2 }
@___asan_gen_.2022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1669, i32 2 }
@___asan_gen_.2025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1672, i32 2 }
@___asan_gen_.2028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1675, i32 2 }
@___asan_gen_.2031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1679, i32 2 }
@___asan_gen_.2034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1685, i32 2 }
@___asan_gen_.2037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1689, i32 2 }
@___asan_gen_.2040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1690, i32 2 }
@___asan_gen_.2041 = private unnamed_addr constant [20 x i8] c"da7218_dapm_widgets\00", align 1
@___asan_gen_.2043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1529, i32 41 }
@___asan_gen_.2044 = private unnamed_addr constant [16 x i8] c"da7218_mic1_sel\00", align 1
@___asan_gen_.2046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1218, i32 30 }
@___asan_gen_.2047 = private unnamed_addr constant [20 x i8] c"da7218_mic_sel_text\00", align 1
@___asan_gen_.2049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1216, i32 27 }
@___asan_gen_.2052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1216, i32 53 }
@___asan_gen_.2055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1216, i32 63 }
@___asan_gen_.2056 = private unnamed_addr constant [16 x i8] c"da7218_mic2_sel\00", align 1
@___asan_gen_.2058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1225, i32 30 }
@___asan_gen_.2059 = private unnamed_addr constant [23 x i8] c"da7218_sidetone_in_sel\00", align 1
@___asan_gen_.2061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1236, i32 30 }
@___asan_gen_.2062 = private unnamed_addr constant [27 x i8] c"da7218_sidetone_in_sel_txt\00", align 1
@___asan_gen_.2064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1232, i32 27 }
@___asan_gen_.2065 = private unnamed_addr constant [21 x i8] c".compoundliteral.468\00", align 1
@___asan_gen_.2066 = private unnamed_addr constant [21 x i8] c".compoundliteral.469\00", align 1
@___asan_gen_.2067 = private unnamed_addr constant [21 x i8] c".compoundliteral.470\00", align 1
@___asan_gen_.2068 = private unnamed_addr constant [21 x i8] c".compoundliteral.471\00", align 1
@___asan_gen_.2072 = private unnamed_addr constant [21 x i8] c".compoundliteral.473\00", align 1
@___asan_gen_.2076 = private unnamed_addr constant [21 x i8] c".compoundliteral.475\00", align 1
@___asan_gen_.2079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1294, i32 2 }
@___asan_gen_.2080 = private unnamed_addr constant [21 x i8] c".compoundliteral.477\00", align 1
@___asan_gen_.2081 = private unnamed_addr constant [21 x i8] c".compoundliteral.478\00", align 1
@___asan_gen_.2082 = private unnamed_addr constant [21 x i8] c".compoundliteral.479\00", align 1
@___asan_gen_.2083 = private unnamed_addr constant [21 x i8] c".compoundliteral.480\00", align 1
@___asan_gen_.2084 = private unnamed_addr constant [21 x i8] c".compoundliteral.481\00", align 1
@___asan_gen_.2085 = private unnamed_addr constant [21 x i8] c".compoundliteral.482\00", align 1
@___asan_gen_.2086 = private unnamed_addr constant [21 x i8] c".compoundliteral.483\00", align 1
@___asan_gen_.2087 = private unnamed_addr constant [21 x i8] c".compoundliteral.484\00", align 1
@___asan_gen_.2088 = private unnamed_addr constant [21 x i8] c".compoundliteral.485\00", align 1
@___asan_gen_.2089 = private unnamed_addr constant [21 x i8] c".compoundliteral.486\00", align 1
@___asan_gen_.2090 = private unnamed_addr constant [21 x i8] c".compoundliteral.487\00", align 1
@___asan_gen_.2091 = private unnamed_addr constant [21 x i8] c".compoundliteral.488\00", align 1
@___asan_gen_.2092 = private unnamed_addr constant [21 x i8] c".compoundliteral.489\00", align 1
@___asan_gen_.2093 = private unnamed_addr constant [21 x i8] c".compoundliteral.490\00", align 1
@___asan_gen_.2094 = private unnamed_addr constant [21 x i8] c".compoundliteral.491\00", align 1
@___asan_gen_.2095 = private unnamed_addr constant [21 x i8] c".compoundliteral.492\00", align 1
@___asan_gen_.2096 = private unnamed_addr constant [21 x i8] c".compoundliteral.493\00", align 1
@___asan_gen_.2097 = private unnamed_addr constant [21 x i8] c".compoundliteral.494\00", align 1
@___asan_gen_.2098 = private unnamed_addr constant [21 x i8] c".compoundliteral.495\00", align 1
@___asan_gen_.2099 = private unnamed_addr constant [21 x i8] c".compoundliteral.496\00", align 1
@___asan_gen_.2100 = private unnamed_addr constant [21 x i8] c".compoundliteral.497\00", align 1
@___asan_gen_.2101 = private unnamed_addr constant [21 x i8] c".compoundliteral.498\00", align 1
@___asan_gen_.2110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1433, i32 4 }
@___asan_gen_.2116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1459, i32 4 }
@___asan_gen_.2117 = private unnamed_addr constant [21 x i8] c".compoundliteral.504\00", align 1
@___asan_gen_.2118 = private unnamed_addr constant [21 x i8] c".compoundliteral.505\00", align 1
@___asan_gen_.2119 = private unnamed_addr constant [21 x i8] c".compoundliteral.506\00", align 1
@___asan_gen_.2120 = private unnamed_addr constant [21 x i8] c".compoundliteral.507\00", align 1
@___asan_gen_.2121 = private unnamed_addr constant [21 x i8] c".compoundliteral.508\00", align 1
@___asan_gen_.2122 = private unnamed_addr constant [21 x i8] c".compoundliteral.509\00", align 1
@___asan_gen_.2123 = private unnamed_addr constant [21 x i8] c".compoundliteral.510\00", align 1
@___asan_gen_.2124 = private unnamed_addr constant [21 x i8] c".compoundliteral.511\00", align 1
@___asan_gen_.2125 = private unnamed_addr constant [21 x i8] c".compoundliteral.512\00", align 1
@___asan_gen_.2126 = private unnamed_addr constant [21 x i8] c".compoundliteral.513\00", align 1
@___asan_gen_.2127 = private unnamed_addr constant [21 x i8] c".compoundliteral.514\00", align 1
@___asan_gen_.2128 = private unnamed_addr constant [21 x i8] c".compoundliteral.515\00", align 1
@___asan_gen_.2129 = private unnamed_addr constant [21 x i8] c".compoundliteral.516\00", align 1
@___asan_gen_.2130 = private unnamed_addr constant [21 x i8] c".compoundliteral.517\00", align 1
@___asan_gen_.2131 = private unnamed_addr constant [25 x i8] c"da7218_out_filtl_biq_sel\00", align 1
@___asan_gen_.2133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1249, i32 30 }
@___asan_gen_.2134 = private unnamed_addr constant [28 x i8] c"da7218_out_filt_biq_sel_txt\00", align 1
@___asan_gen_.2136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1245, i32 27 }
@___asan_gen_.2139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1246, i32 2 }
@___asan_gen_.2142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1246, i32 12 }
@___asan_gen_.2143 = private unnamed_addr constant [25 x i8] c"da7218_out_filtr_biq_sel\00", align 1
@___asan_gen_.2145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1258, i32 30 }
@___asan_gen_.2149 = private unnamed_addr constant [21 x i8] c".compoundliteral.521\00", align 1
@___asan_gen_.2152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1329, i32 2 }
@___asan_gen_.2153 = private unnamed_addr constant [21 x i8] c".compoundliteral.523\00", align 1
@___asan_gen_.2154 = private unnamed_addr constant [21 x i8] c".compoundliteral.524\00", align 1
@___asan_gen_.2155 = private unnamed_addr constant [21 x i8] c".compoundliteral.525\00", align 1
@___asan_gen_.2156 = private unnamed_addr constant [21 x i8] c".compoundliteral.526\00", align 1
@___asan_gen_.2157 = private unnamed_addr constant [21 x i8] c".compoundliteral.527\00", align 1
@___asan_gen_.2160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2896, i32 46 }
@___asan_gen_.2169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2974, i32 4 }
@___asan_gen_.2178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2647, i32 3 }
@___asan_gen_.2184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2655, i32 3 }
@___asan_gen_.2190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2662, i32 3 }
@___asan_gen_.2193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2628, i32 24 }
@___asan_gen_.2196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2629, i32 27 }
@___asan_gen_.2199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2630, i32 26 }
@___asan_gen_.2202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2457, i32 31 }
@___asan_gen_.2205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2462, i32 31 }
@___asan_gen_.2208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2467, i32 35 }
@___asan_gen_.2211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2473, i32 35 }
@___asan_gen_.2214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2479, i32 35 }
@___asan_gen_.2217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2484, i32 35 }
@___asan_gen_.2220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2490, i32 31 }
@___asan_gen_.2223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2495, i32 35 }
@___asan_gen_.2226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2500, i32 35 }
@___asan_gen_.2229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2506, i32 31 }
@___asan_gen_.2232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2512, i32 33 }
@___asan_gen_.2235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2517, i32 40 }
@___asan_gen_.2238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2529, i32 39 }
@___asan_gen_.2241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2536, i32 39 }
@___asan_gen_.2244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2544, i32 39 }
@___asan_gen_.2247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2551, i32 40 }
@___asan_gen_.2250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2554, i32 40 }
@___asan_gen_.2253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2557, i32 40 }
@___asan_gen_.2262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2321, i32 3 }
@___asan_gen_.2265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2329, i32 19 }
@___asan_gen_.2268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2331, i32 26 }
@___asan_gen_.2271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2333, i32 26 }
@___asan_gen_.2280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2336, i32 3 }
@___asan_gen_.2283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2344, i32 19 }
@___asan_gen_.2286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2346, i32 26 }
@___asan_gen_.2295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2349, i32 3 }
@___asan_gen_.2298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2357, i32 19 }
@___asan_gen_.2301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2359, i32 26 }
@___asan_gen_.2310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2362, i32 3 }
@___asan_gen_.2319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2376, i32 3 }
@___asan_gen_.2328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2402, i32 3 }
@___asan_gen_.2337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2420, i32 3 }
@___asan_gen_.2346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2438, i32 3 }
@___asan_gen_.2349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2226, i32 3 }
@___asan_gen_.2358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2586, i32 6 }
@___asan_gen_.2361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2181, i32 10 }
@___asan_gen_.2362 = private unnamed_addr constant [15 x i8] c"da7218_dai_ops\00", align 1
@___asan_gen_.2364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2169, i32 37 }
@___asan_gen_.2373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1820, i32 3 }
@___asan_gen_.2379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1836, i32 3 }
@___asan_gen_.2385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1844, i32 4 }
@___asan_gen_.2394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1868, i32 3 }
@___asan_gen_.2400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1887, i32 3 }
@___asan_gen_.2406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 1909, i32 3 }
@___asan_gen_.2415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2039, i32 3 }
@___asan_gen_.2421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2046, i32 3 }
@___asan_gen_.2427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2067, i32 3 }
@___asan_gen_.2428 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2434 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2435 = private constant [29 x i8] c"../sound/soc/codecs/da7218.c\00", align 1
@___asan_gen_.2436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2435, i32 2114, i32 3 }
@___asan_gen_.2437 = private unnamed_addr constant [26 x i8] c"switch.table.da7218_probe\00", align 1
@___asan_gen_.2438 = private unnamed_addr constant [30 x i8] c"switch.table.da7218_probe.613\00", align 1
@___asan_gen_.2439 = private unnamed_addr constant [36 x i8] c"switch.table.da7218_in_filter_event\00", align 1
@___asan_gen_.2440 = private unnamed_addr constant [32 x i8] c"switch.table.da7218_set_dai_fmt\00", align 1
@___asan_gen_.2441 = private unnamed_addr constant [36 x i8] c"switch.table.da7218_set_dai_fmt.614\00", align 1
@___asan_gen_.2442 = private unnamed_addr constant [37 x i8] c"switch.table.da7218_set_dai_tdm_slot\00", align 1
@___asan_gen_.2443 = private unnamed_addr constant [30 x i8] c"switch.table.da7218_hw_params\00", align 1
@llvm.compiler.used = appending global [761 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_da7218_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_da7218__294_3318_da7218_i2c_driver_init6, ptr @__ksymtab_da7218_hpldet, ptr @da7218_alc_calib._entry, ptr @da7218_alc_calib._entry_ptr, ptr @da7218_dai_event._entry, ptr @da7218_dai_event._entry.501, ptr @da7218_dai_event._entry_ptr, ptr @da7218_dai_event._entry_ptr.503, ptr @da7218_handle_supplies._entry, ptr @da7218_handle_supplies._entry.533, ptr @da7218_handle_supplies._entry.536, ptr @da7218_handle_supplies._entry_ptr, ptr @da7218_handle_supplies._entry_ptr.535, ptr @da7218_handle_supplies._entry_ptr.538, ptr @da7218_hw_params._entry, ptr @da7218_hw_params._entry_ptr, ptr @da7218_i2c_driver_exit, ptr @da7218_i2c_probe._entry, ptr @da7218_i2c_probe._entry.10, ptr @da7218_i2c_probe._entry.7, ptr @da7218_i2c_probe._entry_ptr, ptr @da7218_i2c_probe._entry_ptr.12, ptr @da7218_i2c_probe._entry_ptr.9, ptr @da7218_of_dmic_clkrate._entry, ptr @da7218_of_dmic_clkrate._entry_ptr, ptr @da7218_of_dmic_data_sel._entry, ptr @da7218_of_dmic_data_sel._entry_ptr, ptr @da7218_of_dmic_samplephase._entry, ptr @da7218_of_dmic_samplephase._entry_ptr, ptr @da7218_of_jack_debounce._entry, ptr @da7218_of_jack_debounce._entry_ptr, ptr @da7218_of_jack_rate._entry, ptr @da7218_of_jack_rate._entry_ptr, ptr @da7218_of_jack_thr._entry, ptr @da7218_of_jack_thr._entry_ptr, ptr @da7218_of_mic_amp_in_sel._entry, ptr @da7218_of_mic_amp_in_sel._entry_ptr, ptr @da7218_of_micbias_lvl._entry, ptr @da7218_of_micbias_lvl._entry_ptr, ptr @da7218_probe._entry, ptr @da7218_probe._entry_ptr, ptr @da7218_set_bias_level._entry, ptr @da7218_set_bias_level._entry_ptr, ptr @da7218_set_dai_pll._entry, ptr @da7218_set_dai_pll._entry.597, ptr @da7218_set_dai_pll._entry.600, ptr @da7218_set_dai_pll._entry_ptr, ptr @da7218_set_dai_pll._entry_ptr.599, ptr @da7218_set_dai_pll._entry_ptr.602, ptr @da7218_set_dai_sysclk._entry, ptr @da7218_set_dai_sysclk._entry.589, ptr @da7218_set_dai_sysclk._entry.592, ptr @da7218_set_dai_sysclk._entry_ptr, ptr @da7218_set_dai_sysclk._entry_ptr.591, ptr @da7218_set_dai_sysclk._entry_ptr.594, ptr @da7218_set_dai_tdm_slot._entry, ptr @da7218_set_dai_tdm_slot._entry.605, ptr @da7218_set_dai_tdm_slot._entry.608, ptr @da7218_set_dai_tdm_slot._entry_ptr, ptr @da7218_set_dai_tdm_slot._entry_ptr.607, ptr @da7218_set_dai_tdm_slot._entry_ptr.610, ptr @da7218_i2c_driver, ptr @.str, ptr @da7218_of_match, ptr @da7218_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da7218_i2c_probe._key, ptr @da7218_regmap_config, ptr @.str.6, ptr @.str.8, ptr @soc_component_dev_da7218, ptr @da7218_dai, ptr @.str.11, ptr @da7218_reg_defaults, ptr @da7218_snd_controls, ptr @da7218_audio_map, ptr @.str.13, ptr @da7218_mic_gain_tlv, ptr @.compoundliteral, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @da7218_mixin_gain_tlv, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @da7218_in_dig_gain_tlv, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @da7218_ags_trigger_tlv, ptr @.compoundliteral.67, ptr @.str.68, ptr @da7218_ags_att_max_tlv, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @da7218_alc_attack_rate, ptr @.str.77, ptr @da7218_alc_release_rate, ptr @.str.78, ptr @da7218_alc_hold_time, ptr @.str.79, ptr @da7218_alc_threshold_tlv, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @da7218_alc_gain_tlv, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @da7218_alc_ana_gain_tlv, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @da7218_alc_anticlip_step, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @da7218_integ_attack_rate, ptr @.str.101, ptr @da7218_integ_release_rate, ptr @.str.102, ptr @da7218_in1_hpf_mode, ptr @.str.103, ptr @da7218_in1_audio_hpf_corner, ptr @.str.104, ptr @da7218_in1_voice_hpf_corner, ptr @.str.105, ptr @da7218_in2_hpf_mode, ptr @.str.106, ptr @da7218_in2_audio_hpf_corner, ptr @.str.107, ptr @da7218_in2_voice_hpf_corner, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @da7218_dmix_gain_tlv, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.str.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @da7218_tonegen_dtmf_key, ptr @.str.205, ptr @.compoundliteral.206, ptr @.str.207, ptr @da7218_tonegen_swg_sel, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @da7218_gain_ramp_rate, ptr @.str.217, ptr @da7218_dgs_trigger_tlv, ptr @.compoundliteral.218, ptr @.str.219, ptr @da7218_dgs_rise_coeff, ptr @.str.220, ptr @da7218_dgs_fall_coeff, ptr @.str.221, ptr @.compoundliteral.222, ptr @.str.223, ptr @.compoundliteral.224, ptr @.str.225, ptr @.compoundliteral.226, ptr @.str.227, ptr @da7218_dgs_anticlip_tlv, ptr @.compoundliteral.228, ptr @.str.229, ptr @da7218_dgs_signal_tlv, ptr @.compoundliteral.230, ptr @.str.231, ptr @.compoundliteral.232, ptr @.str.233, ptr @.compoundliteral.234, ptr @.str.235, ptr @.compoundliteral.236, ptr @.str.237, ptr @.compoundliteral.238, ptr @.str.239, ptr @da7218_out1_hpf_mode, ptr @.str.240, ptr @da7218_out1_audio_hpf_corner, ptr @.str.241, ptr @da7218_out1_voice_hpf_corner, ptr @.str.242, ptr @da7218_out_eq_band_tlv, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.str.246, ptr @.compoundliteral.247, ptr @.str.248, ptr @.compoundliteral.249, ptr @.str.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.str.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.str.258, ptr @da7218_out_dig_gain_tlv, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.compoundliteral.265, ptr @.str.266, ptr @da7218_mixout_gain_tlv, ptr @.compoundliteral.267, ptr @.str.268, ptr @da7218_dac_ng_setup_time, ptr @.str.269, ptr @da7218_dac_ng_rampup_rate, ptr @.str.270, ptr @da7218_dac_ng_rampdown_rate, ptr @.str.271, ptr @da7218_dac_ng_threshold_tlv, ptr @.compoundliteral.272, ptr @.str.273, ptr @.compoundliteral.274, ptr @.str.275, ptr @.compoundliteral.276, ptr @.str.277, ptr @da7218_cp_mchange, ptr @.str.278, ptr @da7218_cp_fcontrol, ptr @.str.279, ptr @da7218_cp_tau_delay, ptr @.str.280, ptr @.compoundliteral.281, ptr @.str.282, ptr @da7218_hp_gain_tlv, ptr @.compoundliteral.283, ptr @.str.284, ptr @.compoundliteral.285, ptr @.str.286, ptr @.compoundliteral.287, ptr @.str.288, ptr @.compoundliteral.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @da7218_alc_attack_rate_txt, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @da7218_alc_release_rate_txt, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @da7218_alc_hold_time_txt, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @da7218_alc_anticlip_step_txt, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @da7218_integ_rate_txt, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @da7218_hpf_mode_txt, ptr @da7218_hpf_mode_val, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @da7218_audio_hpf_corner_txt, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @da7218_voice_hpf_corner_txt, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @da7218_tonegen_dtmf_key_txt, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @da7218_tonegen_swg_sel_txt, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @da7218_gain_ramp_rate_txt, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @da7218_dgs_rise_coeff_txt, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @da7218_dgs_fall_coeff_txt, ptr @da7218_dac_ng_setup_time_txt, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @da7218_dac_ng_rampup_txt, ptr @.str.391, ptr @.str.392, ptr @da7218_dac_ng_rampdown_txt, ptr @.str.393, ptr @.str.394, ptr @da7218_cp_mchange_txt, ptr @da7218_cp_mchange_val, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @da7218_cp_fcontrol_txt, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @da7218_cp_tau_delay_txt, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @da7218_mic1_sel_mux, ptr @.str.431, ptr @da7218_mic2_sel_mux, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @da7218_sidetone_in_sel_mux, ptr @.str.439, ptr @.str.440, ptr @da7218_out_dai1l_mix_controls, ptr @.str.441, ptr @da7218_out_dai1r_mix_controls, ptr @.str.442, ptr @da7218_out_dai2l_mix_controls, ptr @.str.443, ptr @da7218_out_dai2r_mix_controls, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @da7218_out_filtl_mix_controls, ptr @.str.450, ptr @da7218_out_filtr_mix_controls, ptr @.str.451, ptr @da7218_out_filtl_biq_sel_mux, ptr @.str.452, ptr @da7218_out_filtr_biq_sel_mux, ptr @.str.453, ptr @.str.454, ptr @da7218_st_out_filtl_mix_controls, ptr @.str.455, ptr @da7218_st_out_filtr_mix_controls, ptr @.str.456, ptr @.str.457, ptr @.str.458, ptr @.str.459, ptr @.str.460, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @da7218_dapm_widgets, ptr @da7218_mic1_sel, ptr @da7218_mic_sel_text, ptr @.str.466, ptr @.str.467, ptr @da7218_mic2_sel, ptr @da7218_sidetone_in_sel, ptr @da7218_sidetone_in_sel_txt, ptr @.compoundliteral.468, ptr @.compoundliteral.469, ptr @.compoundliteral.470, ptr @.compoundliteral.471, ptr @.str.472, ptr @.compoundliteral.473, ptr @.str.474, ptr @.compoundliteral.475, ptr @.str.476, ptr @.compoundliteral.477, ptr @.compoundliteral.478, ptr @.compoundliteral.479, ptr @.compoundliteral.480, ptr @.compoundliteral.481, ptr @.compoundliteral.482, ptr @.compoundliteral.483, ptr @.compoundliteral.484, ptr @.compoundliteral.485, ptr @.compoundliteral.486, ptr @.compoundliteral.487, ptr @.compoundliteral.488, ptr @.compoundliteral.489, ptr @.compoundliteral.490, ptr @.compoundliteral.491, ptr @.compoundliteral.492, ptr @.compoundliteral.493, ptr @.compoundliteral.494, ptr @.compoundliteral.495, ptr @.compoundliteral.496, ptr @.compoundliteral.497, ptr @.compoundliteral.498, ptr @.str.499, ptr @.str.500, ptr @.str.502, ptr @.compoundliteral.504, ptr @.compoundliteral.505, ptr @.compoundliteral.506, ptr @.compoundliteral.507, ptr @.compoundliteral.508, ptr @.compoundliteral.509, ptr @.compoundliteral.510, ptr @.compoundliteral.511, ptr @.compoundliteral.512, ptr @.compoundliteral.513, ptr @.compoundliteral.514, ptr @.compoundliteral.515, ptr @.compoundliteral.516, ptr @.compoundliteral.517, ptr @da7218_out_filtl_biq_sel, ptr @da7218_out_filt_biq_sel_txt, ptr @.str.518, ptr @.str.519, ptr @da7218_out_filtr_biq_sel, ptr @.str.520, ptr @.compoundliteral.521, ptr @.str.522, ptr @.compoundliteral.523, ptr @.compoundliteral.524, ptr @.compoundliteral.525, ptr @.compoundliteral.526, ptr @.compoundliteral.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.534, ptr @.str.537, ptr @.str.539, ptr @.str.540, ptr @.str.541, ptr @.str.542, ptr @.str.543, ptr @.str.544, ptr @.str.545, ptr @.str.546, ptr @.str.547, ptr @.str.548, ptr @.str.549, ptr @.str.550, ptr @.str.551, ptr @.str.552, ptr @.str.553, ptr @.str.554, ptr @.str.555, ptr @.str.556, ptr @.str.557, ptr @.str.558, ptr @.str.559, ptr @.str.560, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.565, ptr @.str.566, ptr @.str.567, ptr @.str.568, ptr @.str.569, ptr @.str.570, ptr @.str.571, ptr @.str.572, ptr @.str.573, ptr @.str.574, ptr @.str.575, ptr @.str.576, ptr @.str.577, ptr @.str.578, ptr @.str.579, ptr @.str.580, ptr @.str.581, ptr @.str.582, ptr @.str.583, ptr @.str.584, ptr @.str.585, ptr @.str.586, ptr @da7218_dai_ops, ptr @.str.587, ptr @.str.588, ptr @.str.590, ptr @.str.593, ptr @.str.595, ptr @.str.596, ptr @.str.598, ptr @.str.601, ptr @.str.603, ptr @.str.604, ptr @.str.606, ptr @.str.609, ptr @.str.611, ptr @.str.612, ptr @switch.table.da7218_probe, ptr @switch.table.da7218_probe.613, ptr @switch.table.da7218_in_filter_event, ptr @switch.table.da7218_set_dai_fmt, ptr @switch.table.da7218_set_dai_fmt.614, ptr @switch.table.da7218_set_dai_tdm_slot, ptr @switch.table.da7218_hw_params], section "llvm.metadata"
@0 = internal global [724 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_da7218 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_reg_defaults to i32), i32 1328, i32 1664, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_snd_controls to i32), i32 7296, i32 9120, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_audio_map to i32), i32 5304, i32 6624, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mic_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mixin_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_in_dig_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_ags_trigger_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_ags_att_max_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_hold_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_threshold_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_ana_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_anticlip_step to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_integ_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_integ_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_in1_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_in1_audio_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_in1_voice_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_in2_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_in2_audio_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_in2_voice_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dmix_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_tonegen_dtmf_key to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_tonegen_swg_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_gain_ramp_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dgs_trigger_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dgs_rise_coeff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dgs_fall_coeff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dgs_anticlip_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dgs_signal_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.232 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out1_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out1_audio_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out1_voice_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_eq_band_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_dig_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mixout_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dac_ng_setup_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dac_ng_rampup_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dac_ng_rampdown_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dac_ng_threshold_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_cp_mchange to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_cp_fcontrol to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_cp_tau_delay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_hp_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.285 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_calib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_attack_rate_txt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_release_rate_txt to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_hold_time_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_alc_anticlip_step_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_integ_rate_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_hpf_mode_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_hpf_mode_val to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_audio_hpf_corner_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_voice_hpf_corner_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_tonegen_dtmf_key_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_tonegen_swg_sel_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_gain_ramp_rate_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dgs_rise_coeff_txt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dgs_fall_coeff_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dac_ng_setup_time_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dac_ng_rampup_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dac_ng_rampdown_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_cp_mchange_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_cp_mchange_val to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_cp_fcontrol_txt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_cp_tau_delay_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mic1_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mic2_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1906 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_sidetone_in_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1930 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_dai1l_mix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1939 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_dai1r_mix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_dai2l_mix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1951 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_dai2r_mix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1957 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_filtl_mix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_filtr_mix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1984 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_filtl_biq_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1990 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_filtr_biq_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1996 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_st_out_filtl_mix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.2005 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_st_out_filtr_mix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.457 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.459 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dapm_widgets to i32), i32 9180, i32 11456, i32 ptrtoint (ptr @___asan_gen_.2041 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mic1_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2044 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mic_sel_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2047 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_mic2_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2056 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_sidetone_in_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2059 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_sidetone_in_sel_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2062 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.468 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2065 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.469 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2066 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.470 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2067 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.471 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2068 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.473 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.475 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.477 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2080 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.478 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2081 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.479 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.480 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.481 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2084 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.482 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.483 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2086 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.484 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.485 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2088 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.486 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2089 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.487 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2090 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.488 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.489 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2092 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.490 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2093 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.491 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.492 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.493 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.494 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.495 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2098 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.496 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.497 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.498 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2101 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dai_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dai_event._entry.501 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.504 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2117 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.505 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.506 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2119 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.507 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2120 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.508 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2121 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.509 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2122 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.510 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2123 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.511 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.512 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2125 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.513 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2126 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.514 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2127 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.515 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2128 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.516 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.517 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_filtl_biq_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_filt_biq_sel_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2134 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.519 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_out_filtr_biq_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2143 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.520 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.521 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.523 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.524 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.525 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2155 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.526 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2156 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.527 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2157 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.528 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.529 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_handle_supplies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.531 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_handle_supplies._entry.533 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.534 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_handle_supplies._entry.536 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.537 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.539 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.540 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.541 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.542 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.543 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.544 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.545 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.546 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.547 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.548 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.549 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.550 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.551 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.552 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.553 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.554 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.555 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.556 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.557 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.558 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.559 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_micbias_lvl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.560 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.561 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.562 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.564 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_mic_amp_in_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.565 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.566 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.567 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.568 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_dmic_data_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.569 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.570 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.571 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.572 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_dmic_samplephase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.573 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.574 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_dmic_clkrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.575 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.576 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_jack_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.577 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.578 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_jack_debounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.579 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.580 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_of_jack_thr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.581 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.582 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.583 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.584 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.585 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.586 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.2362 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.587 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.588 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_sysclk._entry.589 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.590 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_sysclk._entry.592 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.593 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.595 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.596 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_pll._entry.597 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.598 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_pll._entry.600 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.601 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.603 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.604 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_tdm_slot._entry.605 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.606 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_set_dai_tdm_slot._entry.608 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.609 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7218_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.611 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.612 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7218_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2437 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7218_probe.613 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2438 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7218_in_filter_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2439 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7218_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2440 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7218_set_dai_fmt.614 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7218_set_dai_tdm_slot to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2442 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7218_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2443 to i32), i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da7218_hpldet(ptr noundef %component, ptr noundef %jack) #0 align 64 {
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
  %dev_id = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %jack1 = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jack, ptr %jack1, align 4
  %tobool.not = icmp eq ptr %jack, null
  %cond = select i1 %tobool.not, i32 0, i32 128
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 216, i32 noundef 128, i32 noundef %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_i2c_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da7218_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da7218_i2c_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @da7218_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #10
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
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call.i58 = tail call ptr @of_match_device(ptr noundef nonnull @da7218_of_match, ptr noundef %dev) #10
  %tobool.not.i = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i, label %if.then3.if.end7_crit_edge, label %if.then.i

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i58, i32 0, i32 3
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then.i, %if.then3.if.end7_crit_edge
  %.sink = phi i32 [ %7, %if.else ], [ %5, %if.then.i ], [ -22, %if.then3.if.end7_crit_edge ]
  %dev_id6 = getelementptr inbounds %struct.da7218_priv, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %dev_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %dev_id6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.sink)
  %switch = icmp ult i32 %.sink, 2
  br i1 %switch, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %irq14 = getelementptr inbounds %struct.da7218_priv, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %irq14, align 4
  %call15 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da7218_regmap_config, ptr noundef nonnull @da7218_i2c_probe._key, ptr noundef nonnull @.str.6) #10
  %regmap = getelementptr inbounds %struct.da7218_priv, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %13) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %call27 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_da7218, ptr noundef nonnull @da7218_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call27) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.end25.cleanup_crit_edge, %if.then18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %13, %if.then18 ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %do.end32 ], [ %call27, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da7218_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 8, label %entry.return_crit_edge
    i32 9, label %entry.return_crit_edge1
    i32 22, label %entry.return_crit_edge2
    i32 68, label %entry.return_crit_edge3
    i32 69, label %entry.return_crit_edge4
    i32 70, label %entry.return_crit_edge5
    i32 71, label %entry.return_crit_edge6
    i32 72, label %entry.return_crit_edge7
    i32 149, label %entry.return_crit_edge8
    i32 152, label %entry.return_crit_edge9
    i32 160, label %entry.return_crit_edge10
    i32 194, label %entry.return_crit_edge11
    i32 212, label %entry.return_crit_edge12
    i32 218, label %entry.return_crit_edge13
    i32 236, label %entry.return_crit_edge14
    i32 237, label %entry.return_crit_edge15
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_probe(ptr noundef %component) #0 align 64 {
entry:
  %of_str.i = alloca ptr, align 4
  %of_val32.i = alloca i32, align 4
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
  %arrayidx1.i = getelementptr %struct.da7218_priv, ptr %3, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.539, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.da7218_priv, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.540, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.da7218_priv, ptr %3, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.541, ptr %arrayidx1.2.i, align 4
  %7 = load ptr, ptr %dev.i, align 4
  %call3.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %7, i32 noundef 3, ptr noundef %arrayidx1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.531) #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %consumer.i = getelementptr %struct.da7218_priv, ptr %3, i32 0, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer.i, align 4
  %call7.i = tail call i32 @regulator_get_voltage(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 1500000
  br i1 %cmp8.i, label %do.end12.i, label %if.else.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.534) #13
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %call7.i)
  %cmp14.i = icmp ult i32 %call7.i, 2500000
  %spec.select.i = zext i1 %cmp14.i to i32
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %do.end12.i
  %io_voltage_lvl.0.i = phi i32 [ 0, %do.end12.i ], [ %spec.select.i, %if.else.i ]
  %call20.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end, label %do.end25.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.537) #13
  br label %cleanup

if.end:                                           ; preds = %if.end17.i
  %call28.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 1) #10
  %call29.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 224, i32 noundef %io_voltage_lvl.0.i) #10
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %19, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %driver_data.i.i.i100 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i100, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_str.i) #10
  %22 = ptrtoint ptr %of_str.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %of_str.i, align 4, !annotation !1079
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_val32.i) #10
  %23 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %of_val32.i, align 4, !annotation !1079
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 48, i32 noundef 3520) #10
  %tobool.not.i101 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i101, label %if.then3.da7218_of_to_pdata.exit_crit_edge, label %if.end.i102

if.then3.da7218_of_to_pdata.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7218_of_to_pdata.exit

if.end.i102:                                      ; preds = %if.then3
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.542, ptr noundef nonnull %of_val32.i, i32 noundef 1, i32 noundef 0) #10
  %24 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i = icmp sgt i32 %24, -1
  br i1 %cmp.i, label %if.then4.i, label %if.end.i102.if.end7.i_crit_edge

if.end.i102.if.end7.i_crit_edge:                  ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i102
  %25 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %of_val32.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.615)
  switch i32 %26, label %do.end.i.i [
    i32 1200, label %if.then4.i.if.end7.i_crit_edge
    i32 1600, label %sw.bb1.i.i
    i32 1800, label %sw.bb2.i.i
    i32 2000, label %sw.bb3.i.i
    i32 2200, label %sw.bb4.i.i
    i32 2400, label %sw.bb5.i.i
    i32 2600, label %sw.bb6.i.i
    i32 2800, label %sw.bb7.i.i
    i32 3000, label %sw.bb8.i.i
  ]

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb1.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb2.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb3.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb4.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb5.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb6.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb7.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

sw.bb8.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

do.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.560) #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then4.i.if.end7.i_crit_edge, %if.end.i102.if.end7.i_crit_edge
  %storemerge.i = phi i32 [ 0, %if.end.i102.if.end7.i_crit_edge ], [ 0, %do.end.i.i ], [ 7, %sw.bb8.i.i ], [ 6, %sw.bb7.i.i ], [ 5, %sw.bb6.i.i ], [ 4, %sw.bb5.i.i ], [ 3, %sw.bb4.i.i ], [ 2, %sw.bb3.i.i ], [ 1, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ -1, %if.then4.i.if.end7.i_crit_edge ]
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge.i, ptr %call.i.i, align 4
  %call.i.i200.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.543, ptr noundef nonnull %of_val32.i, i32 noundef 1, i32 noundef 0) #10
  %31 = call i32 @llvm.smin.i32(i32 %call.i.i200.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp9.i = icmp sgt i32 %31, -1
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end7.i
  %32 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %of_val32.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.616)
  switch i32 %33, label %do.end.i210.i [
    i32 1200, label %if.then10.i.if.end14.i_crit_edge
    i32 1600, label %sw.bb1.i201.i
    i32 1800, label %sw.bb2.i202.i
    i32 2000, label %sw.bb3.i203.i
    i32 2200, label %sw.bb4.i204.i
    i32 2400, label %sw.bb5.i205.i
    i32 2600, label %sw.bb6.i206.i
    i32 2800, label %sw.bb7.i207.i
    i32 3000, label %sw.bb8.i208.i
  ]

if.then10.i.if.end14.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb1.i201.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb2.i202.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb3.i203.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb4.i204.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb5.i205.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb6.i206.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb7.i207.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

sw.bb8.i208.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.end.i210.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.560) #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i210.i, %sw.bb8.i208.i, %sw.bb7.i207.i, %sw.bb6.i206.i, %sw.bb5.i205.i, %sw.bb4.i204.i, %sw.bb3.i203.i, %sw.bb2.i202.i, %sw.bb1.i201.i, %if.then10.i.if.end14.i_crit_edge, %if.end7.i.if.end14.i_crit_edge
  %.sink.i = phi i32 [ 0, %do.end.i210.i ], [ 7, %sw.bb8.i208.i ], [ 6, %sw.bb7.i207.i ], [ 5, %sw.bb6.i206.i ], [ 4, %sw.bb5.i205.i ], [ 3, %sw.bb4.i204.i ], [ 2, %sw.bb3.i203.i ], [ 1, %sw.bb2.i202.i ], [ 0, %sw.bb1.i201.i ], [ -1, %if.then10.i.if.end14.i_crit_edge ], [ 0, %if.end7.i.if.end14.i_crit_edge ]
  %micbias2_lvl13.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %micbias2_lvl13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i, ptr %micbias2_lvl13.i, align 4
  %call15.i = call i32 @of_property_read_string(ptr noundef nonnull %19, ptr noundef nonnull @.str.544, ptr noundef nonnull %of_str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  %38 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_str.i, align 4
  %call.i213.i = call i32 @strcmp(ptr noundef %39, ptr noundef nonnull dereferenceable(5) @.str.562) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213.i)
  %tobool.not.i.i = icmp eq i32 %call.i213.i, 0
  br i1 %tobool.not.i.i, label %if.then17.i.if.end21.i_crit_edge, label %if.else.i.i

if.then17.i.if.end21.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.else.i.i:                                      ; preds = %if.then17.i
  %call1.i.i = call i32 @strcmp(ptr noundef %39, ptr noundef nonnull dereferenceable(5) @.str.563) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.end21.i_crit_edge, label %if.else4.i.i

if.else.i.i.if.end21.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %call5.i.i = call i32 @strcmp(ptr noundef %39, ptr noundef nonnull dereferenceable(5) @.str.564) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else4.i.i.if.end21.i_crit_edge, label %do.end.i215.i

if.else4.i.i.if.end21.i_crit_edge:                ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

do.end.i215.i:                                    ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.565) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i215.i, %if.else4.i.i.if.end21.i_crit_edge, %if.else.i.i.if.end21.i_crit_edge, %if.then17.i.if.end21.i_crit_edge, %if.end14.i.if.end21.i_crit_edge
  %.sink307.i = phi i32 [ 0, %do.end.i215.i ], [ 0, %if.then17.i.if.end21.i_crit_edge ], [ 1, %if.else.i.i.if.end21.i_crit_edge ], [ 2, %if.else4.i.i.if.end21.i_crit_edge ], [ 0, %if.end14.i.if.end21.i_crit_edge ]
  %mic1_amp_in_sel20.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %mic1_amp_in_sel20.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink307.i, ptr %mic1_amp_in_sel20.i, align 4
  %call22.i = call i32 @of_property_read_string(ptr noundef nonnull %19, ptr noundef nonnull @.str.545, ptr noundef nonnull %of_str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end21.i
  %43 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_str.i, align 4
  %call.i217.i = call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(5) @.str.562) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217.i)
  %tobool.not.i218.i = icmp eq i32 %call.i217.i, 0
  br i1 %tobool.not.i218.i, label %if.then24.i.if.end28.i_crit_edge, label %if.else.i221.i

if.then24.i.if.end28.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.else.i221.i:                                   ; preds = %if.then24.i
  %call1.i219.i = call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(5) @.str.563) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i219.i)
  %tobool2.not.i220.i = icmp eq i32 %call1.i219.i, 0
  br i1 %tobool2.not.i220.i, label %if.else.i221.i.if.end28.i_crit_edge, label %if.else4.i224.i

if.else.i221.i.if.end28.i_crit_edge:              ; preds = %if.else.i221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.else4.i224.i:                                  ; preds = %if.else.i221.i
  %call5.i222.i = call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(5) @.str.564) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i222.i)
  %tobool6.not.i223.i = icmp eq i32 %call5.i222.i, 0
  br i1 %tobool6.not.i223.i, label %if.else4.i224.i.if.end28.i_crit_edge, label %do.end.i226.i

if.else4.i224.i.if.end28.i_crit_edge:             ; preds = %if.else4.i224.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.end.i226.i:                                    ; preds = %if.else4.i224.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.565) #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i226.i, %if.else4.i224.i.if.end28.i_crit_edge, %if.else.i221.i.if.end28.i_crit_edge, %if.then24.i.if.end28.i_crit_edge, %if.end21.i.if.end28.i_crit_edge
  %.sink308.i = phi i32 [ 0, %do.end.i226.i ], [ 0, %if.then24.i.if.end28.i_crit_edge ], [ 1, %if.else.i221.i.if.end28.i_crit_edge ], [ 2, %if.else4.i224.i.if.end28.i_crit_edge ], [ 0, %if.end21.i.if.end28.i_crit_edge ]
  %mic2_amp_in_sel27.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %mic2_amp_in_sel27.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink308.i, ptr %mic2_amp_in_sel27.i, align 4
  %call29.i103 = call i32 @of_property_read_string(ptr noundef nonnull %19, ptr noundef nonnull @.str.546, ptr noundef nonnull %of_str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i103)
  %tobool30.not.i = icmp eq i32 %call29.i103, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end28.i.if.end35.i_crit_edge

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end28.i
  %48 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_str.i, align 4
  %call.i229.i = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(12) @.str.567) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229.i)
  %tobool.not.i230.i = icmp eq i32 %call.i229.i, 0
  br i1 %tobool.not.i230.i, label %if.then31.i.if.end35.i_crit_edge, label %if.else.i233.i

if.then31.i.if.end35.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.else.i233.i:                                   ; preds = %if.then31.i
  %call1.i231.i = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(12) @.str.568) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i231.i)
  %tobool2.not.i232.i = icmp eq i32 %call1.i231.i, 0
  br i1 %tobool2.not.i232.i, label %if.else.i233.i.if.end35.i_crit_edge, label %do.end.i235.i

if.else.i233.i.if.end35.i_crit_edge:              ; preds = %if.else.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

do.end.i235.i:                                    ; preds = %if.else.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.569) #13
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end.i235.i, %if.else.i233.i.if.end35.i_crit_edge, %if.then31.i.if.end35.i_crit_edge, %if.end28.i.if.end35.i_crit_edge
  %.sink309.i = phi i32 [ 0, %do.end.i235.i ], [ 0, %if.then31.i.if.end35.i_crit_edge ], [ 1, %if.else.i233.i.if.end35.i_crit_edge ], [ 0, %if.end28.i.if.end35.i_crit_edge ]
  %dmic1_data_sel34.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %dmic1_data_sel34.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink309.i, ptr %dmic1_data_sel34.i, align 4
  %call36.i = call i32 @of_property_read_string(ptr noundef nonnull %19, ptr noundef nonnull @.str.547, ptr noundef nonnull %of_str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end35.i.if.end42.i_crit_edge

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end35.i
  %53 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_str.i, align 4
  %call.i237.i = call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(11) @.str.571) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237.i)
  %tobool.not.i238.i = icmp eq i32 %call.i237.i, 0
  br i1 %tobool.not.i238.i, label %if.then38.i.if.end42.i_crit_edge, label %if.else.i241.i

if.then38.i.if.end42.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.else.i241.i:                                   ; preds = %if.then38.i
  %call1.i239.i = call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(16) @.str.572) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i239.i)
  %tobool2.not.i240.i = icmp eq i32 %call1.i239.i, 0
  br i1 %tobool2.not.i240.i, label %if.else.i241.i.if.end42.i_crit_edge, label %do.end.i243.i

if.else.i241.i.if.end42.i_crit_edge:              ; preds = %if.else.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

do.end.i243.i:                                    ; preds = %if.else.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.573) #13
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end.i243.i, %if.else.i241.i.if.end42.i_crit_edge, %if.then38.i.if.end42.i_crit_edge, %if.end35.i.if.end42.i_crit_edge
  %.sink310.i = phi i32 [ 0, %do.end.i243.i ], [ 0, %if.then38.i.if.end42.i_crit_edge ], [ 1, %if.else.i241.i.if.end42.i_crit_edge ], [ 0, %if.end35.i.if.end42.i_crit_edge ]
  %dmic1_samplephase41.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %dmic1_samplephase41.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink310.i, ptr %dmic1_samplephase41.i, align 4
  %call.i.i245.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.548, ptr noundef nonnull %of_val32.i, i32 noundef 1, i32 noundef 0) #10
  %58 = call i32 @llvm.smin.i32(i32 %call.i.i245.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp44.i = icmp sgt i32 %58, -1
  br i1 %cmp44.i, label %if.then45.i, label %if.end42.i.if.end49.i_crit_edge

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end42.i
  %59 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %of_val32.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.617)
  switch i32 %60, label %do.end.i248.i [
    i32 1500000, label %if.then45.i.if.end49.i_crit_edge
    i32 3000000, label %sw.bb1.i246.i
  ]

if.then45.i.if.end49.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

sw.bb1.i246.i:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

do.end.i248.i:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.575) #13
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end.i248.i, %sw.bb1.i246.i, %if.then45.i.if.end49.i_crit_edge, %if.end42.i.if.end49.i_crit_edge
  %.sink311.i = phi i32 [ 0, %do.end.i248.i ], [ 0, %sw.bb1.i246.i ], [ 1, %if.then45.i.if.end49.i_crit_edge ], [ 0, %if.end42.i.if.end49.i_crit_edge ]
  %dmic1_clk_rate48.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 8
  %64 = ptrtoint ptr %dmic1_clk_rate48.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink311.i, ptr %dmic1_clk_rate48.i, align 4
  %call50.i = call i32 @of_property_read_string(ptr noundef nonnull %19, ptr noundef nonnull @.str.549, ptr noundef nonnull %of_str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.end49.i.if.end56.i_crit_edge

if.end49.i.if.end56.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.then52.i:                                      ; preds = %if.end49.i
  %65 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_str.i, align 4
  %call.i250.i = call i32 @strcmp(ptr noundef %66, ptr noundef nonnull dereferenceable(12) @.str.567) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250.i)
  %tobool.not.i251.i = icmp eq i32 %call.i250.i, 0
  br i1 %tobool.not.i251.i, label %if.then52.i.if.end56.i_crit_edge, label %if.else.i254.i

if.then52.i.if.end56.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.else.i254.i:                                   ; preds = %if.then52.i
  %call1.i252.i = call i32 @strcmp(ptr noundef %66, ptr noundef nonnull dereferenceable(12) @.str.568) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i252.i)
  %tobool2.not.i253.i = icmp eq i32 %call1.i252.i, 0
  br i1 %tobool2.not.i253.i, label %if.else.i254.i.if.end56.i_crit_edge, label %do.end.i256.i

if.else.i254.i.if.end56.i_crit_edge:              ; preds = %if.else.i254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

do.end.i256.i:                                    ; preds = %if.else.i254.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.569) #13
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end.i256.i, %if.else.i254.i.if.end56.i_crit_edge, %if.then52.i.if.end56.i_crit_edge, %if.end49.i.if.end56.i_crit_edge
  %.sink312.i = phi i32 [ 0, %do.end.i256.i ], [ 0, %if.then52.i.if.end56.i_crit_edge ], [ 1, %if.else.i254.i.if.end56.i_crit_edge ], [ 0, %if.end49.i.if.end56.i_crit_edge ]
  %dmic2_data_sel55.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %dmic2_data_sel55.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink312.i, ptr %dmic2_data_sel55.i, align 4
  %call57.i = call i32 @of_property_read_string(ptr noundef nonnull %19, ptr noundef nonnull @.str.550, ptr noundef nonnull %of_str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.end56.i.if.end63.i_crit_edge

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.end56.i
  %70 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_str.i, align 4
  %call.i259.i = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(11) @.str.571) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.i)
  %tobool.not.i260.i = icmp eq i32 %call.i259.i, 0
  br i1 %tobool.not.i260.i, label %if.then59.i.if.end63.i_crit_edge, label %if.else.i263.i

if.then59.i.if.end63.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.else.i263.i:                                   ; preds = %if.then59.i
  %call1.i261.i = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(16) @.str.572) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261.i)
  %tobool2.not.i262.i = icmp eq i32 %call1.i261.i, 0
  br i1 %tobool2.not.i262.i, label %if.else.i263.i.if.end63.i_crit_edge, label %do.end.i265.i

if.else.i263.i.if.end63.i_crit_edge:              ; preds = %if.else.i263.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

do.end.i265.i:                                    ; preds = %if.else.i263.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.573) #13
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end.i265.i, %if.else.i263.i.if.end63.i_crit_edge, %if.then59.i.if.end63.i_crit_edge, %if.end56.i.if.end63.i_crit_edge
  %.sink313.i = phi i32 [ 0, %do.end.i265.i ], [ 0, %if.then59.i.if.end63.i_crit_edge ], [ 1, %if.else.i263.i.if.end63.i_crit_edge ], [ 0, %if.end56.i.if.end63.i_crit_edge ]
  %dmic2_samplephase62.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %dmic2_samplephase62.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink313.i, ptr %dmic2_samplephase62.i, align 4
  %call.i.i268.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.551, ptr noundef nonnull %of_val32.i, i32 noundef 1, i32 noundef 0) #10
  %75 = call i32 @llvm.smin.i32(i32 %call.i.i268.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp65.i = icmp sgt i32 %75, -1
  br i1 %cmp65.i, label %if.then66.i, label %if.end63.i.if.end70.i_crit_edge

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end63.i
  %76 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %of_val32.i, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.618)
  switch i32 %77, label %do.end.i271.i [
    i32 1500000, label %if.then66.i.if.end70.i_crit_edge
    i32 3000000, label %sw.bb1.i269.i
  ]

if.then66.i.if.end70.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

sw.bb1.i269.i:                                    ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

do.end.i271.i:                                    ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.575) #13
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end.i271.i, %sw.bb1.i269.i, %if.then66.i.if.end70.i_crit_edge, %if.end63.i.if.end70.i_crit_edge
  %.sink314.i = phi i32 [ 0, %do.end.i271.i ], [ 0, %sw.bb1.i269.i ], [ 1, %if.then66.i.if.end70.i_crit_edge ], [ 0, %if.end63.i.if.end70.i_crit_edge ]
  %dmic2_clk_rate69.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 9
  %81 = ptrtoint ptr %dmic2_clk_rate69.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink314.i, ptr %dmic2_clk_rate69.i, align 4
  %dev_id.i = getelementptr inbounds %struct.da7218_priv, ptr %21, i32 0, i32 3
  %82 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp71.i = icmp eq i32 %83, 0
  br i1 %cmp71.i, label %if.then72.i, label %if.end70.i.if.end76.i_crit_edge

if.end70.i.if.end76.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i

if.then72.i:                                      ; preds = %if.end70.i
  %call.i274.i = call ptr @of_find_property(ptr noundef nonnull %19, ptr noundef nonnull @.str.552, ptr noundef null) #10
  %tobool.i.not.i = icmp eq ptr %call.i274.i, null
  br i1 %tobool.i.not.i, label %if.then72.i.if.end76thread-pre-split.i_crit_edge, label %if.then74.i

if.then72.i.if.end76thread-pre-split.i_crit_edge: ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76thread-pre-split.i

if.then74.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  %hp_diff_single_supply.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 10
  %84 = ptrtoint ptr %hp_diff_single_supply.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %hp_diff_single_supply.i, align 4
  br label %if.end76thread-pre-split.i

if.end76thread-pre-split.i:                       ; preds = %if.then74.i, %if.then72.i.if.end76thread-pre-split.i_crit_edge
  %85 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr.i = load i32, ptr %dev_id.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end76thread-pre-split.i, %if.end70.i.if.end76.i_crit_edge
  %86 = phi i32 [ %.pr.i, %if.end76thread-pre-split.i ], [ %83, %if.end70.i.if.end76.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp78.i = icmp eq i32 %86, 1
  br i1 %cmp78.i, label %if.then79.i, label %if.end76.i.da7218_of_to_pdata.exit_crit_edge

if.end76.i.da7218_of_to_pdata.exit_crit_edge:     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7218_of_to_pdata.exit

if.then79.i:                                      ; preds = %if.end76.i
  %call80.i = call ptr @of_get_child_by_name(ptr noundef nonnull %19, ptr noundef nonnull @.str.553) #10
  %tobool81.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool81.not.i, label %if.then79.i.da7218_of_to_pdata.exit_crit_edge, label %if.end83.i

if.then79.i.da7218_of_to_pdata.exit_crit_edge:    ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7218_of_to_pdata.exit

if.end83.i:                                       ; preds = %if.then79.i
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 4
  %call.i275.i = call noalias ptr @devm_kmalloc(ptr noundef %88, i32 noundef 16, i32 noundef 3520) #10
  %tobool86.not.i = icmp eq ptr %call.i275.i, null
  br i1 %tobool86.not.i, label %if.end83.i.cleanup.sink.split.i_crit_edge, label %if.end88.i

if.end83.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end88.i:                                       ; preds = %if.end83.i
  %hpldet_pdata89.i = getelementptr inbounds %struct.da7218_pdata, ptr %call.i.i, i32 0, i32 11
  %89 = ptrtoint ptr %hpldet_pdata89.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i275.i, ptr %hpldet_pdata89.i, align 4
  %call.i.i276.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call80.i, ptr noundef nonnull @.str.554, ptr noundef nonnull %of_val32.i, i32 noundef 1, i32 noundef 0) #10
  %90 = call i32 @llvm.smin.i32(i32 %call.i.i276.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp91.i = icmp sgt i32 %90, -1
  br i1 %cmp91.i, label %if.then92.i, label %if.end88.i.if.end96.i_crit_edge

if.end88.i.if.end96.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

if.then92.i:                                      ; preds = %if.end88.i
  %91 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %of_val32.i, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.619)
  switch i32 %92, label %do.end.i285.i [
    i32 5, label %if.then92.i.if.end96.i_crit_edge
    i32 10, label %sw.bb1.i277.i
    i32 20, label %sw.bb2.i278.i
    i32 40, label %sw.bb3.i279.i
    i32 80, label %sw.bb4.i280.i
    i32 160, label %sw.bb5.i281.i
    i32 320, label %sw.bb6.i282.i
    i32 640, label %sw.bb7.i283.i
  ]

if.then92.i.if.end96.i_crit_edge:                 ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

sw.bb1.i277.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

sw.bb2.i278.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

sw.bb3.i279.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

sw.bb4.i280.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

sw.bb5.i281.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

sw.bb6.i282.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

sw.bb7.i283.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

do.end.i285.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.577) #13
  br label %if.end96.i

if.end96.i:                                       ; preds = %do.end.i285.i, %sw.bb7.i283.i, %sw.bb6.i282.i, %sw.bb5.i281.i, %sw.bb4.i280.i, %sw.bb3.i279.i, %sw.bb2.i278.i, %sw.bb1.i277.i, %if.then92.i.if.end96.i_crit_edge, %if.end88.i.if.end96.i_crit_edge
  %storemerge198.i = phi i32 [ 3, %if.end88.i.if.end96.i_crit_edge ], [ 3, %do.end.i285.i ], [ 7, %sw.bb7.i283.i ], [ 6, %sw.bb6.i282.i ], [ 5, %sw.bb5.i281.i ], [ 4, %sw.bb4.i280.i ], [ 3, %sw.bb3.i279.i ], [ 2, %sw.bb2.i278.i ], [ 1, %sw.bb1.i277.i ], [ 0, %if.then92.i.if.end96.i_crit_edge ]
  %96 = ptrtoint ptr %call.i275.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %storemerge198.i, ptr %call.i275.i, align 4
  %call.i.i287.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call80.i, ptr noundef nonnull @.str.555, ptr noundef nonnull %of_val32.i, i32 noundef 1, i32 noundef 0) #10
  %97 = call i32 @llvm.smin.i32(i32 %call.i.i287.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp98.i = icmp sgt i32 %97, -1
  br i1 %cmp98.i, label %if.then99.i, label %if.end96.i.if.end103.i_crit_edge

if.end96.i.if.end103.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i

if.then99.i:                                      ; preds = %if.end96.i
  %98 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %of_val32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %99)
  %100 = icmp ult i32 %99, 5
  br i1 %100, label %switch.hole_check, label %if.then99.i.do.end.i292.i_crit_edge

if.then99.i.do.end.i292.i_crit_edge:              ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i292.i

do.end.i292.i:                                    ; preds = %switch.hole_check.do.end.i292.i_crit_edge, %if.then99.i.do.end.i292.i_crit_edge
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.579) #13
  br label %if.end103.i

switch.hole_check:                                ; preds = %if.then99.i
  %switch.maskindex = trunc i32 %99 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %103 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %switch.lobit.not = icmp eq i8 %103, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i292.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i292.i_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i292.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da7218_probe, i32 0, i32 %99
  %104 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %104)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %switch.lookup, %do.end.i292.i, %if.end96.i.if.end103.i_crit_edge
  %.sink315.i = phi i32 [ 1, %do.end.i292.i ], [ 1, %if.end96.i.if.end103.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %jack_debounce102.i = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %call.i275.i, i32 0, i32 1
  %105 = ptrtoint ptr %jack_debounce102.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.sink315.i, ptr %jack_debounce102.i, align 4
  %call.i.i294.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call80.i, ptr noundef nonnull @.str.556, ptr noundef nonnull %of_val32.i, i32 noundef 1, i32 noundef 0) #10
  %106 = call i32 @llvm.smin.i32(i32 %call.i.i294.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp105.i = icmp sgt i32 %106, -1
  br i1 %cmp105.i, label %if.then106.i, label %if.end103.i.if.end110.i_crit_edge

if.end103.i.if.end110.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.i

if.then106.i:                                     ; preds = %if.end103.i
  %107 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %of_val32.i, align 4
  %109 = add i32 %108, -84
  %110 = call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %110)
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %if.then106.i.if.end110.i_crit_edge, label %do.end.i299.i

if.then106.i.if.end110.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.i

do.end.i299.i:                                    ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %113, ptr noundef nonnull @.str.581) #13
  br label %if.end110.i

if.end110.i:                                      ; preds = %do.end.i299.i, %if.then106.i.if.end110.i_crit_edge, %if.end103.i.if.end110.i_crit_edge
  %.sink316.i = phi i32 [ 0, %do.end.i299.i ], [ 0, %if.end103.i.if.end110.i_crit_edge ], [ %110, %if.then106.i.if.end110.i_crit_edge ]
  %jack_thr109.i = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %call.i275.i, i32 0, i32 2
  %114 = ptrtoint ptr %jack_thr109.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink316.i, ptr %jack_thr109.i, align 4
  %call.i301.i = call ptr @of_find_property(ptr noundef nonnull %call80.i, ptr noundef nonnull @.str.557, ptr noundef null) #10
  %tobool.i302.not.i = icmp eq ptr %call.i301.i, null
  br i1 %tobool.i302.not.i, label %if.end110.i.if.end113.i_crit_edge, label %if.then112.i

if.end110.i.if.end113.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

if.then112.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #12
  %comp_inv.i = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %call.i275.i, i32 0, i32 3
  %115 = ptrtoint ptr %comp_inv.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %comp_inv.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then112.i, %if.end110.i.if.end113.i_crit_edge
  %call.i303.i = call ptr @of_find_property(ptr noundef nonnull %call80.i, ptr noundef nonnull @.str.558, ptr noundef null) #10
  %tobool.i304.not.i = icmp eq ptr %call.i303.i, null
  br i1 %tobool.i304.not.i, label %if.end113.i.if.end116.i_crit_edge, label %if.then115.i

if.end113.i.if.end116.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.i

if.then115.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  %hyst.i = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %call.i275.i, i32 0, i32 4
  %116 = ptrtoint ptr %hyst.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %hyst.i, align 1
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then115.i, %if.end113.i.if.end116.i_crit_edge
  %call.i305.i = call ptr @of_find_property(ptr noundef nonnull %call80.i, ptr noundef nonnull @.str.559, ptr noundef null) #10
  %tobool.i306.not.i = icmp eq ptr %call.i305.i, null
  br i1 %tobool.i306.not.i, label %if.end116.i.cleanup.sink.split.i_crit_edge, label %if.then118.i

if.end116.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then118.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  %discharge.i = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %call.i275.i, i32 0, i32 5
  %117 = ptrtoint ptr %discharge.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %discharge.i, align 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then118.i, %if.end116.i.cleanup.sink.split.i_crit_edge, %if.end83.i.cleanup.sink.split.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call80.i) #10
  br label %da7218_of_to_pdata.exit

da7218_of_to_pdata.exit:                          ; preds = %cleanup.sink.split.i, %if.then79.i.da7218_of_to_pdata.exit_crit_edge, %if.end76.i.da7218_of_to_pdata.exit_crit_edge, %if.then3.da7218_of_to_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_val32.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_str.i) #10
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %platform_data.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 7
  %118 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %platform_data.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %da7218_of_to_pdata.exit
  %storemerge = phi ptr [ %119, %if.else ], [ %call.i.i, %da7218_of_to_pdata.exit ]
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %storemerge, ptr %3, align 4
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i105 = getelementptr inbounds %struct.device, ptr %122, i32 0, i32 8
  %123 = ptrtoint ptr %driver_data.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %driver_data.i.i.i105, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %tobool.not.i106 = icmp eq ptr %126, null
  br i1 %tobool.not.i106, label %if.end8.da7218_handle_pdata.exit_crit_edge, label %if.then.i

if.end8.da7218_handle_pdata.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7218_handle_pdata.exit

if.then.i:                                        ; preds = %if.end8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %switch.tableidx = add i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %129 = icmp ult i32 %switch.tableidx, 9
  br i1 %129, label %switch.lookup120, label %if.then.i.sw.epilog.i_crit_edge

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

switch.lookup120:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep121 = getelementptr inbounds [9 x i8], ptr @switch.table.da7218_probe.613, i32 0, i32 %switch.tableidx
  %130 = ptrtoint ptr %switch.gep121 to i32
  call void @__asan_load1_noabort(i32 %130)
  %switch.load122 = load i8, ptr %switch.gep121, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup120, %if.then.i.sw.epilog.i_crit_edge
  %micbias_lvl.0.i = phi i8 [ 0, %if.then.i.sw.epilog.i_crit_edge ], [ %switch.load122, %switch.lookup120 ]
  %micbias2_lvl.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %micbias2_lvl.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %micbias2_lvl.i, align 4
  %133 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.620)
  switch i32 %132, label %sw.epilog.i.sw.epilog18.i_crit_edge [
    i32 -1, label %sw.bb8.i
    i32 0, label %sw.epilog.i.sw.bb12.i_crit_edge
    i32 1, label %sw.epilog.i.sw.bb12.i_crit_edge123
    i32 2, label %sw.epilog.i.sw.bb12.i_crit_edge124
    i32 3, label %sw.epilog.i.sw.bb12.i_crit_edge125
    i32 4, label %sw.epilog.i.sw.bb12.i_crit_edge126
    i32 5, label %sw.epilog.i.sw.bb12.i_crit_edge127
    i32 6, label %sw.epilog.i.sw.bb12.i_crit_edge128
    i32 7, label %sw.epilog.i.sw.bb12.i_crit_edge129
  ]

sw.epilog.i.sw.bb12.i_crit_edge129:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge128:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge127:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge126:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge125:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge124:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge123:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.epilog.i.sw.epilog18.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog18.i

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = or i8 %micbias_lvl.0.i, -128
  br label %sw.epilog18.i

sw.bb12.i:                                        ; preds = %sw.epilog.i.sw.bb12.i_crit_edge, %sw.epilog.i.sw.bb12.i_crit_edge123, %sw.epilog.i.sw.bb12.i_crit_edge124, %sw.epilog.i.sw.bb12.i_crit_edge125, %sw.epilog.i.sw.bb12.i_crit_edge126, %sw.epilog.i.sw.bb12.i_crit_edge127, %sw.epilog.i.sw.bb12.i_crit_edge128, %sw.epilog.i.sw.bb12.i_crit_edge129
  %.tr.i = trunc i32 %132 to i8
  %135 = shl nuw nsw i8 %.tr.i, 4
  %conv17.i = or i8 %135, %micbias_lvl.0.i
  br label %sw.epilog18.i

sw.epilog18.i:                                    ; preds = %sw.bb12.i, %sw.bb8.i, %sw.epilog.i.sw.epilog18.i_crit_edge
  %micbias_lvl.1.i = phi i8 [ %micbias_lvl.0.i, %sw.epilog.i.sw.epilog18.i_crit_edge ], [ %conv17.i, %sw.bb12.i ], [ %134, %sw.bb8.i ]
  %conv19.i = zext i8 %micbias_lvl.1.i to i32
  %call20.i107 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 252, i32 noundef %conv19.i) #10
  %mic1_amp_in_sel.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 2
  %136 = ptrtoint ptr %mic1_amp_in_sel.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mic1_amp_in_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %137)
  %switch.i = icmp ult i32 %137, 3
  br i1 %switch.i, label %sw.bb21.i, label %sw.epilog18.i.sw.epilog24.i_crit_edge

sw.epilog18.i.sw.epilog24.i_crit_edge:            ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24.i

sw.bb21.i:                                        ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 183, i32 noundef %137) #10
  br label %sw.epilog24.i

sw.epilog24.i:                                    ; preds = %sw.bb21.i, %sw.epilog18.i.sw.epilog24.i_crit_edge
  %mic2_amp_in_sel.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 3
  %138 = ptrtoint ptr %mic2_amp_in_sel.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mic2_amp_in_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %139)
  %switch205.i = icmp ult i32 %139, 3
  br i1 %switch205.i, label %sw.bb25.i, label %sw.epilog24.i.sw.epilog28.i_crit_edge

sw.epilog24.i.sw.epilog28.i_crit_edge:            ; preds = %sw.epilog24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28.i

sw.bb25.i:                                        ; preds = %sw.epilog24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 187, i32 noundef %139) #10
  br label %sw.epilog28.i

sw.epilog28.i:                                    ; preds = %sw.bb25.i, %sw.epilog24.i.sw.epilog28.i_crit_edge
  %dmic1_data_sel.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 4
  %140 = ptrtoint ptr %dmic1_data_sel.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dmic1_data_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %141)
  %switch206.i = icmp ult i32 %141, 2
  %spec.select215.i = select i1 %switch206.i, i32 %141, i32 0
  %dmic1_samplephase.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 6
  %142 = ptrtoint ptr %dmic1_samplephase.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dmic1_samplephase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %switch207.i = icmp ult i32 %143, 2
  %144 = shl i32 %143, 1
  %conv41.i = select i1 %switch207.i, i32 %144, i32 0
  %dmic_cfg.1.i = or i32 %conv41.i, %spec.select215.i
  %dmic1_clk_rate.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 8
  %145 = ptrtoint ptr %dmic1_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dmic1_clk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %switch208.i = icmp ult i32 %146, 2
  %147 = shl i32 %146, 2
  %conv48.i = select i1 %switch208.i, i32 %147, i32 0
  %dmic_cfg.2.i = or i32 %dmic_cfg.1.i, %conv48.i
  %conv50.i = and i32 %dmic_cfg.2.i, 255
  %call51.i = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 240, i32 noundef 7, i32 noundef %conv50.i) #10
  %dmic2_data_sel.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 5
  %148 = ptrtoint ptr %dmic2_data_sel.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dmic2_data_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %switch209.i = icmp ult i32 %149, 2
  %dmic_cfg.3.i = select i1 %switch209.i, i32 %149, i32 0
  %dmic2_samplephase.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 7
  %150 = ptrtoint ptr %dmic2_samplephase.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dmic2_samplephase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %151)
  %switch210.i = icmp ult i32 %151, 2
  %152 = shl i32 %151, 1
  %conv64.i = select i1 %switch210.i, i32 %152, i32 0
  %dmic_cfg.4.i = or i32 %conv64.i, %dmic_cfg.3.i
  %dmic2_clk_rate.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 9
  %153 = ptrtoint ptr %dmic2_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dmic2_clk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %switch211.i = icmp ult i32 %154, 2
  %155 = shl i32 %154, 2
  %conv71.i = select i1 %switch211.i, i32 %155, i32 0
  %dmic_cfg.5.i = or i32 %dmic_cfg.4.i, %conv71.i
  %conv73.i = and i32 %dmic_cfg.5.i, 255
  %call74.i = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 241, i32 noundef 7, i32 noundef %conv73.i) #10
  %dev_id.i108 = getelementptr inbounds %struct.da7218_priv, ptr %124, i32 0, i32 3
  %156 = ptrtoint ptr %dev_id.i108 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dev_id.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i109 = icmp eq i32 %157, 0
  br i1 %cmp.i109, label %if.then76.i, label %sw.epilog28.i.if.end83.i112_crit_edge

sw.epilog28.i.if.end83.i112_crit_edge:            ; preds = %sw.epilog28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i112

if.then76.i:                                      ; preds = %sw.epilog28.i
  %hp_diff_single_supply.i110 = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 10
  %158 = ptrtoint ptr %hp_diff_single_supply.i110 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %hp_diff_single_supply.i110, align 4, !range !1080
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool77.not.i = icmp eq i8 %159, 0
  %hp_single_supply.i = getelementptr inbounds %struct.da7218_priv, ptr %124, i32 0, i32 8
  %160 = ptrtoint ptr %hp_single_supply.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %hp_single_supply.i, align 4
  br i1 %tobool77.not.i, label %if.then76.i.if.end83thread-pre-split.i_crit_edge, label %if.then80.i

if.then76.i.if.end83thread-pre-split.i_crit_edge: ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83thread-pre-split.i

if.then80.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  %call81.i = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 215, i32 noundef 195) #10
  %call82.i = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 213, i32 noundef 16, i32 noundef 16) #10
  br label %if.end83thread-pre-split.i

if.end83thread-pre-split.i:                       ; preds = %if.then80.i, %if.then76.i.if.end83thread-pre-split.i_crit_edge
  %161 = ptrtoint ptr %dev_id.i108 to i32
  call void @__asan_load4_noabort(i32 %161)
  %.pr.i111 = load i32, ptr %dev_id.i108, align 4
  br label %if.end83.i112

if.end83.i112:                                    ; preds = %if.end83thread-pre-split.i, %sw.epilog28.i.if.end83.i112_crit_edge
  %162 = phi i32 [ %.pr.i111, %if.end83thread-pre-split.i ], [ %157, %sw.epilog28.i.if.end83.i112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp85.i = icmp eq i32 %162, 1
  br i1 %cmp85.i, label %land.lhs.true.i, label %if.end83.i112.da7218_handle_pdata.exit_crit_edge

if.end83.i112.da7218_handle_pdata.exit_crit_edge: ; preds = %if.end83.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7218_handle_pdata.exit

land.lhs.true.i:                                  ; preds = %if.end83.i112
  %hpldet_pdata.i = getelementptr inbounds %struct.da7218_pdata, ptr %126, i32 0, i32 11
  %163 = ptrtoint ptr %hpldet_pdata.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hpldet_pdata.i, align 4
  %tobool87.not.i = icmp eq ptr %164, null
  br i1 %tobool87.not.i, label %land.lhs.true.i.da7218_handle_pdata.exit_crit_edge, label %if.then88.i

land.lhs.true.i.da7218_handle_pdata.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7218_handle_pdata.exit

if.then88.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %166)
  %switch212.i = icmp ult i32 %166, 8
  %spec.select216.i = select i1 %switch212.i, i32 %166, i32 0
  %jack_debounce.i = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %164, i32 0, i32 1
  %167 = ptrtoint ptr %jack_debounce.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %jack_debounce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %168)
  %switch213.i = icmp ult i32 %168, 4
  %169 = shl i32 %168, 3
  %conv103.i = select i1 %switch213.i, i32 %169, i32 0
  %hpldet_cfg.1.i = or i32 %conv103.i, %spec.select216.i
  %jack_thr.i = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %164, i32 0, i32 2
  %170 = ptrtoint ptr %jack_thr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %jack_thr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %171)
  %switch214.i = icmp ult i32 %171, 4
  %172 = shl i32 %171, 5
  %conv110.i = select i1 %switch214.i, i32 %172, i32 0
  %hpldet_cfg.2.i = or i32 %hpldet_cfg.1.i, %conv110.i
  %conv112.i = and i32 %hpldet_cfg.2.i, 255
  %call113.i = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 216, i32 noundef 127, i32 noundef %conv112.i) #10
  %comp_inv.i113 = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %164, i32 0, i32 3
  %173 = ptrtoint ptr %comp_inv.i113 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %comp_inv.i113, align 4, !range !1080
  %hyst.i114 = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %164, i32 0, i32 4
  %175 = ptrtoint ptr %hyst.i114 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %hyst.i114, align 1, !range !1080
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool120.not.i = icmp eq i8 %176, 0
  %177 = or i8 %174, 2
  %hpldet_cfg.4.i = select i1 %tobool120.not.i, i8 %174, i8 %177
  %discharge.i115 = getelementptr inbounds %struct.da7218_hpldet_pdata, ptr %164, i32 0, i32 5
  %178 = ptrtoint ptr %discharge.i115 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %discharge.i115, align 2, !range !1080
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool126.not.i = icmp eq i8 %179, 0
  %180 = or i8 %hpldet_cfg.4.i, -128
  %hpldet_cfg.5.i = select i1 %tobool126.not.i, i8 %hpldet_cfg.4.i, i8 %180
  %conv132.i = zext i8 %hpldet_cfg.5.i to i32
  %call133.i = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 217, i32 noundef %conv132.i) #10
  br label %da7218_handle_pdata.exit

da7218_handle_pdata.exit:                         ; preds = %if.then88.i, %land.lhs.true.i.da7218_handle_pdata.exit_crit_edge, %if.end83.i112.da7218_handle_pdata.exit_crit_edge, %if.end8.da7218_handle_pdata.exit_crit_edge
  %181 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i, align 4
  %call10 = call ptr @devm_clk_get(ptr noundef %182, ptr noundef nonnull @.str.528) #10
  %mclk = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 6
  %183 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call10, ptr %mclk, align 4
  %cmp.i116 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then13, label %da7218_handle_pdata.exit.if.end22_crit_edge

da7218_handle_pdata.exit.if.end22_crit_edge:      ; preds = %da7218_handle_pdata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then13:                                        ; preds = %da7218_handle_pdata.exit
  %184 = ptrtoint ptr %call10 to i32
  %cmp.not = icmp eq ptr %call10, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.else19, label %if.then13.err_disable_reg_crit_edge

if.then13.err_disable_reg_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_reg

if.else19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %mclk, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %da7218_handle_pdata.exit.if.end22_crit_edge
  %call23 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12, i32 noundef 1) #10
  %call24 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 108, i32 noundef 0) #10
  %call25 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 116, i32 noundef 0) #10
  %call26 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 172, i32 noundef 64, i32 noundef 0) #10
  %call27 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 44, i32 noundef 32, i32 noundef 32) #10
  %call28 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 46, i32 noundef 32, i32 noundef 32) #10
  %call29 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 24, i32 noundef 32, i32 noundef 32) #10
  %call30 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 32, i32 noundef 32) #10
  %call31 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 32, i32 noundef 32) #10
  %call32 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 27, i32 noundef 32, i32 noundef 32) #10
  %call33 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 91, i32 noundef 32, i32 noundef 32) #10
  %call34 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 32, i32 noundef 32) #10
  %call35 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 33, i32 noundef 32, i32 noundef 32) #10
  %call36 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 208, i32 noundef 32, i32 noundef 32) #10
  %call37 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 210, i32 noundef 32, i32 noundef 32) #10
  %call38 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 166, i32 noundef 7) #10
  %dev_id = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 3
  %186 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp39 = icmp eq i32 %187, 0
  br i1 %cmp39, label %if.then40, label %if.end22.if.end43_crit_edge

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 213, i32 noundef 1, i32 noundef 1) #10
  %call42 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 238, i32 noundef 128) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end22.if.end43_crit_edge
  %irq = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 5
  %188 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool44.not = icmp eq i32 %189, 0
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  %190 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i, align 4
  %call48 = call i32 @devm_request_threaded_irq(ptr noundef %191, i32 noundef %189, ptr noundef null, ptr noundef nonnull @da7218_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef %component) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.then45.cleanup_crit_edge, label %do.end

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i, align 4
  %194 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.529, i32 noundef %195, i32 noundef %call48) #13
  br label %err_disable_reg

err_disable_reg:                                  ; preds = %do.end, %if.then13.err_disable_reg_crit_edge
  %ret.0 = phi i32 [ %call48, %do.end ], [ %184, %if.then13.err_disable_reg_crit_edge ]
  %call55 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx1.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_disable_reg, %if.then45.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %do.end25.i, %do.end.i
  %retval.0 = phi i32 [ %ret.0, %err_disable_reg ], [ 0, %if.then45.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ %call20.i, %do.end25.i ], [ %call3.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7218_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %supplies = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 1
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_suspend(ptr noundef %component) #0 align 64 {
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
  %jack.i = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jack.i, align 4
  %tobool22.not.i = icmp eq ptr %5, null
  br i1 %tobool22.not.i, label %da7218_set_bias_level.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

da7218_set_bias_level.exit:                       ; preds = %entry
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 225, i32 noundef 128, i32 noundef 0) #10
  %call25.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 220, i32 noundef 8, i32 noundef 0) #10
  %6 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %jack.i, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %if.then, label %da7218_set_bias_level.exit.if.end_crit_edge

da7218_set_bias_level.exit.if.end_crit_edge:      ; preds = %da7218_set_bias_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %da7218_set_bias_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %da7218_set_bias_level.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_resume(ptr noundef %component) #0 align 64 {
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
  %jack = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jack, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dapm.i.i41.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %6 = ptrtoint ptr %dapm.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dapm.i.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.i = icmp eq i32 %7, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 220, i32 noundef 8, i32 noundef 8) #10
  %call14.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 225, i32 noundef 128, i32 noundef 128) #10
  br label %da7218_set_bias_level.exit

if.else.i:                                        ; preds = %if.end
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %mclk15.i = getelementptr inbounds %struct.da7218_priv, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mclk15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk15.i, align 4
  %tobool16.not.i = icmp eq ptr %13, null
  br i1 %tobool16.not.i, label %if.else.i.da7218_set_bias_level.exit_crit_edge, label %if.then17.i

if.else.i.da7218_set_bias_level.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7218_set_bias_level.exit

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef nonnull %13) #10
  tail call void @clk_unprepare(ptr noundef nonnull %13) #10
  br label %da7218_set_bias_level.exit

da7218_set_bias_level.exit:                       ; preds = %if.then17.i, %if.else.i.da7218_set_bias_level.exit_crit_edge, %if.then12.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.621)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb21
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
  %mclk = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 6
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.584) #13
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %dapm.i.i41 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %11 = ptrtoint ptr %dapm.i.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dapm.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 220, i32 noundef 8, i32 noundef 8) #10
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 225, i32 noundef 128, i32 noundef 128) #10
  br label %cleanup

if.else:                                          ; preds = %sw.bb9
  %mclk15 = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %mclk15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mclk15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %if.else.cleanup_crit_edge, label %if.then17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef nonnull %14) #10
  tail call void @clk_unprepare(ptr noundef nonnull %14) #10
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %jack = getelementptr inbounds %struct.da7218_priv, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jack, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %if.then23, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 225, i32 noundef 128, i32 noundef 0) #10
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 220, i32 noundef 8, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %sw.bb21.cleanup_crit_edge, %if.then17, %if.else.cleanup_crit_edge, %if.then12, %do.end, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %sw.bb21.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.then12 ], [ 0, %if.then17 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_mixin_gain_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
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
  %alc_en = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %alc_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alc_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @da7218_alc_calib(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_alc_sw_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  %rshift4 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %rshift4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rshift4, align 4
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  %or.cond = select i1 %tobool.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %alc_en = getelementptr inbounds %struct.da7218_priv, ptr %8, i32 0, i32 10
  %19 = ptrtoint ptr %alc_en to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %alc_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @da7218_alc_calib(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shl = shl i32 %18, %14
  %shl6 = shl i32 %18, %16
  %or = or i32 %shl, %shl6
  %alc_en9 = getelementptr inbounds %struct.da7218_priv, ptr %8, i32 0, i32 10
  %21 = ptrtoint ptr %alc_en9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %alc_en9, align 2
  %23 = trunc i32 %or to i8
  %24 = xor i8 %23, -1
  %conv10 = and i8 %22, %24
  %shl11 = shl i32 %10, %14
  %shl12 = shl i32 %12, %16
  %or13 = or i32 %shl12, %shl11
  %25 = trunc i32 %or13 to i8
  %conv17 = or i8 %conv10, %25
  store i8 %conv17, ptr %alc_en9, align 2
  %call18 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  ret i32 %call18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da7218_mic_lvl_det_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %rshift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %rshift2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rshift2, align 4
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max, align 4
  %shl = shl i32 %14, %10
  %shl4 = shl i32 %14, %12
  %mic_lvl_det_en = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %mic_lvl_det_en to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mic_lvl_det_en, align 4
  %conv = zext i8 %16 to i32
  %and = and i32 %shl, %conv
  %shr = lshr i32 %and, %10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %value, align 8
  %18 = load i8, ptr %mic_lvl_det_en, align 4
  %conv6 = zext i8 %18 to i32
  %and7 = and i32 %shl4, %conv6
  %shr8 = lshr i32 %and7, %12
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr8, ptr %arrayidx10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_mic_lvl_det_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  %rshift4 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %rshift4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rshift4, align 4
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max, align 4
  %shl = shl i32 %18, %14
  %shl6 = shl i32 %18, %16
  %or = or i32 %shl, %shl6
  %mic_lvl_det_en = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 12
  %19 = ptrtoint ptr %mic_lvl_det_en to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mic_lvl_det_en, align 4
  %21 = trunc i32 %or to i8
  %22 = xor i8 %21, -1
  %conv7 = and i8 %20, %22
  %shl8 = shl i32 %10, %14
  %shl9 = shl i32 %12, %16
  %or10 = or i32 %shl9, %shl8
  %23 = trunc i32 %or10 to i8
  %conv14 = or i8 %conv7, %23
  store i8 %conv14, ptr %mic_lvl_det_en, align 4
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  %in_filt_en = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 11
  %26 = ptrtoint ptr %in_filt_en to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %in_filt_en, align 1
  %and1832 = and i8 %conv14, %27
  %and18 = zext i8 %and1832 to i32
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %25, i32 noundef %and18) #10
  ret i32 %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info_ext(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da7218_biquad_coeff_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.622)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 50, label %sw.bb
    i32 30, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %biq_5stage_coeff = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 13
  %12 = call ptr @memcpy(ptr %value, ptr %biq_5stage_coeff, i32 50)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %value5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %stbiq_3stage_coeff = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 14
  %13 = call ptr @memcpy(ptr %value5, ptr %stbiq_3stage_coeff, i32 30)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_biquad_coeff_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %cfg = alloca [2 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfg) #10
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %cfg, align 1, !annotation !1079
  %10 = getelementptr inbounds [2 x i8], ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !1079
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.623)
  switch i32 %13, label %entry.cleanup_crit_edge [
    i32 50, label %sw.bb
    i32 30, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %biq_5stage_coeff = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %biq_5stage_coeff, ptr %value, i32 50)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stbiq_3stage_coeff = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 14
  %value6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %stbiq_3stage_coeff, ptr %value6, i32 30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %reg.0 = phi i32 [ 234, %sw.bb4 ], [ 41, %sw.bb ]
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 32) #10
  %conv10 = and i32 %call9, 255
  %or = or i32 %conv10, 128
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 32, i32 noundef %or) #10
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp44 = icmp sgt i32 %18, 0
  br i1 %cmp44, label %for.body.lr.ph, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %value14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %regmap = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [512 x i8], ptr %value14, i32 0, i32 %i.045
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %cfg, align 1
  %conv16 = trunc i32 %i.045 to i8
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv16, ptr %10, align 1
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_raw_write(ptr noundef %24, i32 noundef %reg.0, ptr noundef nonnull %cfg, i32 noundef 2) #10
  %inc = add nuw nsw i32 %i.045, 1
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %8, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %call22 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 32, i32 noundef %conv10) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_tonegen_freq_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  store i16 -1, ptr %val, align 2, !annotation !1079
  %regmap = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_raw_read(ptr noundef %13, i32 noundef %10, ptr noundef nonnull %val, i32 noundef 2) #10
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
define internal i32 @da7218_tonegen_freq_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_raw_write(ptr noundef %16, i32 noundef %10, ptr noundef nonnull %val, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da7218_alc_calib(ptr noundef %component) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 180) #10
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 184) #10
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 44) #10
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 46) #10
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 24) #10
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 25) #10
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 26) #10
  %call13 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 27) #10
  %call15 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 188) #10
  %call17 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 189) #10
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 180, i32 noundef 128, i32 noundef 128) #10
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 184, i32 noundef 128, i32 noundef 128) #10
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 180, i32 noundef 64, i32 noundef 64) #10
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 184, i32 noundef 64, i32 noundef 64) #10
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 44, i32 noundef 192, i32 noundef 128) #10
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 46, i32 noundef 192, i32 noundef 128) #10
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 24, i32 noundef 192, i32 noundef 128) #10
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 192, i32 noundef 128) #10
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 192, i32 noundef 128) #10
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 27, i32 noundef 192, i32 noundef 128) #10
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 188, i32 noundef 8, i32 noundef 0) #10
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 189, i32 noundef 8, i32 noundef 0) #10
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 68, i32 noundef 4, i32 noundef 4) #10
  %call32 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 68) #10
  %and = and i32 %call32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %do.cond

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

do.cond:                                          ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 5000, i32 noundef 2) #10
  %call32.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 68) #10
  %and.1 = and i32 %call32.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %do.cond.lor.lhs.false_crit_edge, label %do.cond.1

do.cond.lor.lhs.false_crit_edge:                  ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

do.cond.1:                                        ; preds = %do.cond
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 5000, i32 noundef 2) #10
  %call32.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 68) #10
  %and.2 = and i32 %call32.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %do.cond.1.lor.lhs.false_crit_edge, label %do.cond.2

do.cond.1.lor.lhs.false_crit_edge:                ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

do.cond.2:                                        ; preds = %do.cond.1
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 5000, i32 noundef 2) #10
  %call32.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 68) #10
  %and.3 = and i32 %call32.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %do.cond.2.lor.lhs.false_crit_edge, label %do.cond.3

do.cond.2.lor.lhs.false_crit_edge:                ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

do.cond.3:                                        ; preds = %do.cond.2
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 5000, i32 noundef 2) #10
  %call32.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 68) #10
  %and.4 = and i32 %call32.4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %do.cond.3.lor.lhs.false_crit_edge, label %do.cond.4

do.cond.3.lor.lhs.false_crit_edge:                ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

do.cond.4:                                        ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 5000, i32 noundef 2) #10
  br label %do.end44

lor.lhs.false:                                    ; preds = %do.cond.3.lor.lhs.false_crit_edge, %do.cond.2.lor.lhs.false_crit_edge, %do.cond.1.lor.lhs.false_crit_edge, %do.cond.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %call32.lcssa = phi i32 [ %call32, %entry.lor.lhs.false_crit_edge ], [ %call32.1, %do.cond.lor.lhs.false_crit_edge ], [ %call32.2, %do.cond.1.lor.lhs.false_crit_edge ], [ %call32.3, %do.cond.2.lor.lhs.false_crit_edge ], [ %call32.4, %do.cond.3.lor.lhs.false_crit_edge ]
  %and39 = and i32 %call32.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %lor.lhs.false.if.end52_crit_edge, label %lor.lhs.false.do.end44_crit_edge

lor.lhs.false.do.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.end44:                                         ; preds = %lor.lhs.false.do.end44_crit_edge, %do.cond.4
  %cond = phi ptr [ @.str.293, %lor.lhs.false.do.end44_crit_edge ], [ @.str.294, %do.cond.4 ]
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.290, ptr noundef nonnull %cond) #13
  br label %if.end52

if.end52:                                         ; preds = %do.end44, %lor.lhs.false.if.end52_crit_edge
  %.sink125 = phi i32 [ 0, %do.end44 ], [ 1, %lor.lhs.false.if.end52_crit_edge ]
  %.sink = phi i32 [ 0, %do.end44 ], [ 80, %lor.lhs.false.if.end52_crit_edge ]
  %call50 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 68, i32 noundef 1, i32 noundef %.sink125) #10
  %call51 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 240, i32 noundef %.sink) #10
  %conv53 = and i32 %call15, 255
  %call54 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 188, i32 noundef %conv53) #10
  %conv55 = and i32 %call17, 255
  %call56 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 189, i32 noundef %conv55) #10
  %conv57 = and i32 %call7, 255
  %call58 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 24, i32 noundef %conv57) #10
  %conv59 = and i32 %call9, 255
  %call60 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 25, i32 noundef %conv59) #10
  %conv61 = and i32 %call11, 255
  %call62 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 26, i32 noundef %conv61) #10
  %conv63 = and i32 %call13, 255
  %call64 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 27, i32 noundef %conv63) #10
  %conv65 = and i32 %call3, 255
  %call66 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 44, i32 noundef %conv65) #10
  %conv67 = and i32 %call5, 255
  %call68 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 46, i32 noundef %conv67) #10
  %conv69 = and i32 %call, 255
  %call70 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 180, i32 noundef %conv69) #10
  %conv71 = and i32 %call1, 255
  %call72 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 184, i32 noundef %conv71) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_in_filter_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %reg = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %switch.tableidx = add i32 %7, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 4
  br i1 %8, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.da7218_in_filter_event, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.624)
  switch i32 %event, label %switch.lookup.cleanup_crit_edge [
    i32 2, label %sw.bb5
    i32 4, label %sw.bb10
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %switch.lookup
  %in_filt_en = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %in_filt_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_filt_en, align 1
  %13 = trunc i32 %switch.load to i8
  %conv7 = or i8 %12, %13
  store i8 %conv7, ptr %in_filt_en, align 1
  %mic_lvl_det_en = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %mic_lvl_det_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mic_lvl_det_en, align 4
  %conv9 = zext i8 %15 to i32
  %and = and i32 %switch.load, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb5.sw.epilog17_crit_edge, label %if.then

sw.bb5.sw.epilog17_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %sw.epilog17

sw.bb10:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %in_filt_en12 = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 11
  %16 = ptrtoint ptr %in_filt_en12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %in_filt_en12, align 1
  %18 = trunc i32 %switch.load to i8
  %19 = xor i8 %18, -1
  %conv15 = and i8 %17, %19
  store i8 %conv15, ptr %in_filt_en12, align 1
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %sw.bb10, %if.then, %sw.bb5.sw.epilog17_crit_edge
  %in_filt_en18 = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 11
  %20 = ptrtoint ptr %in_filt_en18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_filt_en18, align 1
  %mic_lvl_det_en20 = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 12
  %22 = ptrtoint ptr %mic_lvl_det_en20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mic_lvl_det_en20, align 4
  %and2234 = and i8 %23, %21
  %and22 = zext i8 %and2234 to i32
  %call23 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef %and22) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog17, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_dai_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.625)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb52
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %master = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %master, align 1, !range !1080
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 128, i32 noundef 128) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 152, i32 noundef 64) #10
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 152, i32 noundef 192) #10
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 152) #10
  %and = and i32 %call5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end17_crit_edge, label %do.cond

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.cond:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %call5.1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 152) #10
  %and.1 = and i32 %call5.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool7.not.1, label %do.cond.if.end17_crit_edge, label %do.cond.1

do.cond.if.end17_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.cond.1:                                        ; preds = %do.cond
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %call5.2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 152) #10
  %and.2 = and i32 %call5.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool7.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool7.not.2, label %do.cond.1.if.end17_crit_edge, label %do.cond.2

do.cond.1.if.end17_crit_edge:                     ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.cond.2:                                        ; preds = %do.cond.1
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %call5.3 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 152) #10
  %and.3 = and i32 %call5.3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool7.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool7.not.3, label %do.cond.2.if.end17_crit_edge, label %do.cond.3

do.cond.2.if.end17_crit_edge:                     ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.cond.3:                                        ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.499) #13
  br label %if.end17

if.end17:                                         ; preds = %do.cond.3, %do.cond.2.if.end17_crit_edge, %do.cond.1.if.end17_crit_edge, %do.cond.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call18 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef 2) #10
  %call19 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 145) #10
  %and22 = and i32 %call19, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 128
  br i1 %cmp23.not, label %do.body27.preheader, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body27.preheader:                              ; preds = %if.end17
  %call28 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31 = and i32 %call28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.cond37, label %do.body27.preheader.cleanup_crit_edge

do.body27.preheader.cleanup_crit_edge:            ; preds = %do.body27.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37:                                        ; preds = %do.body27.preheader
  tail call void @msleep(i32 noundef 50) #10
  %call28.1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31.1 = and i32 %call28.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.1)
  %tobool32.not.1 = icmp eq i32 %and31.1, 0
  br i1 %tobool32.not.1, label %do.cond37.1, label %do.cond37.cleanup_crit_edge

do.cond37.cleanup_crit_edge:                      ; preds = %do.cond37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37.1:                                      ; preds = %do.cond37
  tail call void @msleep(i32 noundef 50) #10
  %call28.2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31.2 = and i32 %call28.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.2)
  %tobool32.not.2 = icmp eq i32 %and31.2, 0
  br i1 %tobool32.not.2, label %do.cond37.2, label %do.cond37.1.cleanup_crit_edge

do.cond37.1.cleanup_crit_edge:                    ; preds = %do.cond37.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37.2:                                      ; preds = %do.cond37.1
  tail call void @msleep(i32 noundef 50) #10
  %call28.3 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31.3 = and i32 %call28.3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.3)
  %tobool32.not.3 = icmp eq i32 %and31.3, 0
  br i1 %tobool32.not.3, label %do.cond37.3, label %do.cond37.2.cleanup_crit_edge

do.cond37.2.cleanup_crit_edge:                    ; preds = %do.cond37.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37.3:                                      ; preds = %do.cond37.2
  tail call void @msleep(i32 noundef 50) #10
  %call28.4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31.4 = and i32 %call28.4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.4)
  %tobool32.not.4 = icmp eq i32 %and31.4, 0
  br i1 %tobool32.not.4, label %do.cond37.4, label %do.cond37.3.cleanup_crit_edge

do.cond37.3.cleanup_crit_edge:                    ; preds = %do.cond37.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37.4:                                      ; preds = %do.cond37.3
  tail call void @msleep(i32 noundef 50) #10
  %call28.5 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31.5 = and i32 %call28.5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.5)
  %tobool32.not.5 = icmp eq i32 %and31.5, 0
  br i1 %tobool32.not.5, label %do.cond37.5, label %do.cond37.4.cleanup_crit_edge

do.cond37.4.cleanup_crit_edge:                    ; preds = %do.cond37.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37.5:                                      ; preds = %do.cond37.4
  tail call void @msleep(i32 noundef 50) #10
  %call28.6 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31.6 = and i32 %call28.6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.6)
  %tobool32.not.6 = icmp eq i32 %and31.6, 0
  br i1 %tobool32.not.6, label %do.cond37.6, label %do.cond37.5.cleanup_crit_edge

do.cond37.5.cleanup_crit_edge:                    ; preds = %do.cond37.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37.6:                                      ; preds = %do.cond37.5
  tail call void @msleep(i32 noundef 50) #10
  %call28.7 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 149) #10
  %and31.7 = and i32 %call28.7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.7)
  %tobool32.not.7 = icmp eq i32 %and31.7, 0
  br i1 %tobool32.not.7, label %do.cond37.7, label %do.cond37.6.cleanup_crit_edge

do.cond37.6.cleanup_crit_edge:                    ; preds = %do.cond37.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond37.7:                                      ; preds = %do.cond37.6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.502) #13
  br label %cleanup

sw.bb52:                                          ; preds = %entry
  %call53 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef 1) #10
  %master54 = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %master54 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %master54, align 1, !range !1080
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool55.not = icmp eq i8 %14, 0
  br i1 %tobool55.not, label %sw.bb52.cleanup_crit_edge, label %if.then56

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then56:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 128, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %sw.bb52.cleanup_crit_edge, %do.cond37.7, %do.cond37.6.cleanup_crit_edge, %do.cond37.5.cleanup_crit_edge, %do.cond37.4.cleanup_crit_edge, %do.cond37.3.cleanup_crit_edge, %do.cond37.2.cleanup_crit_edge, %do.cond37.1.cleanup_crit_edge, %do.cond37.cleanup_crit_edge, %do.body27.preheader.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17.cleanup_crit_edge ], [ 0, %do.cond37.7 ], [ 0, %if.then56 ], [ 0, %sw.bb52.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.cond37.6.cleanup_crit_edge ], [ 0, %do.cond37.5.cleanup_crit_edge ], [ 0, %do.cond37.4.cleanup_crit_edge ], [ 0, %do.cond37.3.cleanup_crit_edge ], [ 0, %do.cond37.2.cleanup_crit_edge ], [ 0, %do.cond37.1.cleanup_crit_edge ], [ 0, %do.cond37.cleanup_crit_edge ], [ 0, %do.body27.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_hp_pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.626)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink8 = phi i32 [ 0, %sw.bb2 ], [ 8, %entry.cleanup.sink.split_crit_edge ]
  %reg3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %3 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg3, align 4
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %4, i32 noundef 8, i32 noundef %.sink8) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_cp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %hp_single_supply = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %hp_single_supply to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hp_single_supply, align 4, !range !1080
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.627)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb3 ], [ 128, %if.end.cleanup.sink.split_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 172, i32 noundef 128, i32 noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_irq_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %envp.i = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_read(ptr noundef %data, i32 noundef 237) #10
  %conv = trunc i32 %call to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = and i32 %call, 255
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp.i) #10
  %0 = load i64, ptr @__const.da7218_micldet_irq.envp, align 8
  %1 = ptrtoint ptr %envp.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %envp.i, align 8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = call i32 @kobject_uevent_env(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %envp.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp.i) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and6 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = call i32 @snd_soc_component_read(ptr noundef %data, i32 noundef 236) #10
  %and.i = lshr i32 %call1.i, 7
  %and.lobit.i = and i32 %and.i, 1
  %jack.i = getelementptr inbounds %struct.da7218_priv, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jack.i, align 4
  call void @snd_soc_jack_report(ptr noundef %9, i32 noundef %and.lobit.i, i32 noundef 1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %call11 = call i32 @snd_soc_component_write(ptr noundef %data, i32 noundef 237, i32 noundef %conv1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %mclk_rate = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = add i32 %freq, -54000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -52000001, i32 %8)
  %9 = icmp ult i32 %8, -52000001
  br i1 %9, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.587, i32 noundef %freq) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.628)
  switch i32 %clk_id, label %do.end11 [
    i32 1, label %if.end5.sw.epilog_crit_edge
    i32 0, label %sw.bb7
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %13 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.590, i32 noundef %clk_id) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %if.end5.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.bb7 ], [ 16, %if.end5.sw.epilog_crit_edge ]
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 145, i32 noundef 16, i32 noundef %.sink) #10
  %mclk = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %sw.epilog.if.end25_crit_edge, label %if.then13

sw.epilog.if.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then13:                                        ; preds = %sw.epilog
  %call15 = tail call i32 @clk_round_rate(ptr noundef nonnull %16, i32 noundef %freq) #10
  %17 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mclk, align 4
  %call17 = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %call15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end25_crit_edge, label %do.end22

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end22:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %19 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.593, i32 noundef %call15) #13
  br label %cleanup

if.end25:                                         ; preds = %if.then13.if.end25_crit_edge, %sw.epilog.if.end25_crit_edge
  %freq.addr.0 = phi i32 [ %call15, %if.then13.if.end25_crit_edge ], [ %freq, %sw.epilog.if.end25_crit_edge ]
  %21 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %freq.addr.0, ptr %mclk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end22, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %call17, %do.end22 ], [ 0, %if.end25 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_set_dai_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %fref, i32 noundef %fout) #0 align 64 {
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
  %mclk_rate = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %7)
  %cmp = icmp ult i32 %7, 2000000
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.595, i32 noundef %7) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4500001, i32 %7)
  %cmp4 = icmp ult i32 %7, 4500001
  br i1 %cmp4, label %if.else.if.end32_crit_edge, label %if.else6

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000001, i32 %7)
  %cmp8 = icmp ult i32 %7, 9000001
  br i1 %cmp8, label %if.else6.if.end32_crit_edge, label %if.else10

if.else6.if.end32_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000001, i32 %7)
  %cmp12 = icmp ult i32 %7, 18000001
  br i1 %cmp12, label %if.else10.if.end32_crit_edge, label %if.else14

if.else10.if.end32_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 36000001, i32 %7)
  %cmp16 = icmp ult i32 %7, 36000001
  br i1 %cmp16, label %if.else14.if.end32_crit_edge, label %if.else18

if.else14.if.end32_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000001, i32 %7)
  %cmp20 = icmp ult i32 %7, 54000001
  br i1 %cmp20, label %if.else18.if.end32_crit_edge, label %do.end25

if.else18.if.end32_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end25:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.598, i32 noundef %7) #13
  br label %cleanup

if.end32:                                         ; preds = %if.else18.if.end32_crit_edge, %if.else14.if.end32_crit_edge, %if.else10.if.end32_crit_edge, %if.else6.if.end32_crit_edge, %if.else.if.end32_crit_edge
  %indiv_bits.0 = phi i32 [ 0, %if.else.if.end32_crit_edge ], [ 1, %if.else6.if.end32_crit_edge ], [ 2, %if.else10.if.end32_crit_edge ], [ 3, %if.else14.if.end32_crit_edge ], [ 4, %if.else18.if.end32_crit_edge ]
  %indiv.0 = phi i32 [ 1, %if.else.if.end32_crit_edge ], [ 2, %if.else6.if.end32_crit_edge ], [ 4, %if.else10.if.end32_crit_edge ], [ 8, %if.else14.if.end32_crit_edge ], [ 16, %if.else18.if.end32_crit_edge ]
  %div = udiv i32 %7, %indiv.0
  %8 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.629)
  switch i32 %source, label %do.end48 [
    i32 0, label %sw.bb
    i32 1, label %if.end32.sw.epilog_crit_edge
    i32 2, label %sw.bb42
  ]

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 145, i32 noundef 199, i32 noundef %indiv_bits.0) #10
  br label %cleanup

sw.bb42:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end48:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.601) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb42, %if.end32.sw.epilog_crit_edge
  %.sink = phi i32 [ 128, %sw.bb42 ], [ 64, %if.end32.sw.epilog_crit_edge ]
  %conv45 = or i32 %indiv_bits.0, %.sink
  %div.frozen = freeze i32 %div
  %div50 = udiv i32 %fout, %div.frozen
  %9 = mul i32 %div50, %div.frozen
  %rem.decomposed = sub i32 %fout, %9
  %conv52 = zext i32 %rem.decomposed to i64
  %mul = shl nuw nsw i64 %conv52, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %rem.decomposed)
  %cmp227 = icmp ult i32 %rem.decomposed, 524288
  br i1 %cmp227, label %if.then231, label %if.else237, !prof !1081

if.then231:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %conv232 = trunc i64 %mul to i32
  %div235 = udiv i32 %conv232, %div
  br label %if.end241

if.else237:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul) #15, !srcloc !1082
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t392 = trunc i64 %asmresult1.i to i32
  br label %if.end241

if.end241:                                        ; preds = %if.else237, %if.then231
  %frac_div.0.off0 = phi i32 [ %div235, %if.then231 ], [ %extract.t392, %if.else237 ]
  %11 = lshr i32 %frac_div.0.off0, 8
  %conv248 = and i32 %11, 255
  %call249 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 146, i32 noundef %conv248) #10
  %conv250 = and i32 %frac_div.0.off0, 255
  %call251 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 147, i32 noundef %conv250) #10
  %conv252 = and i32 %div50, 255
  %call253 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 148, i32 noundef %conv252) #10
  %call255 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 145, i32 noundef 199, i32 noundef %conv45) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %do.end48, %sw.bb, %do.end25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end48 ], [ 0, %if.end241 ], [ 0, %sw.bb ], [ -22, %do.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.630)
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
  %master3 = getelementptr inbounds %struct.da7218_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %master3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %master3, align 1
  %and4 = and i32 %fmt, 15
  %9 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.631)
  switch i32 %and4, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.epilog.sw.bb5_crit_edge
    i32 3, label %sw.epilog.sw.bb5_crit_edge95
    i32 2, label %sw.epilog.sw.bb5_crit_edge96
    i32 5, label %sw.bb19
  ]

sw.epilog.sw.bb5_crit_edge96:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge95:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge95, %sw.epilog.sw.bb5_crit_edge96
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
  br i1 %13, label %switch.hole_check88, label %sw.bb19.cleanup_crit_edge

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
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da7218_set_dai_fmt, i32 0, i32 %10
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %16 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.632)
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

switch.hole_check88:                              ; preds = %sw.bb19
  %switch.maskindex90 = trunc i32 %12 to i8
  %switch.shifted91 = lshr i8 29, %switch.maskindex90
  %17 = and i8 %switch.shifted91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %switch.lobit92.not = icmp eq i8 %17, 0
  br i1 %switch.lobit92.not, label %switch.hole_check88.cleanup_crit_edge, label %switch.lookup89

switch.hole_check88.cleanup_crit_edge:            ; preds = %switch.hole_check88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup89:                                  ; preds = %switch.hole_check88
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep93 = getelementptr inbounds [5 x i32], ptr @switch.table.da7218_set_dai_fmt.614, i32 0, i32 %12
  %18 = ptrtoint ptr %switch.gep93 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load94 = load i32, ptr %switch.gep93, align 4
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %switch.lookup89, %sw.bb46, %sw.bb42, %switch.lookup.sw.epilog55_crit_edge
  %dai_clk_mode.086 = phi i32 [ %switch.load, %sw.bb46 ], [ %switch.load, %sw.bb42 ], [ %switch.load, %switch.lookup.sw.epilog55_crit_edge ], [ %switch.load94, %switch.lookup89 ]
  %dai_ctrl.0 = phi i32 [ 2, %sw.bb46 ], [ 1, %sw.bb42 ], [ 0, %switch.lookup.sw.epilog55_crit_edge ], [ 3, %switch.lookup89 ]
  %call60 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 144, i32 noundef %dai_clk_mode.086) #10
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 140, i32 noundef 3, i32 noundef %dai_ctrl.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog55, %switch.hole_check88.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog55 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %tobool.not = icmp eq i32 %tx_mask, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 141, i32 noundef 143, i32 noundef 0) #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 144, i32 noundef 3, i32 noundef 1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %tx_mask)
  %cmp = icmp ugt i32 %tx_mask, 15
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.603, i32 noundef 4) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %rx_mask)
  %tobool6.not = icmp ult i32 %rx_mask, 65536
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.606, i32 noundef 65535) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %mul = mul i32 %slot_width, %slots
  %6 = add i32 %mul, -32
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %switch.hole_check, label %if.end12.do.end18_crit_edge

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end18:                                         ; preds = %switch.hole_check.do.end18_crit_edge, %if.end12.do.end18_crit_edge
  %dev19 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.609) #13
  br label %cleanup

switch.hole_check:                                ; preds = %if.end12
  %switch.maskindex = trunc i32 %7 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end18_crit_edge, label %switch.lookup

switch.hole_check.do.end18_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.da7218_set_dai_tdm_slot, i32 0, i32 %7
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 144, i32 noundef 3, i32 noundef %switch.load) #10
  %and = and i32 %rx_mask, 255
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 142, i32 noundef %and) #10
  %shr22 = lshr i32 %rx_mask, 8
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 143, i32 noundef %shr22) #10
  %or = or i32 %tx_mask, 128
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 141, i32 noundef 143, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end18, %do.end10, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end18 ], [ 0, %switch.lookup ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7218_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !1083
  %add.i.i.i = or i32 %4, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i.i = icmp eq i32 %6, 0
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
  %7 = add i32 %call1.i, -16
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %8 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da7218_hw_params, i32 0, i32 %8
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %14 = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %14)
  %15 = icmp ult i32 %14, -4
  br i1 %15, label %do.end, label %if.end

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.611, i32 noundef 4) #13
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %shl = shl nuw nsw i32 %13, 4
  %arrayidx.i.i59 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i59, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.633)
  switch i32 %19, label %if.end.cleanup_crit_edge [
    i32 8000, label %if.end.sw.epilog35_crit_edge
    i32 11025, label %sw.bb24
    i32 12000, label %sw.bb25
    i32 16000, label %sw.bb26
    i32 22050, label %sw.bb27
    i32 24000, label %sw.bb28
    i32 32000, label %sw.bb29
    i32 44100, label %sw.bb30
    i32 48000, label %sw.bb31
    i32 88200, label %sw.bb32
    i32 96000, label %sw.bb33
  ]

if.end.sw.epilog35_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %if.end.sw.epilog35_crit_edge
  %fs.0 = phi i32 [ 255, %sw.bb33 ], [ 238, %sw.bb32 ], [ 187, %sw.bb31 ], [ 170, %sw.bb30 ], [ 153, %sw.bb29 ], [ 119, %sw.bb28 ], [ 102, %sw.bb27 ], [ 85, %sw.bb26 ], [ 51, %sw.bb25 ], [ 34, %sw.bb24 ], [ 17, %if.end.sw.epilog35_crit_edge ]
  %shl.masked = and i32 %shl, 240
  %conv36 = or i32 %shl.masked, %switch.load
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 140, i32 noundef 124, i32 noundef %conv36) #10
  %call43 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 11, i32 noundef %fs.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog35, %if.end.cleanup_crit_edge, %do.end, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog35 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 724)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 724)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !352, !353, !354, !355, !356, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !786, !788, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !846, !847, !849, !851, !853, !855, !857, !858, !859, !860, !862, !863, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !885, !887, !889, !891, !893, !895, !896, !897, !898, !900, !901, !902, !903, !905, !906, !907, !909, !910, !911, !913, !915, !917, !919, !921, !923, !925, !927, !929, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !958, !959, !960, !962, !964, !966, !968, !969, !970, !971, !973, !975, !977, !978, !979, !980, !982, !984, !986, !987, !988, !989, !991, !992, !993, !994, !996, !997, !998, !999, !1001, !1002, !1003, !1004, !1006, !1007, !1008, !1009, !1011, !1013, !1014, !1015, !1016, !1018, !1020, !1022, !1024, !1025, !1026, !1027, !1029, !1030, !1031, !1033, !1034, !1035, !1037, !1038, !1039, !1040, !1042, !1043, !1044, !1046, !1047, !1048, !1050, !1051, !1052, !1053, !1055, !1056, !1057, !1059, !1060, !1061, !1063, !1064, !1065, !1066, !1068}
!llvm.module.flags = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!llvm.ident = !{!1078}

!0 = !{ptr @__ksymtab_da7218_hpldet, !1, !"__ksymtab_da7218_hpldet", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/da7218.c", i32 2221, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_da7218__294_3318_da7218_i2c_driver_init6, !3, !"__initcall__kmod_snd_soc_da7218__294_3318_da7218_i2c_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/da7218.c", i32 3318, i32 1}
!4 = !{ptr @__exitcall_da7218_i2c_driver_exit, !3, !"__exitcall_da7218_i2c_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/da7218.c", i32 3320, i32 1}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/da7218.c", i32 3321, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/da7218.c", i32 3322, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/da7218.c", i32 3311, i32 11}
!14 = !{ptr @da7218_i2c_driver, !15, !"da7218_i2c_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/da7218.c", i32 3309, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/da7218.c", i32 3280, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @da7218_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @da7218_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @da7218_i2c_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/da7218.c", i32 3286, i32 19}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/da7218.c", i32 3289, i32 3}
!29 = !{ptr @da7218_i2c_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @da7218_i2c_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/da7218.c", i32 3296, i32 3}
!33 = !{ptr @da7218_i2c_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @da7218_i2c_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @da7218_regmap_config, !36, !"da7218_regmap_config", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/da7218.c", i32 3245, i32 35}
!37 = !{ptr @da7218_reg_defaults, !38, !"da7218_reg_defaults", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/da7218.c", i32 3051, i32 27}
!39 = !{ptr @soc_component_dev_da7218, !40, !"soc_component_dev_da7218", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/da7218.c", i32 3028, i32 46}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/da7218.c", i32 639, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/da7218.c", i32 642, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/da7218.c", i32 645, i32 2}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/da7218.c", i32 648, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/da7218.c", i32 653, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/da7218.c", i32 658, i32 2}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/da7218.c", i32 661, i32 2}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/da7218.c", i32 664, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/da7218.c", i32 667, i32 2}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/da7218.c", i32 672, i32 2}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/da7218.c", i32 675, i32 2}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/da7218.c", i32 678, i32 2}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/da7218.c", i32 683, i32 2}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/da7218.c", i32 686, i32 2}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/da7218.c", i32 689, i32 2}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/da7218.c", i32 694, i32 2}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/da7218.c", i32 698, i32 2}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/da7218.c", i32 701, i32 2}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/da7218.c", i32 704, i32 2}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/da7218.c", i32 708, i32 2}
!81 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/da7218.c", i32 711, i32 2}
!83 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/da7218.c", i32 714, i32 2}
!85 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/da7218.c", i32 718, i32 2}
!87 = !{ptr @.str.58, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/da7218.c", i32 721, i32 2}
!89 = !{ptr @.str.60, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/da7218.c", i32 724, i32 2}
!91 = !{ptr @.str.62, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/da7218.c", i32 728, i32 2}
!93 = !{ptr @.str.64, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/da7218.c", i32 731, i32 2}
!95 = !{ptr @.str.66, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/da7218.c", i32 736, i32 2}
!97 = !{ptr @.str.68, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/da7218.c", i32 739, i32 2}
!99 = !{ptr @.str.70, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/da7218.c", i32 742, i32 2}
!101 = !{ptr @.str.72, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/da7218.c", i32 745, i32 2}
!103 = !{ptr @.str.74, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/da7218.c", i32 748, i32 2}
!105 = !{ptr @.str.76, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/da7218.c", i32 753, i32 2}
!107 = !{ptr @.str.77, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/da7218.c", i32 754, i32 2}
!109 = !{ptr @.str.78, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/da7218.c", i32 755, i32 2}
!111 = !{ptr @.str.79, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/da7218.c", i32 756, i32 2}
!113 = !{ptr @.str.81, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/da7218.c", i32 759, i32 2}
!115 = !{ptr @.str.83, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/da7218.c", i32 762, i32 2}
!117 = !{ptr @.str.85, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/da7218.c", i32 765, i32 2}
!119 = !{ptr @.str.87, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/da7218.c", i32 768, i32 2}
!121 = !{ptr @.str.89, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/da7218.c", i32 771, i32 2}
!123 = !{ptr @.str.91, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/da7218.c", i32 775, i32 2}
!125 = !{ptr @.str.93, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/da7218.c", i32 779, i32 2}
!127 = !{ptr @.str.94, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/da7218.c", i32 780, i32 2}
!129 = !{ptr @.str.96, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/da7218.c", i32 783, i32 2}
!131 = !{ptr @.str.98, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/da7218.c", i32 787, i32 2}
!133 = !{ptr @.str.100, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/da7218.c", i32 793, i32 2}
!135 = !{ptr @.str.101, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/da7218.c", i32 794, i32 2}
!137 = !{ptr @.str.102, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/da7218.c", i32 797, i32 2}
!139 = !{ptr @.str.103, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/da7218.c", i32 798, i32 2}
!141 = !{ptr @.str.104, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/da7218.c", i32 799, i32 2}
!143 = !{ptr @.str.105, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/da7218.c", i32 800, i32 2}
!145 = !{ptr @.str.106, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/da7218.c", i32 801, i32 2}
!147 = !{ptr @.str.107, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/da7218.c", i32 802, i32 2}
!149 = !{ptr @.str.108, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/da7218.c", i32 805, i32 2}
!151 = !{ptr @.str.110, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/da7218.c", i32 810, i32 2}
!153 = !{ptr @.str.112, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/da7218.c", i32 815, i32 2}
!155 = !{ptr @.str.114, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/da7218.c", i32 820, i32 2}
!157 = !{ptr @.str.116, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/da7218.c", i32 825, i32 2}
!159 = !{ptr @.str.118, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/da7218.c", i32 830, i32 2}
!161 = !{ptr @.str.120, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/da7218.c", i32 835, i32 2}
!163 = !{ptr @.str.122, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/da7218.c", i32 841, i32 2}
!165 = !{ptr @.str.124, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/da7218.c", i32 846, i32 2}
!167 = !{ptr @.str.126, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/da7218.c", i32 851, i32 2}
!169 = !{ptr @.str.128, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/da7218.c", i32 856, i32 2}
!171 = !{ptr @.str.130, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/da7218.c", i32 862, i32 2}
!173 = !{ptr @.str.132, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/da7218.c", i32 867, i32 2}
!175 = !{ptr @.str.134, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/da7218.c", i32 872, i32 2}
!177 = !{ptr @.str.136, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/da7218.c", i32 877, i32 2}
!179 = !{ptr @.str.138, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/da7218.c", i32 883, i32 2}
!181 = !{ptr @.str.140, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/da7218.c", i32 888, i32 2}
!183 = !{ptr @.str.142, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/da7218.c", i32 893, i32 2}
!185 = !{ptr @.str.144, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/da7218.c", i32 898, i32 2}
!187 = !{ptr @.str.146, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/da7218.c", i32 904, i32 2}
!189 = !{ptr @.str.148, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/da7218.c", i32 909, i32 2}
!191 = !{ptr @.str.150, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/da7218.c", i32 914, i32 2}
!193 = !{ptr @.str.152, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/da7218.c", i32 919, i32 2}
!195 = !{ptr @.str.154, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/da7218.c", i32 925, i32 2}
!197 = !{ptr @.str.156, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/da7218.c", i32 930, i32 2}
!199 = !{ptr @.str.158, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/da7218.c", i32 935, i32 2}
!201 = !{ptr @.str.160, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/da7218.c", i32 940, i32 2}
!203 = !{ptr @.str.162, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/da7218.c", i32 946, i32 2}
!205 = !{ptr @.str.164, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/da7218.c", i32 951, i32 2}
!207 = !{ptr @.str.166, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/da7218.c", i32 956, i32 2}
!209 = !{ptr @.str.168, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/da7218.c", i32 961, i32 2}
!211 = !{ptr @.str.170, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/da7218.c", i32 968, i32 2}
!213 = !{ptr @.str.172, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/da7218.c", i32 973, i32 2}
!215 = !{ptr @.str.174, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/da7218.c", i32 979, i32 2}
!217 = !{ptr @.str.176, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/da7218.c", i32 984, i32 2}
!219 = !{ptr @.str.178, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/da7218.c", i32 990, i32 2}
!221 = !{ptr @.str.180, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/da7218.c", i32 995, i32 2}
!223 = !{ptr @.str.182, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/da7218.c", i32 1001, i32 2}
!225 = !{ptr @.str.184, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/da7218.c", i32 1006, i32 2}
!227 = !{ptr @.str.186, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/da7218.c", i32 1012, i32 2}
!229 = !{ptr @.str.188, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/da7218.c", i32 1017, i32 2}
!231 = !{ptr @.str.190, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/da7218.c", i32 1023, i32 2}
!233 = !{ptr @.str.192, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/da7218.c", i32 1028, i32 2}
!235 = !{ptr @.str.194, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/da7218.c", i32 1034, i32 2}
!237 = !{ptr @.str.196, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/da7218.c", i32 1039, i32 2}
!239 = !{ptr @.str.198, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/da7218.c", i32 1046, i32 2}
!241 = !{ptr @.str.200, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/da7218.c", i32 1049, i32 2}
!243 = !{ptr @.str.202, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/da7218.c", i32 1052, i32 2}
!245 = !{ptr @.str.204, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/da7218.c", i32 1057, i32 2}
!247 = !{ptr @.str.205, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/da7218.c", i32 1058, i32 2}
!249 = !{ptr @.str.207, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/da7218.c", i32 1061, i32 2}
!251 = !{ptr @.str.208, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/da7218.c", i32 1062, i32 2}
!253 = !{ptr @.str.210, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/da7218.c", i32 1065, i32 2}
!255 = !{ptr @.str.212, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/da7218.c", i32 1068, i32 2}
!257 = !{ptr @.str.214, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/da7218.c", i32 1071, i32 2}
!259 = !{ptr @.str.216, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/da7218.c", i32 1076, i32 2}
!261 = !{ptr @.str.217, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/da7218.c", i32 1079, i32 2}
!263 = !{ptr @.str.219, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/da7218.c", i32 1082, i32 2}
!265 = !{ptr @.str.220, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/da7218.c", i32 1083, i32 2}
!267 = !{ptr @.str.221, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/da7218.c", i32 1084, i32 2}
!269 = !{ptr @.str.223, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/da7218.c", i32 1087, i32 2}
!271 = !{ptr @.str.225, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/da7218.c", i32 1090, i32 2}
!273 = !{ptr @.str.227, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/da7218.c", i32 1093, i32 2}
!275 = !{ptr @.str.229, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/da7218.c", i32 1097, i32 2}
!277 = !{ptr @.str.231, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/da7218.c", i32 1100, i32 2}
!279 = !{ptr @.str.233, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/da7218.c", i32 1103, i32 2}
!281 = !{ptr @.str.235, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/da7218.c", i32 1106, i32 2}
!283 = !{ptr @.str.237, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/da7218.c", i32 1109, i32 2}
!285 = !{ptr @.str.239, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/da7218.c", i32 1114, i32 2}
!287 = !{ptr @.str.240, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/da7218.c", i32 1115, i32 2}
!289 = !{ptr @.str.241, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/da7218.c", i32 1116, i32 2}
!291 = !{ptr @.str.242, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/da7218.c", i32 1119, i32 2}
!293 = !{ptr @.str.244, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/da7218.c", i32 1122, i32 2}
!295 = !{ptr @.str.246, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/da7218.c", i32 1125, i32 2}
!297 = !{ptr @.str.248, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/da7218.c", i32 1128, i32 2}
!299 = !{ptr @.str.250, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/da7218.c", i32 1131, i32 2}
!301 = !{ptr @.str.252, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/da7218.c", i32 1134, i32 2}
!303 = !{ptr @.str.254, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/da7218.c", i32 1139, i32 2}
!305 = !{ptr @.str.256, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/da7218.c", i32 1142, i32 2}
!307 = !{ptr @.str.258, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/da7218.c", i32 1147, i32 2}
!309 = !{ptr @.str.260, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/da7218.c", i32 1153, i32 2}
!311 = !{ptr @.str.262, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/da7218.c", i32 1156, i32 2}
!313 = !{ptr @.str.264, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/da7218.c", i32 1160, i32 2}
!315 = !{ptr @.str.266, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/da7218.c", i32 1165, i32 2}
!317 = !{ptr @.str.268, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/da7218.c", i32 1173, i32 2}
!319 = !{ptr @.str.269, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/da7218.c", i32 1174, i32 2}
!321 = !{ptr @.str.270, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/da7218.c", i32 1175, i32 2}
!323 = !{ptr @.str.271, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/da7218.c", i32 1176, i32 2}
!325 = !{ptr @.str.273, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/da7218.c", i32 1180, i32 2}
!327 = !{ptr @.str.275, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/da7218.c", i32 1184, i32 2}
!329 = !{ptr @.str.277, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/da7218.c", i32 1188, i32 2}
!331 = !{ptr @.str.278, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/da7218.c", i32 1189, i32 2}
!333 = !{ptr @.str.279, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/da7218.c", i32 1190, i32 2}
!335 = !{ptr @.str.280, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/da7218.c", i32 1191, i32 2}
!337 = !{ptr @.str.282, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/da7218.c", i32 1196, i32 2}
!339 = !{ptr @.str.284, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/da7218.c", i32 1200, i32 2}
!341 = !{ptr @.str.286, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/da7218.c", i32 1203, i32 2}
!343 = !{ptr @.str.288, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/da7218.c", i32 1206, i32 2}
!345 = !{ptr @da7218_snd_controls, !346, !"da7218_snd_controls", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/da7218.c", i32 637, i32 38}
!347 = !{ptr @da7218_mic_gain_tlv, !348, !"da7218_mic_gain_tlv", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/da7218.c", i32 37, i32 14}
!349 = !{ptr @.str.290, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/da7218.c", i32 385, i32 3}
!351 = !{ptr @.str.291, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.292, !350, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @da7218_alc_calib._entry, !350, !"_entry", i1 false, i1 false}
!354 = !{ptr @da7218_alc_calib._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.293, !350, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.294, !350, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @da7218_mixin_gain_tlv, !358, !"da7218_mixin_gain_tlv", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/da7218.c", i32 38, i32 14}
!359 = !{ptr @da7218_in_dig_gain_tlv, !360, !"da7218_in_dig_gain_tlv", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/da7218.c", i32 39, i32 14}
!361 = !{ptr @da7218_ags_trigger_tlv, !362, !"da7218_ags_trigger_tlv", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/da7218.c", i32 40, i32 14}
!363 = !{ptr @da7218_ags_att_max_tlv, !364, !"da7218_ags_att_max_tlv", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/da7218.c", i32 41, i32 14}
!365 = !{ptr @da7218_alc_attack_rate, !366, !"da7218_alc_attack_rate", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/da7218.c", i32 66, i32 30}
!367 = !{ptr @.str.295, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/da7218.c", i32 61, i32 2}
!369 = !{ptr @.str.296, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/da7218.c", i32 61, i32 13}
!371 = !{ptr @.str.297, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/da7218.c", i32 61, i32 25}
!373 = !{ptr @.str.298, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/da7218.c", i32 61, i32 37}
!375 = !{ptr @.str.299, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/da7218.c", i32 61, i32 49}
!377 = !{ptr @.str.300, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/da7218.c", i32 61, i32 61}
!379 = !{ptr @.str.301, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/da7218.c", i32 62, i32 2}
!381 = !{ptr @.str.302, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/da7218.c", i32 62, i32 14}
!383 = !{ptr @.str.303, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/da7218.c", i32 62, i32 26}
!385 = !{ptr @.str.304, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/da7218.c", i32 62, i32 37}
!387 = !{ptr @.str.305, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/da7218.c", i32 62, i32 48}
!389 = !{ptr @.str.306, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/da7218.c", i32 62, i32 59}
!391 = !{ptr @.str.307, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/da7218.c", i32 63, i32 2}
!393 = !{ptr @da7218_alc_attack_rate_txt, !394, !"da7218_alc_attack_rate_txt", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/da7218.c", i32 60, i32 27}
!395 = !{ptr @da7218_alc_release_rate, !396, !"da7218_alc_release_rate", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/da7218.c", i32 75, i32 30}
!397 = !{ptr @.str.308, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/da7218.c", i32 71, i32 2}
!399 = !{ptr @.str.309, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/da7218.c", i32 71, i32 14}
!401 = !{ptr @.str.310, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/da7218.c", i32 71, i32 26}
!403 = !{ptr @.str.311, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/da7218.c", i32 71, i32 38}
!405 = !{ptr @.str.312, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/da7218.c", i32 71, i32 50}
!407 = !{ptr @.str.313, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/da7218.c", i32 71, i32 62}
!409 = !{ptr @.str.314, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/da7218.c", i32 72, i32 2}
!411 = !{ptr @.str.315, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/da7218.c", i32 72, i32 13}
!413 = !{ptr @.str.316, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/da7218.c", i32 72, i32 24}
!415 = !{ptr @.str.317, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/da7218.c", i32 72, i32 35}
!417 = !{ptr @.str.318, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/da7218.c", i32 72, i32 47}
!419 = !{ptr @da7218_alc_release_rate_txt, !420, !"da7218_alc_release_rate_txt", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/da7218.c", i32 70, i32 27}
!421 = !{ptr @da7218_alc_hold_time, !422, !"da7218_alc_hold_time", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/da7218.c", i32 85, i32 30}
!423 = !{ptr @.str.319, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/da7218.c", i32 80, i32 2}
!425 = !{ptr @.str.320, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/da7218.c", i32 80, i32 11}
!427 = !{ptr @.str.321, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/da7218.c", i32 80, i32 21}
!429 = !{ptr @.str.322, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/da7218.c", i32 80, i32 31}
!431 = !{ptr @.str.323, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/da7218.c", i32 80, i32 41}
!433 = !{ptr @.str.324, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/da7218.c", i32 80, i32 51}
!435 = !{ptr @.str.325, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/da7218.c", i32 80, i32 62}
!437 = !{ptr @.str.326, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/da7218.c", i32 81, i32 2}
!439 = !{ptr @.str.327, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/da7218.c", i32 81, i32 13}
!441 = !{ptr @.str.328, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/da7218.c", i32 81, i32 25}
!443 = !{ptr @.str.329, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/da7218.c", i32 81, i32 37}
!445 = !{ptr @.str.330, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/da7218.c", i32 81, i32 49}
!447 = !{ptr @.str.331, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/da7218.c", i32 82, i32 2}
!449 = !{ptr @.str.332, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/da7218.c", i32 82, i32 15}
!451 = !{ptr @.str.333, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/da7218.c", i32 82, i32 28}
!453 = !{ptr @.str.334, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/da7218.c", i32 82, i32 42}
!455 = !{ptr @da7218_alc_hold_time_txt, !456, !"da7218_alc_hold_time_txt", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/da7218.c", i32 79, i32 27}
!457 = !{ptr @da7218_alc_threshold_tlv, !458, !"da7218_alc_threshold_tlv", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/da7218.c", i32 42, i32 14}
!459 = !{ptr @da7218_alc_gain_tlv, !460, !"da7218_alc_gain_tlv", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/da7218.c", i32 43, i32 14}
!461 = !{ptr @da7218_alc_ana_gain_tlv, !462, !"da7218_alc_ana_gain_tlv", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/da7218.c", i32 44, i32 14}
!463 = !{ptr @da7218_alc_anticlip_step, !464, !"da7218_alc_anticlip_step", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/da7218.c", i32 93, i32 30}
!465 = !{ptr @.str.335, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/da7218.c", i32 90, i32 2}
!467 = !{ptr @.str.336, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/da7218.c", i32 90, i32 16}
!469 = !{ptr @.str.337, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/da7218.c", i32 90, i32 30}
!471 = !{ptr @.str.338, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/da7218.c", i32 90, i32 44}
!473 = !{ptr @da7218_alc_anticlip_step_txt, !474, !"da7218_alc_anticlip_step_txt", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/da7218.c", i32 89, i32 27}
!475 = !{ptr @da7218_integ_attack_rate, !476, !"da7218_integ_attack_rate", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/da7218.c", i32 103, i32 30}
!477 = !{ptr @.str.339, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/da7218.c", i32 100, i32 2}
!479 = !{ptr @.str.340, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/da7218.c", i32 100, i32 9}
!481 = !{ptr @.str.341, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/da7218.c", i32 100, i32 17}
!483 = !{ptr @.str.342, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/da7218.c", i32 100, i32 26}
!485 = !{ptr @da7218_integ_rate_txt, !486, !"da7218_integ_rate_txt", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/da7218.c", i32 99, i32 27}
!487 = !{ptr @da7218_integ_release_rate, !488, !"da7218_integ_release_rate", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/da7218.c", i32 107, i32 30}
!489 = !{ptr @da7218_in1_hpf_mode, !490, !"da7218_in1_hpf_mode", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/da7218.c", i32 129, i32 30}
!491 = !{ptr @.str.343, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/da7218.c", i32 122, i32 2}
!493 = !{ptr @.str.344, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/da7218.c", i32 122, i32 14}
!495 = !{ptr @.str.345, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/da7218.c", i32 122, i32 23}
!497 = !{ptr @da7218_hpf_mode_txt, !498, !"da7218_hpf_mode_txt", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/da7218.c", i32 121, i32 27}
!499 = !{ptr @da7218_hpf_mode_val, !500, !"da7218_hpf_mode_val", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/da7218.c", i32 125, i32 27}
!501 = !{ptr @da7218_in1_audio_hpf_corner, !502, !"da7218_in1_audio_hpf_corner", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/da7218.c", i32 151, i32 30}
!503 = !{ptr @.str.346, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/da7218.c", i32 148, i32 2}
!505 = !{ptr @.str.347, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/da7218.c", i32 148, i32 9}
!507 = !{ptr @.str.348, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/da7218.c", i32 148, i32 16}
!509 = !{ptr @.str.349, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/da7218.c", i32 148, i32 23}
!511 = !{ptr @da7218_audio_hpf_corner_txt, !512, !"da7218_audio_hpf_corner_txt", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/da7218.c", i32 147, i32 27}
!513 = !{ptr @da7218_in1_voice_hpf_corner, !514, !"da7218_in1_voice_hpf_corner", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/da7218.c", i32 173, i32 30}
!515 = !{ptr @.str.350, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 2}
!517 = !{ptr @.str.351, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 11}
!519 = !{ptr @.str.352, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 19}
!521 = !{ptr @.str.353, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 27}
!523 = !{ptr @.str.354, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 36}
!525 = !{ptr @.str.355, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 45}
!527 = !{ptr @.str.356, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 54}
!529 = !{ptr @.str.357, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/da7218.c", i32 170, i32 63}
!531 = !{ptr @da7218_voice_hpf_corner_txt, !532, !"da7218_voice_hpf_corner_txt", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/da7218.c", i32 169, i32 27}
!533 = !{ptr @da7218_in2_hpf_mode, !534, !"da7218_in2_hpf_mode", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/da7218.c", i32 135, i32 30}
!535 = !{ptr @da7218_in2_audio_hpf_corner, !536, !"da7218_in2_audio_hpf_corner", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/da7218.c", i32 157, i32 30}
!537 = !{ptr @da7218_in2_voice_hpf_corner, !538, !"da7218_in2_voice_hpf_corner", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/da7218.c", i32 179, i32 30}
!539 = !{ptr @da7218_dmix_gain_tlv, !540, !"da7218_dmix_gain_tlv", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/da7218.c", i32 47, i32 14}
!541 = !{ptr @da7218_tonegen_dtmf_key, !542, !"da7218_tonegen_dtmf_key", i1 false, i1 false}
!542 = !{!"../sound/soc/codecs/da7218.c", i32 196, i32 30}
!543 = !{ptr @.str.358, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 2}
!545 = !{ptr @.str.359, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 7}
!547 = !{ptr @.str.360, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 12}
!549 = !{ptr @.str.361, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 17}
!551 = !{ptr @.str.362, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 22}
!553 = !{ptr @.str.363, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 27}
!555 = !{ptr @.str.364, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 32}
!557 = !{ptr @.str.365, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 37}
!559 = !{ptr @.str.366, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 42}
!561 = !{ptr @.str.367, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 47}
!563 = !{ptr @.str.368, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 52}
!565 = !{ptr @.str.369, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 57}
!567 = !{ptr @.str.370, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 62}
!569 = !{ptr @.str.371, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../sound/soc/codecs/da7218.c", i32 192, i32 67}
!571 = !{ptr @.str.372, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/da7218.c", i32 193, i32 2}
!573 = !{ptr @.str.373, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/soc/codecs/da7218.c", i32 193, i32 7}
!575 = !{ptr @da7218_tonegen_dtmf_key_txt, !576, !"da7218_tonegen_dtmf_key_txt", i1 false, i1 false}
!576 = !{!"../sound/soc/codecs/da7218.c", i32 191, i32 27}
!577 = !{ptr @da7218_tonegen_swg_sel, !578, !"da7218_tonegen_swg_sel", i1 false, i1 false}
!578 = !{!"../sound/soc/codecs/da7218.c", i32 204, i32 30}
!579 = !{ptr @.str.374, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../sound/soc/codecs/da7218.c", i32 201, i32 2}
!581 = !{ptr @.str.375, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/da7218.c", i32 201, i32 9}
!583 = !{ptr @.str.376, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../sound/soc/codecs/da7218.c", i32 201, i32 17}
!585 = !{ptr @.str.377, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/da7218.c", i32 201, i32 25}
!587 = !{ptr @da7218_tonegen_swg_sel_txt, !588, !"da7218_tonegen_swg_sel_txt", i1 false, i1 false}
!588 = !{!"../sound/soc/codecs/da7218.c", i32 200, i32 27}
!589 = !{ptr @da7218_gain_ramp_rate, !590, !"da7218_gain_ramp_rate", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/da7218.c", i32 117, i32 30}
!591 = !{ptr @.str.378, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../sound/soc/codecs/da7218.c", i32 113, i32 2}
!593 = !{ptr @.str.379, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../sound/soc/codecs/da7218.c", i32 113, i32 22}
!595 = !{ptr @.str.380, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../sound/soc/codecs/da7218.c", i32 113, i32 38}
!597 = !{ptr @.str.381, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../sound/soc/codecs/da7218.c", i32 114, i32 2}
!599 = !{ptr @da7218_gain_ramp_rate_txt, !600, !"da7218_gain_ramp_rate_txt", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/da7218.c", i32 112, i32 27}
!601 = !{ptr @da7218_dgs_trigger_tlv, !602, !"da7218_dgs_trigger_tlv", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/da7218.c", i32 50, i32 14}
!603 = !{ptr @da7218_dgs_rise_coeff, !604, !"da7218_dgs_rise_coeff", i1 false, i1 false}
!604 = !{!"../sound/soc/codecs/da7218.c", i32 213, i32 30}
!605 = !{ptr @.str.382, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../sound/soc/codecs/da7218.c", i32 210, i32 2}
!607 = !{ptr @.str.383, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../sound/soc/codecs/da7218.c", i32 210, i32 17}
!609 = !{ptr @.str.384, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../sound/soc/codecs/da7218.c", i32 210, i32 34}
!611 = !{ptr @.str.385, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/codecs/da7218.c", i32 210, i32 44}
!613 = !{ptr @.str.386, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../sound/soc/codecs/da7218.c", i32 210, i32 54}
!615 = !{ptr @da7218_dgs_rise_coeff_txt, !616, !"da7218_dgs_rise_coeff_txt", i1 false, i1 false}
!616 = !{!"../sound/soc/codecs/da7218.c", i32 209, i32 27}
!617 = !{ptr @da7218_dgs_fall_coeff, !618, !"da7218_dgs_fall_coeff", i1 false, i1 false}
!618 = !{!"../sound/soc/codecs/da7218.c", i32 221, i32 30}
!619 = !{ptr @da7218_dgs_fall_coeff_txt, !620, !"da7218_dgs_fall_coeff_txt", i1 false, i1 false}
!620 = !{!"../sound/soc/codecs/da7218.c", i32 217, i32 27}
!621 = !{ptr @da7218_dgs_anticlip_tlv, !622, !"da7218_dgs_anticlip_tlv", i1 false, i1 false}
!622 = !{!"../sound/soc/codecs/da7218.c", i32 51, i32 14}
!623 = !{ptr @da7218_dgs_signal_tlv, !624, !"da7218_dgs_signal_tlv", i1 false, i1 false}
!624 = !{!"../sound/soc/codecs/da7218.c", i32 52, i32 14}
!625 = !{ptr @da7218_out1_hpf_mode, !626, !"da7218_out1_hpf_mode", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/da7218.c", i32 141, i32 30}
!627 = !{ptr @da7218_out1_audio_hpf_corner, !628, !"da7218_out1_audio_hpf_corner", i1 false, i1 false}
!628 = !{!"../sound/soc/codecs/da7218.c", i32 163, i32 30}
!629 = !{ptr @da7218_out1_voice_hpf_corner, !630, !"da7218_out1_voice_hpf_corner", i1 false, i1 false}
!630 = !{!"../sound/soc/codecs/da7218.c", i32 185, i32 30}
!631 = !{ptr @da7218_out_eq_band_tlv, !632, !"da7218_out_eq_band_tlv", i1 false, i1 false}
!632 = !{!"../sound/soc/codecs/da7218.c", i32 53, i32 14}
!633 = !{ptr @da7218_out_dig_gain_tlv, !634, !"da7218_out_dig_gain_tlv", i1 false, i1 false}
!634 = !{!"../sound/soc/codecs/da7218.c", i32 54, i32 14}
!635 = !{ptr @da7218_mixout_gain_tlv, !636, !"da7218_mixout_gain_tlv", i1 false, i1 false}
!636 = !{!"../sound/soc/codecs/da7218.c", i32 56, i32 14}
!637 = !{ptr @da7218_dac_ng_setup_time, !638, !"da7218_dac_ng_setup_time", i1 false, i1 false}
!638 = !{!"../sound/soc/codecs/da7218.c", i32 229, i32 30}
!639 = !{ptr @.str.387, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../sound/soc/codecs/da7218.c", i32 226, i32 2}
!641 = !{ptr @.str.388, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../sound/soc/codecs/da7218.c", i32 226, i32 17}
!643 = !{ptr @.str.389, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../sound/soc/codecs/da7218.c", i32 226, i32 32}
!645 = !{ptr @.str.390, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../sound/soc/codecs/da7218.c", i32 226, i32 48}
!647 = !{ptr @da7218_dac_ng_setup_time_txt, !648, !"da7218_dac_ng_setup_time_txt", i1 false, i1 false}
!648 = !{!"../sound/soc/codecs/da7218.c", i32 225, i32 27}
!649 = !{ptr @da7218_dac_ng_rampup_rate, !650, !"da7218_dac_ng_rampup_rate", i1 false, i1 false}
!650 = !{!"../sound/soc/codecs/da7218.c", i32 239, i32 30}
!651 = !{ptr @.str.391, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../sound/soc/codecs/da7218.c", i32 236, i32 2}
!653 = !{ptr @.str.392, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../sound/soc/codecs/da7218.c", i32 236, i32 15}
!655 = !{ptr @da7218_dac_ng_rampup_txt, !656, !"da7218_dac_ng_rampup_txt", i1 false, i1 false}
!656 = !{!"../sound/soc/codecs/da7218.c", i32 235, i32 27}
!657 = !{ptr @da7218_dac_ng_rampdown_rate, !658, !"da7218_dac_ng_rampdown_rate", i1 false, i1 false}
!658 = !{!"../sound/soc/codecs/da7218.c", i32 249, i32 30}
!659 = !{ptr @.str.393, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../sound/soc/codecs/da7218.c", i32 246, i32 2}
!661 = !{ptr @.str.394, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../sound/soc/codecs/da7218.c", i32 246, i32 15}
!663 = !{ptr @da7218_dac_ng_rampdown_txt, !664, !"da7218_dac_ng_rampdown_txt", i1 false, i1 false}
!664 = !{!"../sound/soc/codecs/da7218.c", i32 245, i32 27}
!665 = !{ptr @da7218_dac_ng_threshold_tlv, !666, !"da7218_dac_ng_threshold_tlv", i1 false, i1 false}
!666 = !{!"../sound/soc/codecs/da7218.c", i32 55, i32 14}
!667 = !{ptr @da7218_cp_mchange, !668, !"da7218_cp_mchange", i1 false, i1 false}
!668 = !{!"../sound/soc/codecs/da7218.c", i32 264, i32 30}
!669 = !{ptr @.str.395, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../sound/soc/codecs/da7218.c", i32 256, i32 2}
!671 = !{ptr @.str.396, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../sound/soc/codecs/da7218.c", i32 256, i32 20}
!673 = !{ptr @.str.397, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../sound/soc/codecs/da7218.c", i32 256, i32 34}
!675 = !{ptr @da7218_cp_mchange_txt, !676, !"da7218_cp_mchange_txt", i1 false, i1 false}
!676 = !{!"../sound/soc/codecs/da7218.c", i32 255, i32 27}
!677 = !{ptr @da7218_cp_mchange_val, !678, !"da7218_cp_mchange_val", i1 false, i1 false}
!678 = !{!"../sound/soc/codecs/da7218.c", i32 259, i32 27}
!679 = !{ptr @da7218_cp_fcontrol, !680, !"da7218_cp_fcontrol", i1 false, i1 false}
!680 = !{!"../sound/soc/codecs/da7218.c", i32 273, i32 30}
!681 = !{ptr @.str.398, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../sound/soc/codecs/da7218.c", i32 270, i32 2}
!683 = !{ptr @.str.399, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../sound/soc/codecs/da7218.c", i32 270, i32 10}
!685 = !{ptr @.str.400, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../sound/soc/codecs/da7218.c", i32 270, i32 20}
!687 = !{ptr @.str.401, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../sound/soc/codecs/da7218.c", i32 270, i32 30}
!689 = !{ptr @.str.402, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../sound/soc/codecs/da7218.c", i32 270, i32 40}
!691 = !{ptr @.str.403, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../sound/soc/codecs/da7218.c", i32 270, i32 49}
!693 = !{ptr @da7218_cp_fcontrol_txt, !694, !"da7218_cp_fcontrol_txt", i1 false, i1 false}
!694 = !{!"../sound/soc/codecs/da7218.c", i32 269, i32 27}
!695 = !{ptr @da7218_cp_tau_delay, !696, !"da7218_cp_tau_delay", i1 false, i1 false}
!696 = !{!"../sound/soc/codecs/da7218.c", i32 281, i32 30}
!697 = !{ptr @.str.404, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 2}
!699 = !{ptr @.str.405, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 9}
!701 = !{ptr @.str.406, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 16}
!703 = !{ptr @.str.407, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 23}
!705 = !{ptr @.str.408, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 31}
!707 = !{ptr @.str.409, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 39}
!709 = !{ptr @.str.410, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 48}
!711 = !{ptr @.str.411, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../sound/soc/codecs/da7218.c", i32 278, i32 57}
!713 = !{ptr @da7218_cp_tau_delay_txt, !714, !"da7218_cp_tau_delay_txt", i1 false, i1 false}
!714 = !{!"../sound/soc/codecs/da7218.c", i32 277, i32 27}
!715 = !{ptr @da7218_hp_gain_tlv, !716, !"da7218_hp_gain_tlv", i1 false, i1 false}
!716 = !{!"../sound/soc/codecs/da7218.c", i32 57, i32 14}
!717 = !{ptr @.str.412, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../sound/soc/codecs/da7218.c", i32 1531, i32 2}
!719 = !{ptr @.str.413, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../sound/soc/codecs/da7218.c", i32 1534, i32 2}
!721 = !{ptr @.str.414, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../sound/soc/codecs/da7218.c", i32 1537, i32 2}
!723 = !{ptr @.str.415, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../sound/soc/codecs/da7218.c", i32 1540, i32 2}
!725 = !{ptr @.str.416, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../sound/soc/codecs/da7218.c", i32 1543, i32 2}
!727 = !{ptr @.str.417, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../sound/soc/codecs/da7218.c", i32 1546, i32 2}
!729 = !{ptr @.str.418, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../sound/soc/codecs/da7218.c", i32 1551, i32 2}
!731 = !{ptr @.str.419, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../sound/soc/codecs/da7218.c", i32 1552, i32 2}
!733 = !{ptr @.str.420, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../sound/soc/codecs/da7218.c", i32 1553, i32 2}
!735 = !{ptr @.str.421, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../sound/soc/codecs/da7218.c", i32 1554, i32 2}
!737 = !{ptr @.str.422, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../sound/soc/codecs/da7218.c", i32 1555, i32 2}
!739 = !{ptr @.str.423, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../sound/soc/codecs/da7218.c", i32 1556, i32 2}
!741 = !{ptr @.str.424, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../sound/soc/codecs/da7218.c", i32 1559, i32 2}
!743 = !{ptr @.str.425, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../sound/soc/codecs/da7218.c", i32 1562, i32 2}
!745 = !{ptr @.str.426, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../sound/soc/codecs/da7218.c", i32 1567, i32 2}
!747 = !{ptr @.str.427, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../sound/soc/codecs/da7218.c", i32 1570, i32 2}
!749 = !{ptr @.str.428, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../sound/soc/codecs/da7218.c", i32 1573, i32 2}
!751 = !{ptr @.str.429, !752, !"<string literal>", i1 false, i1 false}
!752 = !{!"../sound/soc/codecs/da7218.c", i32 1576, i32 2}
!753 = !{ptr @.str.430, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../sound/soc/codecs/da7218.c", i32 1581, i32 2}
!755 = !{ptr @.str.431, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../sound/soc/codecs/da7218.c", i32 1582, i32 2}
!757 = !{ptr @.str.432, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../sound/soc/codecs/da7218.c", i32 1585, i32 2}
!759 = !{ptr @.str.433, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../sound/soc/codecs/da7218.c", i32 1589, i32 2}
!761 = !{ptr @.str.434, !762, !"<string literal>", i1 false, i1 false}
!762 = !{!"../sound/soc/codecs/da7218.c", i32 1593, i32 2}
!763 = !{ptr @.str.435, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../sound/soc/codecs/da7218.c", i32 1597, i32 2}
!765 = !{ptr @.str.436, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../sound/soc/codecs/da7218.c", i32 1603, i32 2}
!767 = !{ptr @.str.437, !768, !"<string literal>", i1 false, i1 false}
!768 = !{!"../sound/soc/codecs/da7218.c", i32 1604, i32 2}
!769 = !{ptr @.str.438, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../sound/soc/codecs/da7218.c", i32 1608, i32 2}
!771 = !{ptr @.str.439, !772, !"<string literal>", i1 false, i1 false}
!772 = !{!"../sound/soc/codecs/da7218.c", i32 1610, i32 2}
!773 = !{ptr @.str.440, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../sound/soc/codecs/da7218.c", i32 1614, i32 2}
!775 = !{ptr @.str.441, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../sound/soc/codecs/da7218.c", i32 1617, i32 2}
!777 = !{ptr @.str.442, !778, !"<string literal>", i1 false, i1 false}
!778 = !{!"../sound/soc/codecs/da7218.c", i32 1620, i32 2}
!779 = !{ptr @.str.443, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../sound/soc/codecs/da7218.c", i32 1623, i32 2}
!781 = !{ptr @.str.444, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../sound/soc/codecs/da7218.c", i32 1628, i32 2}
!783 = !{ptr @.str.445, !784, !"<string literal>", i1 false, i1 false}
!784 = !{!"../sound/soc/codecs/da7218.c", i32 1633, i32 2}
!785 = !{ptr @.str.446, !784, !"<string literal>", i1 false, i1 false}
!786 = !{ptr @.str.447, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../sound/soc/codecs/da7218.c", i32 1635, i32 2}
!788 = !{ptr @.str.448, !787, !"<string literal>", i1 false, i1 false}
!789 = !{ptr @.str.449, !790, !"<string literal>", i1 false, i1 false}
!790 = !{!"../sound/soc/codecs/da7218.c", i32 1638, i32 2}
!791 = !{ptr @.str.450, !792, !"<string literal>", i1 false, i1 false}
!792 = !{!"../sound/soc/codecs/da7218.c", i32 1641, i32 2}
!793 = !{ptr @.str.451, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../sound/soc/codecs/da7218.c", i32 1646, i32 2}
!795 = !{ptr @.str.452, !796, !"<string literal>", i1 false, i1 false}
!796 = !{!"../sound/soc/codecs/da7218.c", i32 1648, i32 2}
!797 = !{ptr @.str.453, !798, !"<string literal>", i1 false, i1 false}
!798 = !{!"../sound/soc/codecs/da7218.c", i32 1650, i32 2}
!799 = !{ptr @.str.454, !800, !"<string literal>", i1 false, i1 false}
!800 = !{!"../sound/soc/codecs/da7218.c", i32 1655, i32 2}
!801 = !{ptr @.str.455, !802, !"<string literal>", i1 false, i1 false}
!802 = !{!"../sound/soc/codecs/da7218.c", i32 1658, i32 2}
!803 = !{ptr @.str.456, !804, !"<string literal>", i1 false, i1 false}
!804 = !{!"../sound/soc/codecs/da7218.c", i32 1663, i32 2}
!805 = !{ptr @.str.457, !806, !"<string literal>", i1 false, i1 false}
!806 = !{!"../sound/soc/codecs/da7218.c", i32 1665, i32 2}
!807 = !{ptr @.str.458, !808, !"<string literal>", i1 false, i1 false}
!808 = !{!"../sound/soc/codecs/da7218.c", i32 1669, i32 2}
!809 = !{ptr @.str.459, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../sound/soc/codecs/da7218.c", i32 1672, i32 2}
!811 = !{ptr @.str.460, !812, !"<string literal>", i1 false, i1 false}
!812 = !{!"../sound/soc/codecs/da7218.c", i32 1675, i32 2}
!813 = !{ptr @.str.461, !814, !"<string literal>", i1 false, i1 false}
!814 = !{!"../sound/soc/codecs/da7218.c", i32 1679, i32 2}
!815 = !{ptr @.str.462, !816, !"<string literal>", i1 false, i1 false}
!816 = !{!"../sound/soc/codecs/da7218.c", i32 1685, i32 2}
!817 = !{ptr @.str.463, !818, !"<string literal>", i1 false, i1 false}
!818 = !{!"../sound/soc/codecs/da7218.c", i32 1689, i32 2}
!819 = !{ptr @.str.464, !820, !"<string literal>", i1 false, i1 false}
!820 = !{!"../sound/soc/codecs/da7218.c", i32 1690, i32 2}
!821 = !{ptr @da7218_dapm_widgets, !822, !"da7218_dapm_widgets", i1 false, i1 false}
!822 = !{!"../sound/soc/codecs/da7218.c", i32 1529, i32 41}
!823 = !{ptr @da7218_mic1_sel_mux, !824, !"da7218_mic1_sel_mux", i1 false, i1 false}
!824 = !{!"../sound/soc/codecs/da7218.c", i32 1222, i32 38}
!825 = !{ptr @da7218_mic1_sel, !826, !"da7218_mic1_sel", i1 false, i1 false}
!826 = !{!"../sound/soc/codecs/da7218.c", i32 1218, i32 30}
!827 = !{ptr @.str.466, !828, !"<string literal>", i1 false, i1 false}
!828 = !{!"../sound/soc/codecs/da7218.c", i32 1216, i32 53}
!829 = !{ptr @.str.467, !830, !"<string literal>", i1 false, i1 false}
!830 = !{!"../sound/soc/codecs/da7218.c", i32 1216, i32 63}
!831 = !{ptr @da7218_mic_sel_text, !832, !"da7218_mic_sel_text", i1 false, i1 false}
!832 = !{!"../sound/soc/codecs/da7218.c", i32 1216, i32 27}
!833 = !{ptr @da7218_mic2_sel_mux, !834, !"da7218_mic2_sel_mux", i1 false, i1 false}
!834 = !{!"../sound/soc/codecs/da7218.c", i32 1229, i32 38}
!835 = !{ptr @da7218_mic2_sel, !836, !"da7218_mic2_sel", i1 false, i1 false}
!836 = !{!"../sound/soc/codecs/da7218.c", i32 1225, i32 30}
!837 = !{ptr @da7218_sidetone_in_sel_mux, !838, !"da7218_sidetone_in_sel_mux", i1 false, i1 false}
!838 = !{!"../sound/soc/codecs/da7218.c", i32 1242, i32 38}
!839 = !{ptr @da7218_sidetone_in_sel, !840, !"da7218_sidetone_in_sel", i1 false, i1 false}
!840 = !{!"../sound/soc/codecs/da7218.c", i32 1236, i32 30}
!841 = !{ptr @da7218_sidetone_in_sel_txt, !842, !"da7218_sidetone_in_sel_txt", i1 false, i1 false}
!842 = !{!"../sound/soc/codecs/da7218.c", i32 1232, i32 27}
!843 = !{ptr @.str.472, !844, !"<string literal>", i1 false, i1 false}
!844 = !{!"../sound/soc/codecs/da7218.c", i32 1294, i32 2}
!845 = !{ptr @.str.474, !844, !"<string literal>", i1 false, i1 false}
!846 = !{ptr @.str.476, !844, !"<string literal>", i1 false, i1 false}
!847 = !{ptr @da7218_out_dai1l_mix_controls, !848, !"da7218_out_dai1l_mix_controls", i1 false, i1 false}
!848 = !{!"../sound/soc/codecs/da7218.c", i32 1293, i32 38}
!849 = !{ptr @da7218_out_dai1r_mix_controls, !850, !"da7218_out_dai1r_mix_controls", i1 false, i1 false}
!850 = !{!"../sound/soc/codecs/da7218.c", i32 1297, i32 38}
!851 = !{ptr @da7218_out_dai2l_mix_controls, !852, !"da7218_out_dai2l_mix_controls", i1 false, i1 false}
!852 = !{!"../sound/soc/codecs/da7218.c", i32 1301, i32 38}
!853 = !{ptr @da7218_out_dai2r_mix_controls, !854, !"da7218_out_dai2r_mix_controls", i1 false, i1 false}
!854 = !{!"../sound/soc/codecs/da7218.c", i32 1305, i32 38}
!855 = !{ptr @.str.499, !856, !"<string literal>", i1 false, i1 false}
!856 = !{!"../sound/soc/codecs/da7218.c", i32 1433, i32 4}
!857 = !{ptr @.str.500, !856, !"<string literal>", i1 false, i1 false}
!858 = !{ptr @da7218_dai_event._entry, !856, !"_entry", i1 false, i1 false}
!859 = !{ptr @da7218_dai_event._entry_ptr, !856, !"_entry_ptr", i1 false, i1 false}
!860 = !{ptr @.str.502, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../sound/soc/codecs/da7218.c", i32 1459, i32 4}
!862 = !{ptr @da7218_dai_event._entry.501, !861, !"_entry", i1 false, i1 false}
!863 = !{ptr @da7218_dai_event._entry_ptr.503, !861, !"_entry_ptr", i1 false, i1 false}
!864 = !{ptr @da7218_out_filtl_mix_controls, !865, !"da7218_out_filtl_mix_controls", i1 false, i1 false}
!865 = !{!"../sound/soc/codecs/da7218.c", i32 1309, i32 38}
!866 = !{ptr @da7218_out_filtr_mix_controls, !867, !"da7218_out_filtr_mix_controls", i1 false, i1 false}
!867 = !{!"../sound/soc/codecs/da7218.c", i32 1313, i32 38}
!868 = !{ptr @da7218_out_filtl_biq_sel_mux, !869, !"da7218_out_filtl_biq_sel_mux", i1 false, i1 false}
!869 = !{!"../sound/soc/codecs/da7218.c", i32 1255, i32 38}
!870 = !{ptr @da7218_out_filtl_biq_sel, !871, !"da7218_out_filtl_biq_sel", i1 false, i1 false}
!871 = !{!"../sound/soc/codecs/da7218.c", i32 1249, i32 30}
!872 = !{ptr @.str.518, !873, !"<string literal>", i1 false, i1 false}
!873 = !{!"../sound/soc/codecs/da7218.c", i32 1246, i32 2}
!874 = !{ptr @.str.519, !875, !"<string literal>", i1 false, i1 false}
!875 = !{!"../sound/soc/codecs/da7218.c", i32 1246, i32 12}
!876 = !{ptr @da7218_out_filt_biq_sel_txt, !877, !"da7218_out_filt_biq_sel_txt", i1 false, i1 false}
!877 = !{!"../sound/soc/codecs/da7218.c", i32 1245, i32 27}
!878 = !{ptr @da7218_out_filtr_biq_sel_mux, !879, !"da7218_out_filtr_biq_sel_mux", i1 false, i1 false}
!879 = !{!"../sound/soc/codecs/da7218.c", i32 1264, i32 38}
!880 = !{ptr @da7218_out_filtr_biq_sel, !881, !"da7218_out_filtr_biq_sel", i1 false, i1 false}
!881 = !{!"../sound/soc/codecs/da7218.c", i32 1258, i32 30}
!882 = !{ptr @.str.520, !883, !"<string literal>", i1 false, i1 false}
!883 = !{!"../sound/soc/codecs/da7218.c", i32 1329, i32 2}
!884 = !{ptr @.str.522, !883, !"<string literal>", i1 false, i1 false}
!885 = !{ptr @da7218_st_out_filtl_mix_controls, !886, !"da7218_st_out_filtl_mix_controls", i1 false, i1 false}
!886 = !{!"../sound/soc/codecs/da7218.c", i32 1328, i32 38}
!887 = !{ptr @da7218_st_out_filtr_mix_controls, !888, !"da7218_st_out_filtr_mix_controls", i1 false, i1 false}
!888 = !{!"../sound/soc/codecs/da7218.c", i32 1332, i32 38}
!889 = !{ptr @da7218_audio_map, !890, !"da7218_audio_map", i1 false, i1 false}
!890 = !{!"../sound/soc/codecs/da7218.c", i32 1717, i32 40}
!891 = !{ptr @.str.528, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../sound/soc/codecs/da7218.c", i32 2896, i32 46}
!893 = !{ptr @.str.529, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../sound/soc/codecs/da7218.c", i32 2974, i32 4}
!895 = !{ptr @.str.530, !894, !"<string literal>", i1 false, i1 false}
!896 = !{ptr @da7218_probe._entry, !894, !"_entry", i1 false, i1 false}
!897 = !{ptr @da7218_probe._entry_ptr, !894, !"_entry_ptr", i1 false, i1 false}
!898 = !{ptr @.str.531, !899, !"<string literal>", i1 false, i1 false}
!899 = !{!"../sound/soc/codecs/da7218.c", i32 2647, i32 3}
!900 = !{ptr @.str.532, !899, !"<string literal>", i1 false, i1 false}
!901 = !{ptr @da7218_handle_supplies._entry, !899, !"_entry", i1 false, i1 false}
!902 = !{ptr @da7218_handle_supplies._entry_ptr, !899, !"_entry_ptr", i1 false, i1 false}
!903 = !{ptr @.str.534, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../sound/soc/codecs/da7218.c", i32 2655, i32 3}
!905 = !{ptr @da7218_handle_supplies._entry.533, !904, !"_entry", i1 false, i1 false}
!906 = !{ptr @da7218_handle_supplies._entry_ptr.535, !904, !"_entry_ptr", i1 false, i1 false}
!907 = !{ptr @.str.537, !908, !"<string literal>", i1 false, i1 false}
!908 = !{!"../sound/soc/codecs/da7218.c", i32 2662, i32 3}
!909 = !{ptr @da7218_handle_supplies._entry.536, !908, !"_entry", i1 false, i1 false}
!910 = !{ptr @da7218_handle_supplies._entry_ptr.538, !908, !"_entry_ptr", i1 false, i1 false}
!911 = !{ptr @.str.539, !912, !"<string literal>", i1 false, i1 false}
!912 = !{!"../sound/soc/codecs/da7218.c", i32 2628, i32 24}
!913 = !{ptr @.str.540, !914, !"<string literal>", i1 false, i1 false}
!914 = !{!"../sound/soc/codecs/da7218.c", i32 2629, i32 27}
!915 = !{ptr @.str.541, !916, !"<string literal>", i1 false, i1 false}
!916 = !{!"../sound/soc/codecs/da7218.c", i32 2630, i32 26}
!917 = distinct !{null, !918, !"da7218_supply_names", i1 false, i1 false}
!918 = !{!"../sound/soc/codecs/da7218.c", i32 2627, i32 20}
!919 = !{ptr @.str.542, !920, !"<string literal>", i1 false, i1 false}
!920 = !{!"../sound/soc/codecs/da7218.c", i32 2457, i32 31}
!921 = !{ptr @.str.543, !922, !"<string literal>", i1 false, i1 false}
!922 = !{!"../sound/soc/codecs/da7218.c", i32 2462, i32 31}
!923 = !{ptr @.str.544, !924, !"<string literal>", i1 false, i1 false}
!924 = !{!"../sound/soc/codecs/da7218.c", i32 2467, i32 35}
!925 = !{ptr @.str.545, !926, !"<string literal>", i1 false, i1 false}
!926 = !{!"../sound/soc/codecs/da7218.c", i32 2473, i32 35}
!927 = !{ptr @.str.546, !928, !"<string literal>", i1 false, i1 false}
!928 = !{!"../sound/soc/codecs/da7218.c", i32 2479, i32 35}
!929 = !{ptr @.str.547, !930, !"<string literal>", i1 false, i1 false}
!930 = !{!"../sound/soc/codecs/da7218.c", i32 2484, i32 35}
!931 = !{ptr @.str.548, !932, !"<string literal>", i1 false, i1 false}
!932 = !{!"../sound/soc/codecs/da7218.c", i32 2490, i32 31}
!933 = !{ptr @.str.549, !934, !"<string literal>", i1 false, i1 false}
!934 = !{!"../sound/soc/codecs/da7218.c", i32 2495, i32 35}
!935 = !{ptr @.str.550, !936, !"<string literal>", i1 false, i1 false}
!936 = !{!"../sound/soc/codecs/da7218.c", i32 2500, i32 35}
!937 = !{ptr @.str.551, !938, !"<string literal>", i1 false, i1 false}
!938 = !{!"../sound/soc/codecs/da7218.c", i32 2506, i32 31}
!939 = !{ptr @.str.552, !940, !"<string literal>", i1 false, i1 false}
!940 = !{!"../sound/soc/codecs/da7218.c", i32 2512, i32 33}
!941 = !{ptr @.str.553, !942, !"<string literal>", i1 false, i1 false}
!942 = !{!"../sound/soc/codecs/da7218.c", i32 2517, i32 40}
!943 = !{ptr @.str.554, !944, !"<string literal>", i1 false, i1 false}
!944 = !{!"../sound/soc/codecs/da7218.c", i32 2529, i32 39}
!945 = !{ptr @.str.555, !946, !"<string literal>", i1 false, i1 false}
!946 = !{!"../sound/soc/codecs/da7218.c", i32 2536, i32 39}
!947 = !{ptr @.str.556, !948, !"<string literal>", i1 false, i1 false}
!948 = !{!"../sound/soc/codecs/da7218.c", i32 2544, i32 39}
!949 = !{ptr @.str.557, !950, !"<string literal>", i1 false, i1 false}
!950 = !{!"../sound/soc/codecs/da7218.c", i32 2551, i32 40}
!951 = !{ptr @.str.558, !952, !"<string literal>", i1 false, i1 false}
!952 = !{!"../sound/soc/codecs/da7218.c", i32 2554, i32 40}
!953 = !{ptr @.str.559, !954, !"<string literal>", i1 false, i1 false}
!954 = !{!"../sound/soc/codecs/da7218.c", i32 2557, i32 40}
!955 = !{ptr @.str.560, !956, !"<string literal>", i1 false, i1 false}
!956 = !{!"../sound/soc/codecs/da7218.c", i32 2321, i32 3}
!957 = !{ptr @.str.561, !956, !"<string literal>", i1 false, i1 false}
!958 = !{ptr @da7218_of_micbias_lvl._entry, !956, !"_entry", i1 false, i1 false}
!959 = !{ptr @da7218_of_micbias_lvl._entry_ptr, !956, !"_entry_ptr", i1 false, i1 false}
!960 = !{ptr @.str.562, !961, !"<string literal>", i1 false, i1 false}
!961 = !{!"../sound/soc/codecs/da7218.c", i32 2329, i32 19}
!962 = !{ptr @.str.563, !963, !"<string literal>", i1 false, i1 false}
!963 = !{!"../sound/soc/codecs/da7218.c", i32 2331, i32 26}
!964 = !{ptr @.str.564, !965, !"<string literal>", i1 false, i1 false}
!965 = !{!"../sound/soc/codecs/da7218.c", i32 2333, i32 26}
!966 = !{ptr @.str.565, !967, !"<string literal>", i1 false, i1 false}
!967 = !{!"../sound/soc/codecs/da7218.c", i32 2336, i32 3}
!968 = !{ptr @.str.566, !967, !"<string literal>", i1 false, i1 false}
!969 = !{ptr @da7218_of_mic_amp_in_sel._entry, !967, !"_entry", i1 false, i1 false}
!970 = !{ptr @da7218_of_mic_amp_in_sel._entry_ptr, !967, !"_entry_ptr", i1 false, i1 false}
!971 = !{ptr @.str.567, !972, !"<string literal>", i1 false, i1 false}
!972 = !{!"../sound/soc/codecs/da7218.c", i32 2344, i32 19}
!973 = !{ptr @.str.568, !974, !"<string literal>", i1 false, i1 false}
!974 = !{!"../sound/soc/codecs/da7218.c", i32 2346, i32 26}
!975 = !{ptr @.str.569, !976, !"<string literal>", i1 false, i1 false}
!976 = !{!"../sound/soc/codecs/da7218.c", i32 2349, i32 3}
!977 = !{ptr @.str.570, !976, !"<string literal>", i1 false, i1 false}
!978 = !{ptr @da7218_of_dmic_data_sel._entry, !976, !"_entry", i1 false, i1 false}
!979 = !{ptr @da7218_of_dmic_data_sel._entry_ptr, !976, !"_entry_ptr", i1 false, i1 false}
!980 = !{ptr @.str.571, !981, !"<string literal>", i1 false, i1 false}
!981 = !{!"../sound/soc/codecs/da7218.c", i32 2357, i32 19}
!982 = !{ptr @.str.572, !983, !"<string literal>", i1 false, i1 false}
!983 = !{!"../sound/soc/codecs/da7218.c", i32 2359, i32 26}
!984 = !{ptr @.str.573, !985, !"<string literal>", i1 false, i1 false}
!985 = !{!"../sound/soc/codecs/da7218.c", i32 2362, i32 3}
!986 = !{ptr @.str.574, !985, !"<string literal>", i1 false, i1 false}
!987 = !{ptr @da7218_of_dmic_samplephase._entry, !985, !"_entry", i1 false, i1 false}
!988 = !{ptr @da7218_of_dmic_samplephase._entry_ptr, !985, !"_entry_ptr", i1 false, i1 false}
!989 = !{ptr @.str.575, !990, !"<string literal>", i1 false, i1 false}
!990 = !{!"../sound/soc/codecs/da7218.c", i32 2376, i32 3}
!991 = !{ptr @.str.576, !990, !"<string literal>", i1 false, i1 false}
!992 = !{ptr @da7218_of_dmic_clkrate._entry, !990, !"_entry", i1 false, i1 false}
!993 = !{ptr @da7218_of_dmic_clkrate._entry_ptr, !990, !"_entry_ptr", i1 false, i1 false}
!994 = !{ptr @.str.577, !995, !"<string literal>", i1 false, i1 false}
!995 = !{!"../sound/soc/codecs/da7218.c", i32 2402, i32 3}
!996 = !{ptr @.str.578, !995, !"<string literal>", i1 false, i1 false}
!997 = !{ptr @da7218_of_jack_rate._entry, !995, !"_entry", i1 false, i1 false}
!998 = !{ptr @da7218_of_jack_rate._entry_ptr, !995, !"_entry_ptr", i1 false, i1 false}
!999 = !{ptr @.str.579, !1000, !"<string literal>", i1 false, i1 false}
!1000 = !{!"../sound/soc/codecs/da7218.c", i32 2420, i32 3}
!1001 = !{ptr @.str.580, !1000, !"<string literal>", i1 false, i1 false}
!1002 = !{ptr @da7218_of_jack_debounce._entry, !1000, !"_entry", i1 false, i1 false}
!1003 = !{ptr @da7218_of_jack_debounce._entry_ptr, !1000, !"_entry_ptr", i1 false, i1 false}
!1004 = !{ptr @.str.581, !1005, !"<string literal>", i1 false, i1 false}
!1005 = !{!"../sound/soc/codecs/da7218.c", i32 2438, i32 3}
!1006 = !{ptr @.str.582, !1005, !"<string literal>", i1 false, i1 false}
!1007 = !{ptr @da7218_of_jack_thr._entry, !1005, !"_entry", i1 false, i1 false}
!1008 = !{ptr @da7218_of_jack_thr._entry_ptr, !1005, !"_entry_ptr", i1 false, i1 false}
!1009 = !{ptr @.str.583, !1010, !"<string literal>", i1 false, i1 false}
!1010 = !{!"../sound/soc/codecs/da7218.c", i32 2226, i32 3}
!1011 = !{ptr @.str.584, !1012, !"<string literal>", i1 false, i1 false}
!1012 = !{!"../sound/soc/codecs/da7218.c", i32 2586, i32 6}
!1013 = !{ptr @.str.585, !1012, !"<string literal>", i1 false, i1 false}
!1014 = !{ptr @da7218_set_bias_level._entry, !1012, !"_entry", i1 false, i1 false}
!1015 = !{ptr @da7218_set_bias_level._entry_ptr, !1012, !"_entry_ptr", i1 false, i1 false}
!1016 = !{ptr @.str.586, !1017, !"<string literal>", i1 false, i1 false}
!1017 = !{!"../sound/soc/codecs/da7218.c", i32 2181, i32 10}
!1018 = !{ptr @da7218_dai, !1019, !"da7218_dai", i1 false, i1 false}
!1019 = !{!"../sound/soc/codecs/da7218.c", i32 2180, i32 34}
!1020 = !{ptr @da7218_dai_ops, !1021, !"da7218_dai_ops", i1 false, i1 false}
!1021 = !{!"../sound/soc/codecs/da7218.c", i32 2169, i32 37}
!1022 = !{ptr @.str.587, !1023, !"<string literal>", i1 false, i1 false}
!1023 = !{!"../sound/soc/codecs/da7218.c", i32 1820, i32 3}
!1024 = !{ptr @.str.588, !1023, !"<string literal>", i1 false, i1 false}
!1025 = !{ptr @da7218_set_dai_sysclk._entry, !1023, !"_entry", i1 false, i1 false}
!1026 = !{ptr @da7218_set_dai_sysclk._entry_ptr, !1023, !"_entry_ptr", i1 false, i1 false}
!1027 = !{ptr @.str.590, !1028, !"<string literal>", i1 false, i1 false}
!1028 = !{!"../sound/soc/codecs/da7218.c", i32 1836, i32 3}
!1029 = !{ptr @da7218_set_dai_sysclk._entry.589, !1028, !"_entry", i1 false, i1 false}
!1030 = !{ptr @da7218_set_dai_sysclk._entry_ptr.591, !1028, !"_entry_ptr", i1 false, i1 false}
!1031 = !{ptr @.str.593, !1032, !"<string literal>", i1 false, i1 false}
!1032 = !{!"../sound/soc/codecs/da7218.c", i32 1844, i32 4}
!1033 = !{ptr @da7218_set_dai_sysclk._entry.592, !1032, !"_entry", i1 false, i1 false}
!1034 = !{ptr @da7218_set_dai_sysclk._entry_ptr.594, !1032, !"_entry_ptr", i1 false, i1 false}
!1035 = !{ptr @.str.595, !1036, !"<string literal>", i1 false, i1 false}
!1036 = !{!"../sound/soc/codecs/da7218.c", i32 1868, i32 3}
!1037 = !{ptr @.str.596, !1036, !"<string literal>", i1 false, i1 false}
!1038 = !{ptr @da7218_set_dai_pll._entry, !1036, !"_entry", i1 false, i1 false}
!1039 = !{ptr @da7218_set_dai_pll._entry_ptr, !1036, !"_entry_ptr", i1 false, i1 false}
!1040 = !{ptr @.str.598, !1041, !"<string literal>", i1 false, i1 false}
!1041 = !{!"../sound/soc/codecs/da7218.c", i32 1887, i32 3}
!1042 = !{ptr @da7218_set_dai_pll._entry.597, !1041, !"_entry", i1 false, i1 false}
!1043 = !{ptr @da7218_set_dai_pll._entry_ptr.599, !1041, !"_entry_ptr", i1 false, i1 false}
!1044 = !{ptr @.str.601, !1045, !"<string literal>", i1 false, i1 false}
!1045 = !{!"../sound/soc/codecs/da7218.c", i32 1909, i32 3}
!1046 = !{ptr @da7218_set_dai_pll._entry.600, !1045, !"_entry", i1 false, i1 false}
!1047 = !{ptr @da7218_set_dai_pll._entry_ptr.602, !1045, !"_entry_ptr", i1 false, i1 false}
!1048 = !{ptr @.str.603, !1049, !"<string literal>", i1 false, i1 false}
!1049 = !{!"../sound/soc/codecs/da7218.c", i32 2039, i32 3}
!1050 = !{ptr @.str.604, !1049, !"<string literal>", i1 false, i1 false}
!1051 = !{ptr @da7218_set_dai_tdm_slot._entry, !1049, !"_entry", i1 false, i1 false}
!1052 = !{ptr @da7218_set_dai_tdm_slot._entry_ptr, !1049, !"_entry_ptr", i1 false, i1 false}
!1053 = !{ptr @.str.606, !1054, !"<string literal>", i1 false, i1 false}
!1054 = !{!"../sound/soc/codecs/da7218.c", i32 2046, i32 3}
!1055 = !{ptr @da7218_set_dai_tdm_slot._entry.605, !1054, !"_entry", i1 false, i1 false}
!1056 = !{ptr @da7218_set_dai_tdm_slot._entry_ptr.607, !1054, !"_entry_ptr", i1 false, i1 false}
!1057 = !{ptr @.str.609, !1058, !"<string literal>", i1 false, i1 false}
!1058 = !{!"../sound/soc/codecs/da7218.c", i32 2067, i32 3}
!1059 = !{ptr @da7218_set_dai_tdm_slot._entry.608, !1058, !"_entry", i1 false, i1 false}
!1060 = !{ptr @da7218_set_dai_tdm_slot._entry_ptr.610, !1058, !"_entry_ptr", i1 false, i1 false}
!1061 = !{ptr @.str.611, !1062, !"<string literal>", i1 false, i1 false}
!1062 = !{!"../sound/soc/codecs/da7218.c", i32 2114, i32 3}
!1063 = !{ptr @.str.612, !1062, !"<string literal>", i1 false, i1 false}
!1064 = !{ptr @da7218_hw_params._entry, !1062, !"_entry", i1 false, i1 false}
!1065 = !{ptr @da7218_hw_params._entry_ptr, !1062, !"_entry_ptr", i1 false, i1 false}
!1066 = !{ptr @da7218_of_match, !1067, !"da7218_of_match", i1 false, i1 false}
!1067 = !{!"../sound/soc/codecs/da7218.c", i32 2281, i32 34}
!1068 = !{ptr @da7218_i2c_id, !1069, !"da7218_i2c_id", i1 false, i1 false}
!1069 = !{!"../sound/soc/codecs/da7218.c", i32 3302, i32 35}
!1070 = !{i32 1, !"wchar_size", i32 2}
!1071 = !{i32 1, !"min_enum_size", i32 4}
!1072 = !{i32 8, !"branch-target-enforcement", i32 0}
!1073 = !{i32 8, !"sign-return-address", i32 0}
!1074 = !{i32 8, !"sign-return-address-all", i32 0}
!1075 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1076 = !{i32 7, !"uwtable", i32 1}
!1077 = !{i32 7, !"frame-pointer", i32 2}
!1078 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1079 = !{!"auto-init"}
!1080 = !{i8 0, i8 2}
!1081 = !{!"branch_weights", i32 2000, i32 1}
!1082 = !{i64 2148738853, i64 2148739133, i64 2148739467, i64 2148739801}
!1083 = !{i32 0, i32 33}
