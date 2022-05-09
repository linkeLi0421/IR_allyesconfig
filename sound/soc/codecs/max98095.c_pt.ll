; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98095.c_pt.bc'
source_filename = "../sound/soc/codecs/max98095.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+max98095_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_max98095_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_max98095_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max98095_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22max98095_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_max98095_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.108 = type { i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.max98095_priv = type { ptr, i32, ptr, ptr, i32, [3 x %struct.max98095_cdata], ptr, ptr, %struct.soc_enum, %struct.soc_enum, i32, i32, i8, i32, i32, ptr, ptr, %struct.mutex }
%struct.max98095_cdata = type { i32, i32, i32, i32 }
%struct.max98095_pdata = type { ptr, i32, ptr, i32, i8, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.max98095_eq_cfg = type { ptr, i32, [5 x i16], [5 x i16], [5 x i16], [5 x i16], [5 x i16] }
%struct.max98095_biquad_cfg = type { ptr, i32, [5 x i16], [5 x i16] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@max98095_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1913, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to cfg jack irqs %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98095_jack_detect\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/max98095.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98095_jack_detect._entry_ptr = internal global ptr @max98095_jack_detect._entry, section ".printk_index", align 4
@__kstrtab_max98095_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_max98095_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_max98095_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max98095_jack_detect to i32), ptr @__kstrtab_max98095_jack_detect, ptr @__kstrtabns_max98095_jack_detect }, section "___ksymtab_gpl+max98095_jack_detect", align 4
@__initcall__kmod_snd_soc_max98095__299_2168_max98095_i2c_driver_init6 = internal global ptr @max98095_i2c_driver_init, section ".initcall6.init", align 4
@max98095_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max98095_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98095_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max98095_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max98095_i2c_driver_exit = internal global ptr @max98095_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [54 x i8] c"snd_soc_max98095.description=ALSA SoC MAX98095 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [37 x i8] c"snd_soc_max98095.author=Peter Hsiang\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [56 x i8] c"snd_soc_max98095.file=sound/soc/codecs/snd-soc-max98095\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [29 x i8] c"snd_soc_max98095.license=GPL\00", section ".modinfo", align 1
@max98095_jack_detect_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1865, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to cfg auto detect %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max98095_jack_detect_enable\00", [36 x i8] zeroinitializer }, align 32
@max98095_jack_detect_enable._entry_ptr = internal global ptr @max98095_jack_detect_enable._entry, section ".printk_index", align 4
@max98095_jack_detect_enable._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1872, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@max98095_jack_detect_enable._entry_ptr.8 = internal global ptr @max98095_jack_detect_enable._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98095\00", [23 x i8] zeroinitializer }, align 32
@max98095_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98095\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max98095_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98095\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max98095_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&max98095->lock\00", [16 x i8] zeroinitializer }, align 32
@max98095_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98095_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max98095_writeable, ptr @max98095_readable, ptr @max98095_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_reg_def, i32 138, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"max98095:2128:(&max98095_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@max98095_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 2131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98095_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@max98095_i2c_probe._entry_ptr = internal global ptr @max98095_i2c_probe._entry, section ".printk_index", align 4
@soc_component_dev_max98095 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @max98095_snd_controls, i32 28, ptr @max98095_dapm_widgets, i32 45, ptr @max98095_audio_map, i32 76, ptr @max98095_probe, ptr @max98095_remove, ptr @max98095_suspend, ptr @max98095_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@max98095_dai = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.226, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai1_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.73, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.76, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.227, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai2_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.79, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.62, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai3_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.81, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@max98095_reg_def = internal constant { [138 x %struct.reg_default], [272 x i8] } { [138 x %struct.reg_default] [%struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 141, i32 0 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 48 }, %struct.reg_default { i32 147, i32 240 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 63 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 255, i32 0 }], [272 x i8] zeroinitializer }, align 32
@max98095_snd_controls = internal constant { [28 x %struct.snd_kcontrol_new], [320 x i8] } { [28 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_hp_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_rcv_lout_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_rcv_lout_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98095_mic1pre_get, ptr @max98095_mic1pre_set, %union.anon.94 { ptr @max98095_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98095_mic2pre_get, ptr @max98095_mic2pre_set, %union.anon.94 { ptr @max98095_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_lin_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_adcboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98095_adcboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_dai1_filter_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_dai2_filter_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_dai1_dac_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_dai2_dac_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_dai3_dac_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_linein_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_lineout_mode_enum to i32) }], [320 x i8] zeroinitializer }, align 32
@max98095_audio_map = internal constant { [76 x %struct.snd_soc_dapm_route], [976 x i8] } { [76 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.129, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.129, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.129, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.147, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.149, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.129, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.147, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.149, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.129, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.129, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.129, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.131, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.133, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.135, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.137, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }], [976 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@max98095_hp_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6700, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -4000, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1700, i32 200, i32 22, i32 27, i32 1, i32 8, i32 -400, i32 100, i32 28, i32 31, i32 1, i32 8, i32 150, i32 50], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 100, i32 101, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@max98095_spk_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 10, i32 1, i32 8, i32 -5900, i32 400, i32 11, i32 18, i32 1, i32 8, i32 -1700, i32 200, i32 19, i32 27, i32 1, i32 8, i32 -200, i32 100, i32 28, i32 39, i32 1, i32 8, i32 650, i32 50], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 103, i32 104, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Receiver Volume\00", [16 x i8] zeroinitializer }, align 32
@max98095_rcv_lout_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6200, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -3500, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1200, i32 200, i32 22, i32 27, i32 1, i32 8, i32 100, i32 100, i32 28, i32 31, i32 1, i32 8, i32 650, i32 50], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 102, i32 102, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 98, i32 99, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 101, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 104, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Receiver Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 102, i32 102, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 98, i32 99, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@max98095_mic_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 95, i32 95, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 96, i32 96, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC1 Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@max98095_micboost_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 0, i32 2000, i32 2, i32 2, i32 1, i32 8, i32 3000, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 95, i32 95, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC2 Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 96, i32 96, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Linein Volume\00", [18 x i8] zeroinitializer }, align 32
@max98095_lin_tlv = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 3, i32 72, i32 0, i32 2, i32 1, i32 8, i32 -600, i32 300, i32 3, i32 3, i32 1, i32 8, i32 300, i32 1100, i32 4, i32 5, i32 1, i32 8, i32 1400, i32 600], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 97, i32 97, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADCL Volume\00", [20 x i8] zeroinitializer }, align 32
@max98095_adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 93, i32 93, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADCR Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 94, i32 94, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCL Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@max98095_adcboost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 93, i32 93, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCR Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 94, i32 94, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Biquad1 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Biquad2 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAI1 Filter Mode\00", [47 x i8] zeroinitializer }, align 32
@max98095_dai1_filter_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 7, i8 7, i32 2, i32 1, ptr @max98095_fltr_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAI2 Filter Mode\00", [47 x i8] zeroinitializer }, align 32
@max98095_dai2_filter_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 7, i8 7, i32 2, i32 1, ptr @max98095_fltr_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAI1 DAC Filter\00", [16 x i8] zeroinitializer }, align 32
@max98095_dai1_dac_filter_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 0, i8 0, i32 6, i32 7, ptr @max98095_dai_fltr, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAI2 DAC Filter\00", [16 x i8] zeroinitializer }, align 32
@max98095_dai2_dac_filter_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 0, i8 0, i32 6, i32 7, ptr @max98095_dai_fltr, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAI3 DAC Filter\00", [16 x i8] zeroinitializer }, align 32
@max98095_dai3_dac_filter_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 66, i8 0, i8 0, i32 6, i32 7, ptr @max98095_dai_fltr, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Linein Mode\00", [20 x i8] zeroinitializer }, align 32
@max98095_linein_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 134, i8 7, i8 7, i32 2, i32 1, ptr @max98095_line_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lineout Mode\00", [19 x i8] zeroinitializer }, align 32
@max98095_lineout_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 134, i8 4, i8 4, i32 2, i32 1, ptr @max98095_line_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98095_fltr_mode = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.62, ptr @.str.63], [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Music\00", [26 x i8] zeroinitializer }, align 32
@max98095_dai_fltr = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Elliptical-HPF-16k\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Butterworth-HPF-16k\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Elliptical-HPF-8k\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Butterworth-HPF-8k\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Butterworth-HPF-Fs/240\00", [41 x i8] zeroinitializer }, align 32
@max98095_line_mode_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Differential\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACL1\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACR1\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACM2\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Aux Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACM3\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Voice Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HP Left Out\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP Right Out\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK Left Out\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPK Right Out\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RCV Mono Out\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LINE Left Out\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LINE Right Out\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"External MIC\00", [19 x i8] zeroinitializer }, align 32
@max98095_extmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_extmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Linein Mux\00", [21 x i8] zeroinitializer }, align 32
@max98095_linein_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98095_linein_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Headphone Mixer\00", [43 x i8] zeroinitializer }, align 32
@max98095_left_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Headphone Mixer\00", [42 x i8] zeroinitializer }, align 32
@max98095_right_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Speaker Mixer\00", [45 x i8] zeroinitializer }, align 32
@max98095_left_speaker_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Speaker Mixer\00", [44 x i8] zeroinitializer }, align 32
@max98095_right_speaker_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Receiver Mixer\00", [17 x i8] zeroinitializer }, align 32
@max98095_mono_rcv_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Lineout Mixer\00", [45 x i8] zeroinitializer }, align 32
@max98095_left_lineout_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Lineout Mixer\00", [44 x i8] zeroinitializer }, align 32
@max98095_right_lineout_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left ADC Mixer\00", [17 x i8] zeroinitializer }, align 32
@max98095_left_ADC_mixer_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right ADC Mixer\00", [16 x i8] zeroinitializer }, align 32
@max98095_right_ADC_mixer_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC1 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC2 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN1 Input\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN2 Input\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCV\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT1\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT2\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT3\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT4\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INA1\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INA2\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INB1\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INB2\00", [27 x i8] zeroinitializer }, align 32
@max98095_dapm_widgets = internal constant { [45 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2044 x i8] } { [45 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.72, ptr @.str.73, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.74, ptr @.str.73, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.75, ptr @.str.76, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.77, ptr @.str.76, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.78, ptr @.str.79, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.80, ptr @.str.81, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 146, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 4, ptr @max98095_lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 146, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 4, ptr @max98095_lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98095_extmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98095_linein_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @max98095_left_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @max98095_right_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_mono_rcv_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_left_lineout_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_right_lineout_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98095_left_ADC_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98095_right_ADC_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 95, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_mic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 96, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_mic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_pga_in1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_pga_in2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2044 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"External MIC Mux\00", [47 x i8] zeroinitializer }, align 32
@max98095_extmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 135, i8 0, i8 0, i32 3, i32 3, ptr @max98095_extmic_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98095_extmic_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.123, ptr @.str.115, ptr @.str.116], [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Linein Input Mux\00", [47 x i8] zeroinitializer }, align 32
@max98095_linein_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 134, i8 6, i8 6, i32 2, i32 1, ptr @max98095_linein_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98095_linein_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.125, ptr @.str.126], [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INA\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INB\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left DAC1 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right DAC1 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mono DAC2 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mono DAC3 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@max98095_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 2036, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max98095_probe\00", [17 x i8] zeroinitializer }, align 32
@max98095_probe._entry_ptr = internal global ptr @max98095_probe._entry, section ".printk_index", align 4
@max98095_probe._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.2, i32 2044, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failure reading hardware revision: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@max98095_probe._entry_ptr.194 = internal global ptr @max98095_probe._entry.192, section ".printk_index", align 4
@max98095_probe._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.191, ptr @.str.2, i32 2047, ptr @.str.197, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hardware revision: %c\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max98095_probe._entry_ptr.198 = internal global ptr @max98095_probe._entry.195, section ".printk_index", align 4
@max98095_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.2, i32 1962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to reset DSP: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max98095_reset\00", [17 x i8] zeroinitializer }, align 32
@max98095_reset._entry_ptr = internal global ptr @max98095_reset._entry, section ".printk_index", align 4
@max98095_reset._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.200, ptr @.str.2, i32 1968, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to reset component: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max98095_reset._entry_ptr.203 = internal global ptr @max98095_reset._entry.201, section ".printk_index", align 4
@max98095_reset._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.200, ptr @.str.2, i32 1977, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to reset: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@max98095_reset._entry_ptr.206 = internal global ptr @max98095_reset._entry.204, section ".printk_index", align 4
@max98095_handle_pdata.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.207, ptr @.str.208, ptr @.str.2, ptr @.str.209, i8 1, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_max98095\00", [47 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98095_handle_pdata\00", [42 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EQ1 Mode\00", [23 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EQ2 Mode\00", [23 x i8] zeroinitializer }, align 32
@max98095_handle_eq_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.2, i32 1626, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add EQ control: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max98095_handle_eq_pdata\00", [39 x i8] zeroinitializer }, align 32
@max98095_handle_eq_pdata._entry_ptr = internal global ptr @max98095_handle_eq_pdata._entry, section ".printk_index", align 4
@max98095_put_eq_enum.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.207, ptr @.str.214, ptr @.str.2, ptr @.str.215, i8 1, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98095_put_eq_enum\00", [43 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Selected %s/%dHz for %dHz sample rate\0A\00", [57 x i8] zeroinitializer }, align 32
@bq_mode_name = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.218, ptr @.str.219], [24 x i8] zeroinitializer }, align 32
@max98095_handle_bq_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.2, i32 1778, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add Biquad control: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max98095_handle_bq_pdata\00", [39 x i8] zeroinitializer }, align 32
@max98095_handle_bq_pdata._entry_ptr = internal global ptr @max98095_handle_bq_pdata._entry, section ".printk_index", align 4
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Biquad1 Mode\00", [19 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Biquad2 Mode\00", [19 x i8] zeroinitializer }, align 32
@max98095_get_bq_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 1638, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Bad biquad channel name '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98095_get_bq_channel\00", [40 x i8] zeroinitializer }, align 32
@max98095_get_bq_channel._entry_ptr = internal global ptr @max98095_get_bq_channel._entry, section ".printk_index", align 4
@max98095_put_bq_enum.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.207, ptr @.str.222, ptr @.str.2, ptr @.str.215, i8 1, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.222 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98095_put_bq_enum\00", [43 x i8] zeroinitializer }, align 32
@max98095_jack_detect_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.223, ptr @.str.2, i32 1886, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max98095_jack_detect_disable\00", [35 x i8] zeroinitializer }, align 32
@max98095_jack_detect_disable._entry_ptr = internal global ptr @max98095_jack_detect_disable._entry, section ".printk_index", align 4
@max98095_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.2, i32 1399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync cache: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98095_set_bias_level\00", [40 x i8] zeroinitializer }, align 32
@max98095_set_bias_level._entry_ptr = internal global ptr @max98095_set_bias_level._entry, section ".printk_index", align 4
@.str.226 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@max98095_dai1_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @max98095_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98095_dai1_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai1_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@max98095_dai2_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @max98095_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98095_dai2_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai2_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@max98095_dai3_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @max98095_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98095_dai3_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai3_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@max98095_dai_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.2, i32 1148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid master clock frequency\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98095_dai_set_sysclk\00", [40 x i8] zeroinitializer }, align 32
@max98095_dai_set_sysclk._entry_ptr = internal global ptr @max98095_dai_set_sysclk._entry, section ".printk_index", align 4
@max98095_dai_set_sysclk.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.207, ptr @.str.229, ptr @.str.2, ptr @.str.230, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Clock source is %d at %uHz\0A\00", [36 x i8] zeroinitializer }, align 32
@max98095_dai1_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.2, i32 1186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Clock mode unsupported\00", [41 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98095_dai1_set_fmt\00", [42 x i8] zeroinitializer }, align 32
@max98095_dai1_set_fmt._entry_ptr = internal global ptr @max98095_dai1_set_fmt._entry, section ".printk_index", align 4
@max98095_dai1_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 976, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid system clock frequency\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98095_dai1_hw_params\00", [40 x i8] zeroinitializer }, align 32
@max98095_dai1_hw_params._entry_ptr = internal global ptr @max98095_dai1_hw_params._entry, section ".printk_index", align 4
@rate_table = internal constant { [10 x %struct.anon.108], [48 x i8] } { [10 x %struct.anon.108] [%struct.anon.108 { i32 8000, i8 1 }, %struct.anon.108 { i32 11025, i8 2 }, %struct.anon.108 { i32 16000, i8 3 }, %struct.anon.108 { i32 22050, i8 4 }, %struct.anon.108 { i32 24000, i8 5 }, %struct.anon.108 { i32 32000, i8 6 }, %struct.anon.108 { i32 44100, i8 7 }, %struct.anon.108 { i32 48000, i8 8 }, %struct.anon.108 { i32 88200, i8 9 }, %struct.anon.108 { i32 96000, i8 10 }], [48 x i8] zeroinitializer }, align 32
@max98095_dai2_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.235, ptr @.str.2, i32 1254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98095_dai2_set_fmt\00", [42 x i8] zeroinitializer }, align 32
@max98095_dai2_set_fmt._entry_ptr = internal global ptr @max98095_dai2_set_fmt._entry, section ".printk_index", align 4
@max98095_dai2_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.236, ptr @.str.2, i32 1037, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98095_dai2_hw_params\00", [40 x i8] zeroinitializer }, align 32
@max98095_dai2_hw_params._entry_ptr = internal global ptr @max98095_dai2_hw_params._entry, section ".printk_index", align 4
@max98095_dai3_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.237, ptr @.str.2, i32 1323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98095_dai3_set_fmt\00", [42 x i8] zeroinitializer }, align 32
@max98095_dai3_set_fmt._entry_ptr = internal global ptr @max98095_dai3_set_fmt._entry, section ".printk_index", align 4
@max98095_dai3_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.238, ptr @.str.2, i32 1098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98095_dai3_hw_params\00", [40 x i8] zeroinitializer }, align 32
@max98095_dai3_hw_params._entry_ptr = internal global ptr @max98095_dai3_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.245 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.253 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1913, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c"max98095_i2c_driver\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2159, i32 26 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1865, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1872, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2161, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"max98095_of_match\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2152, i32 34 }
@___asan_gen_.294 = private unnamed_addr constant [16 x i8] c"max98095_i2c_id\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2145, i32 35 }
@___asan_gen_.297 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2126, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"max98095_regmap\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 234, i32 35 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2128, i32 21 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2131, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [27 x i8] c"soc_component_dev_max98095\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2097, i32 46 }
@___asan_gen_.324 = private unnamed_addr constant [13 x i8] c"max98095_dai\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1438, i32 34 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"max98095_reg_def\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 61, i32 33 }
@___asan_gen_.330 = private unnamed_addr constant [22 x i8] c"max98095_snd_controls\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 436, i32 38 }
@___asan_gen_.333 = private unnamed_addr constant [19 x i8] c"max98095_audio_map\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 805, i32 40 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 438, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [16 x i8] c"max98095_hp_tlv\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 407, i32 14 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 441, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"max98095_spk_tlv\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 415, i32 14 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 444, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [22 x i8] c"max98095_rcv_lout_tlv\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 422, i32 14 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 447, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 450, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 453, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 456, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 458, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 461, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"max98095_mic_tlv\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 403, i32 14 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 464, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 467, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [22 x i8] c"max98095_micboost_tlv\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 398, i32 14 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 471, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 476, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"max98095_lin_tlv\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 430, i32 14 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 479, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"max98095_adc_tlv\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 404, i32 14 }
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 481, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 484, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [22 x i8] c"max98095_adcboost_tlv\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 405, i32 14 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 486, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 489, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 490, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 492, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 493, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 495, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [31 x i8] c"max98095_dai1_filter_mode_enum\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 301, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 496, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [31 x i8] c"max98095_dai2_filter_mode_enum\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 304, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 497, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [30 x i8] c"max98095_dai1_dac_filter_enum\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 340, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 498, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [30 x i8] c"max98095_dai2_dac_filter_enum\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 343, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 499, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [30 x i8] c"max98095_dai3_dac_filter_enum\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 346, i32 8 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 501, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [26 x i8] c"max98095_linein_mode_enum\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 329, i32 8 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 502, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [27 x i8] c"max98095_lineout_mode_enum\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 333, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant [19 x i8] c"max98095_fltr_mode\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 300, i32 27 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 300, i32 52 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 300, i32 61 }
@___asan_gen_.495 = private unnamed_addr constant [18 x i8] c"max98095_dai_fltr\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 337, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 338, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 338, i32 9 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 338, i32 31 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 339, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 339, i32 23 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 339, i32 45 }
@___asan_gen_.516 = private unnamed_addr constant [24 x i8] c"max98095_line_mode_text\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 326, i32 27 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 327, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 327, i32 12 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 696, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 697, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 699, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 701, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 703, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 705, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 708, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 710, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 713, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 715, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 718, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 721, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 723, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 726, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [20 x i8] c"max98095_extmic_mux\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 314, i32 38 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 729, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c"max98095_linein_mux\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 323, i32 38 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 732, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [32 x i8] c"max98095_left_hp_mixer_controls\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 530, i32 38 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 736, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [33 x i8] c"max98095_right_hp_mixer_controls\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 540, i32 38 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 740, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [37 x i8] c"max98095_left_speaker_mixer_controls\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 506, i32 38 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 744, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant [38 x i8] c"max98095_right_speaker_mixer_controls\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 518, i32 38 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 748, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [33 x i8] c"max98095_mono_rcv_mixer_controls\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 550, i32 38 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 752, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [37 x i8] c"max98095_left_lineout_mixer_controls\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 560, i32 38 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 756, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [38 x i8] c"max98095_right_lineout_mixer_controls\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 570, i32 38 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 760, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [33 x i8] c"max98095_left_ADC_mixer_controls\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 580, i32 38 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 764, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [34 x i8] c"max98095_right_ADC_mixer_controls\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 588, i32 38 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 768, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 772, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 776, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 780, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 784, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 785, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 787, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 788, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 789, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 790, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 791, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 792, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 793, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 794, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 795, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 797, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 798, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 799, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 800, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 801, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 802, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [22 x i8] c"max98095_dapm_widgets\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 694, i32 41 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 315, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c"max98095_extmic_enum\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 310, i32 8 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"max98095_extmic_text\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 308, i32 27 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 308, i32 54 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 324, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [21 x i8] c"max98095_linein_enum\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 319, i32 8 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c"max98095_linein_text\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 317, i32 27 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 317, i32 54 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 317, i32 61 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 531, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 532, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 533, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 534, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 535, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 536, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.761 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.762 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.765 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.766 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 509, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 510, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.778 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.781 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.782 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.785 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.787 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.793 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.794 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.797 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.799 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.802 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.803 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.809 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1992, i32 48 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2036, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2043, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2047, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1962, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1968, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1977, i32 4 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1788, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1580, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1584, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1626, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1528, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant [13 x i8] c"bq_mode_name\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1629, i32 20 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1778, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1629, i32 38 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1629, i32 54 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1638, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1679, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1886, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1399, i32 5 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1440, i32 10 }
@___asan_gen_.939 = private unnamed_addr constant [18 x i8] c"max98095_dai1_ops\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1420, i32 37 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1458, i32 10 }
@___asan_gen_.945 = private unnamed_addr constant [18 x i8] c"max98095_dai2_ops\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1426, i32 37 }
@___asan_gen_.948 = private unnamed_addr constant [18 x i8] c"max98095_dai3_ops\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1432, i32 37 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1148, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1152, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1186, i32 4 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 976, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant [11 x i8] c"rate_table\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 911, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1254, i32 4 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1037, i32 4 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1323, i32 4 }
@___asan_gen_.1002 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1006 = private constant [31 x i8] c"../sound/soc/codecs/max98095.c\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1098, i32 4 }
@llvm.compiler.used = appending global [331 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_max98095_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_max98095__299_2168_max98095_i2c_driver_init6, ptr @__ksymtab_max98095_jack_detect, ptr @max98095_dai1_hw_params._entry, ptr @max98095_dai1_hw_params._entry_ptr, ptr @max98095_dai1_set_fmt._entry, ptr @max98095_dai1_set_fmt._entry_ptr, ptr @max98095_dai2_hw_params._entry, ptr @max98095_dai2_hw_params._entry_ptr, ptr @max98095_dai2_set_fmt._entry, ptr @max98095_dai2_set_fmt._entry_ptr, ptr @max98095_dai3_hw_params._entry, ptr @max98095_dai3_hw_params._entry_ptr, ptr @max98095_dai3_set_fmt._entry, ptr @max98095_dai3_set_fmt._entry_ptr, ptr @max98095_dai_set_sysclk._entry, ptr @max98095_dai_set_sysclk._entry_ptr, ptr @max98095_get_bq_channel._entry, ptr @max98095_get_bq_channel._entry_ptr, ptr @max98095_handle_bq_pdata._entry, ptr @max98095_handle_bq_pdata._entry_ptr, ptr @max98095_handle_eq_pdata._entry, ptr @max98095_handle_eq_pdata._entry_ptr, ptr @max98095_i2c_driver_exit, ptr @max98095_i2c_probe._entry, ptr @max98095_i2c_probe._entry_ptr, ptr @max98095_jack_detect._entry, ptr @max98095_jack_detect._entry_ptr, ptr @max98095_jack_detect_disable._entry, ptr @max98095_jack_detect_disable._entry_ptr, ptr @max98095_jack_detect_enable._entry, ptr @max98095_jack_detect_enable._entry.7, ptr @max98095_jack_detect_enable._entry_ptr, ptr @max98095_jack_detect_enable._entry_ptr.8, ptr @max98095_probe._entry, ptr @max98095_probe._entry.192, ptr @max98095_probe._entry.195, ptr @max98095_probe._entry_ptr, ptr @max98095_probe._entry_ptr.194, ptr @max98095_probe._entry_ptr.198, ptr @max98095_reset._entry, ptr @max98095_reset._entry.201, ptr @max98095_reset._entry.204, ptr @max98095_reset._entry_ptr, ptr @max98095_reset._entry_ptr.203, ptr @max98095_reset._entry_ptr.206, ptr @max98095_set_bias_level._entry, ptr @max98095_set_bias_level._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @max98095_i2c_driver, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @max98095_of_match, ptr @max98095_i2c_id, ptr @max98095_i2c_probe.__key, ptr @.str.10, ptr @max98095_i2c_probe._key, ptr @max98095_regmap, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @soc_component_dev_max98095, ptr @max98095_dai, ptr @max98095_reg_def, ptr @max98095_snd_controls, ptr @max98095_audio_map, ptr @.str.14, ptr @max98095_hp_tlv, ptr @.compoundliteral, ptr @.str.15, ptr @max98095_spk_tlv, ptr @.compoundliteral.16, ptr @.str.17, ptr @max98095_rcv_lout_tlv, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @max98095_mic_tlv, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @max98095_micboost_tlv, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @max98095_lin_tlv, ptr @.compoundliteral.38, ptr @.str.39, ptr @max98095_adc_tlv, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @max98095_adcboost_tlv, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @max98095_dai1_filter_mode_enum, ptr @.str.56, ptr @max98095_dai2_filter_mode_enum, ptr @.str.57, ptr @max98095_dai1_dac_filter_enum, ptr @.str.58, ptr @max98095_dai2_dac_filter_enum, ptr @.str.59, ptr @max98095_dai3_dac_filter_enum, ptr @.str.60, ptr @max98095_linein_mode_enum, ptr @.str.61, ptr @max98095_lineout_mode_enum, ptr @max98095_fltr_mode, ptr @.str.62, ptr @.str.63, ptr @max98095_dai_fltr, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @max98095_line_mode_text, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @max98095_extmic_mux, ptr @.str.90, ptr @max98095_linein_mux, ptr @.str.91, ptr @max98095_left_hp_mixer_controls, ptr @.str.92, ptr @max98095_right_hp_mixer_controls, ptr @.str.93, ptr @max98095_left_speaker_mixer_controls, ptr @.str.94, ptr @max98095_right_speaker_mixer_controls, ptr @.str.95, ptr @max98095_mono_rcv_mixer_controls, ptr @.str.96, ptr @max98095_left_lineout_mixer_controls, ptr @.str.97, ptr @max98095_right_lineout_mixer_controls, ptr @.str.98, ptr @max98095_left_ADC_mixer_controls, ptr @.str.99, ptr @max98095_right_ADC_mixer_controls, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @max98095_dapm_widgets, ptr @.str.122, ptr @max98095_extmic_enum, ptr @max98095_extmic_text, ptr @.str.123, ptr @.str.124, ptr @max98095_linein_enum, ptr @max98095_linein_text, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.compoundliteral.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.compoundliteral.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @.compoundliteral.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.202, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @bq_mode_name, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @max98095_dai1_ops, ptr @.str.227, ptr @max98095_dai2_ops, ptr @max98095_dai3_ops, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @rate_table, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238], section "llvm.metadata"
@0 = internal global [301 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_jack_detect_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_jack_detect_enable._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_max98095 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_reg_def to i32), i32 1104, i32 1376, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_snd_controls to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_audio_map to i32), i32 3952, i32 4928, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_hp_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_spk_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_rcv_lout_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_mic_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_micboost_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_lin_tlv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_adcboost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai1_filter_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai2_filter_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai1_dac_filter_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai2_dac_filter_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai3_dac_filter_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_linein_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_lineout_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_fltr_mode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai_fltr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_line_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_extmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_linein_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_left_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_right_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_left_speaker_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_right_speaker_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_mono_rcv_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_left_lineout_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_right_lineout_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_left_ADC_mixer_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_right_ADC_mixer_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dapm_widgets to i32), i32 8100, i32 10144, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_extmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_extmic_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_linein_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_linein_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_probe._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_probe._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_reset._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_reset._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_handle_eq_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq_mode_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_handle_bq_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_get_bq_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_jack_detect_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai1_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai2_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai3_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai1_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai1_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai2_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai2_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai3_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98095_dai3_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max98095_jack_detect(ptr noundef %component, ptr noundef %hp_jack, ptr noundef %mic_jack) #0 align 64 {
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
  %headphone_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %headphone_jack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hp_jack, ptr %headphone_jack, align 4
  %mic_jack1 = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %mic_jack1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mic_jack, ptr %mic_jack1, align 4
  %tobool.not = icmp eq ptr %hp_jack, null
  %tobool2.not = icmp eq ptr %mic_jack, null
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.max98095_priv, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %jack_detect_pin5en.i = getelementptr inbounds %struct.max98095_pdata, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %jack_detect_pin5en.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %jack_detect_pin5en.i, align 4
  %jack_detect_delay.i = getelementptr inbounds %struct.max98095_pdata, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %jack_detect_delay.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jack_detect_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  %slew.0.i = select i1 %tobool2.not.i, i32 24, i32 %14
  %call7.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 142, i32 noundef %slew.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.end.cleanup.sink.split.i_crit_edge, label %if.end9.i

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end
  %15 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %spec.select.i = select i1 %tobool.not.i, i32 128, i32 132
  %call10.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 137, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup.sink.split.i_crit_edge, label %if.end9.i.max98095_jack_detect_enable.exit_crit_edge

if.end9.i.max98095_jack_detect_enable.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_jack_detect_enable.exit

if.end9.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end9.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %call10.sink.i = phi i32 [ %call7.i, %if.end.cleanup.sink.split.i_crit_edge ], [ %call10.i, %if.end9.i.cleanup.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %call10.sink.i) #14
  br label %max98095_jack_detect_enable.exit

max98095_jack_detect_enable.exit:                 ; preds = %cleanup.sink.split.i, %if.end9.i.max98095_jack_detect_enable.exit_crit_edge
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 19, i32 noundef 128, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %max98095_jack_detect_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %call4) #14
  br label %cleanup

if.end7:                                          ; preds = %max98095_jack_detect_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr i8, ptr %1, i32 932
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call8 = tail call i32 @max98095_report_jack(i32 noundef %21, ptr noundef %component)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_report_jack(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %data, i32 noundef 7) #11
  %and = and i32 %call1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %call1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %headphone_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %headphone_jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %headphone_jack, align 4
  %tobool5.not = icmp ne ptr %7, null
  %spec.select = zext i1 %tobool5.not to i32
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end.if.end7_crit_edge
  %hp_report.0 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and8 = and i32 %call1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

land.lhs.true10:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %mic_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %mic_jack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mic_jack, align 4
  %tobool11.not = icmp eq ptr %9, null
  %spec.select53 = select i1 %tobool11.not, i32 0, i32 2
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true10, %if.end7.if.end14_crit_edge
  %mic_report.0 = phi i32 [ 0, %if.end7.if.end14_crit_edge ], [ %spec.select53, %land.lhs.true10 ]
  %headphone_jack15 = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %headphone_jack15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %headphone_jack15, align 4
  %mic_jack16 = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %mic_jack16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mic_jack16, align 4
  %cmp17 = icmp eq ptr %11, %13
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %or20 = or i32 %mic_report.0, %hp_report.0
  tail call void @snd_soc_jack_report(ptr noundef %11, i32 noundef %or20, i32 noundef 3) #11
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %if.else.if.end25_crit_edge, label %if.then23

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_soc_jack_report(ptr noundef nonnull %11, i32 noundef %hp_report.0, i32 noundef 1) #11
  %14 = ptrtoint ptr %mic_jack16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %mic_jack16, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge
  %15 = phi ptr [ %.pr, %if.then23 ], [ %13, %if.else.if.end25_crit_edge ]
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.then28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_soc_jack_report(ptr noundef nonnull %15, i32 noundef %mic_report.0, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end25.cleanup_crit_edge ], [ 1, %if.then28 ], [ 1, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_i2c_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max98095_i2c_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98095_i2c_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @max98095_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 324, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.max98095_priv, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @max98095_i2c_probe.__key) #11
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max98095_regmap, ptr noundef nonnull @max98095_i2c_probe._key, ptr noundef nonnull @.str.11) #11
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end11

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %1) #14
  br label %cleanup

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %devtype = getelementptr inbounds %struct.max98095_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %devtype, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.max98095_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pdata, align 4
  %call14 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_max98095, ptr noundef nonnull @max98095_dai, i32 noundef 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call14, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98095_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %0)
  %inbounds = icmp ult i32 %0, 137
  ret i1 %inbounds
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98095_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cond = icmp eq i32 %reg, 255
  %0 = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %0)
  %inbounds = icmp ult i32 %0, 151
  %or.cond = or i1 %cond, %inbounds
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98095_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg)
  %switch = icmp ult i32 %reg, 15
  %0 = add i32 %reg, -152
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %0)
  %inbounds = icmp ult i32 %0, 104
  %or.cond = or i1 %switch, %inbounds
  ret i1 %or.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_probe(ptr noundef %component) #0 align 64 {
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
  %call1 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.189) #11
  %mclk = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %mclk, align 4
  %cmp = icmp eq ptr %call1, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 15, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.199, i32 noundef %call.i) #14
  br label %max98095_reset.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 151, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.202, i32 noundef %call1.i) #14
  br label %max98095_reset.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 151
  br i1 %exitcond.not.i, label %for.cond.i.max98095_reset.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.max98095_reset.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_reset.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.01.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 16, %if.end.i.for.body.i_crit_edge ]
  %call10.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %i.01.i) #11
  %call11.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %i.01.i, i32 noundef %call10.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end16.i, label %for.cond.i

do.end16.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.205, i32 noundef %call11.i) #14
  br label %max98095_reset.exit

max98095_reset.exit:                              ; preds = %do.end16.i, %for.cond.i.max98095_reset.exit_crit_edge, %do.end6.i, %do.end.i
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %sysclk = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %sysclk, align 4
  %eq_textcnt = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %eq_textcnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %eq_textcnt, align 4
  %bq_textcnt = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %bq_textcnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bq_textcnt, align 4
  %dai = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %dai to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %dai, align 4
  %fmt = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %fmt, align 4
  %eq_sel = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %eq_sel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %eq_sel, align 4
  %bq_sel = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 0, i32 3
  %19 = ptrtoint ptr %bq_sel to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bq_sel, align 4
  %arrayidx7 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %arrayidx7, align 4
  %fmt9 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 1, i32 1
  %21 = ptrtoint ptr %fmt9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %fmt9, align 4
  %eq_sel10 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 1, i32 2
  %22 = ptrtoint ptr %eq_sel10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %eq_sel10, align 4
  %bq_sel11 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 1, i32 3
  %23 = ptrtoint ptr %bq_sel11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bq_sel11, align 4
  %arrayidx13 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %arrayidx13, align 4
  %fmt15 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 2, i32 1
  %25 = ptrtoint ptr %fmt15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %fmt15, align 4
  %eq_sel16 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 2, i32 2
  %26 = ptrtoint ptr %eq_sel16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %eq_sel16, align 4
  %bq_sel17 = getelementptr %struct.max98095_priv, ptr %3, i32 0, i32 5, i32 2, i32 3
  %27 = ptrtoint ptr %bq_sel17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bq_sel17, align 4
  %lin_state = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 12
  %28 = ptrtoint ptr %lin_state to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %lin_state, align 4
  %mic1pre = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 13
  %29 = ptrtoint ptr %mic1pre to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mic1pre, align 4
  %mic2pre = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 14
  %30 = ptrtoint ptr %mic2pre to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mic2pre, align 4
  %irq = getelementptr i8, ptr %12, i32 932
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %max98095_reset.exit.if.end25_crit_edge, label %if.then18

max98095_reset.exit.if.end25_crit_edge:           ; preds = %max98095_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then18:                                        ; preds = %max98095_reset.exit
  %call20 = tail call i32 @request_threaded_irq(i32 noundef %32, ptr noundef null, ptr noundef nonnull @max98095_report_jack, i32 noundef 8195, ptr noundef nonnull @.str.9, ptr noundef %component) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then18.if.end25_crit_edge, label %do.end

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.190, i32 noundef %call20) #14
  br label %cleanup

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %max98095_reset.exit.if.end25_crit_edge
  %call26 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 255) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  br i1 %cmp27, label %do.end31, label %do.end36

do.end31:                                         ; preds = %if.end25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.193, i32 noundef %call26) #14
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool49.not = icmp eq i32 %38, 0
  br i1 %tobool49.not, label %do.end31.cleanup_crit_edge, label %if.then50

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw i32 %call26, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.196, i32 noundef %add) #14
  %call38 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 151, i32 noundef 1) #11
  %call39 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 72, i32 noundef 72) #11
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 73, i32 noundef 3) #11
  %call41 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 146, i32 noundef 16) #11
  %call42 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 69, i32 noundef 80) #11
  %call43 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 78, i32 noundef 48) #11
  %call44 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 44, i32 noundef 67) #11
  %call45 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 54, i32 noundef 131) #11
  %call46 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 64, i32 noundef 195) #11
  tail call fastcc void @max98095_handle_pdata(ptr noundef %component)
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 151, i32 noundef 128, i32 noundef 128) #11
  br label %cleanup

if.then50:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = tail call ptr @free_irq(i32 noundef %38, ptr noundef %component) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.end36, %do.end31.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end36 ], [ -517, %entry.cleanup_crit_edge ], [ %call20, %do.end ], [ %call26, %if.then50 ], [ %call26, %do.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98095_remove(ptr noundef %component) #0 align 64 {
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
  %headphone_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %headphone_jack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %headphone_jack, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mic_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %mic_jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mic_jack, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 137, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %irq = getelementptr i8, ptr %1, i32 932
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %component) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_suspend(ptr noundef %component) #0 align 64 {
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
  %headphone_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %headphone_jack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %headphone_jack, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mic_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %mic_jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mic_jack, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 137, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_resume(ptr noundef %component) #0 align 64 {
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
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 1) #11
  %headphone_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %headphone_jack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %headphone_jack, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mic_jack = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %mic_jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mic_jack, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.max98095_priv, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %jack_detect_pin5en.i = getelementptr inbounds %struct.max98095_pdata, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %jack_detect_pin5en.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %jack_detect_pin5en.i, align 4
  %jack_detect_delay.i = getelementptr inbounds %struct.max98095_pdata, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %jack_detect_delay.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jack_detect_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp eq i32 %16, 0
  %slew.0.i = select i1 %tobool2.not.i, i32 24, i32 %16
  %call7.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 142, i32 noundef %slew.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.then.cleanup.sink.split.i_crit_edge, label %if.end9.i

if.then.cleanup.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.then
  %17 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %spec.select.i = select i1 %tobool.not.i, i32 128, i32 132
  %call10.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 137, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup.sink.split.i_crit_edge, label %if.end9.i.max98095_jack_detect_enable.exit_crit_edge

if.end9.i.max98095_jack_detect_enable.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_jack_detect_enable.exit

if.end9.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end9.i.cleanup.sink.split.i_crit_edge, %if.then.cleanup.sink.split.i_crit_edge
  %call10.sink.i = phi i32 [ %call7.i, %if.then.cleanup.sink.split.i_crit_edge ], [ %call10.i, %if.end9.i.cleanup.sink.split.i_crit_edge ]
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef %call10.sink.i) #14
  br label %max98095_jack_detect_enable.exit

max98095_jack_detect_enable.exit:                 ; preds = %cleanup.sink.split.i, %if.end9.i.max98095_jack_detect_enable.exit_crit_edge
  %irq = getelementptr i8, ptr %1, i32 932
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call4 = tail call i32 @max98095_report_jack(i32 noundef %21, ptr noundef %component)
  br label %if.end

if.end:                                           ; preds = %max98095_jack_detect_enable.exit, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb20
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mclk = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %6) #11
  tail call void @clk_unprepare(ptr noundef %6) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %6) #11
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %dapm.i.i37 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then13, label %sw.bb10.if.end18_crit_edge

sw.bb10.if.end18_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %sw.bb10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call14 = tail call i32 @regcache_sync(ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.then13.if.end18_crit_edge, label %do.end

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.224, i32 noundef %call14) #14
  br label %cleanup

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %sw.bb10.if.end18_crit_edge
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 144, i32 noundef 12, i32 noundef 12) #11
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 144, i32 noundef 12, i32 noundef 0) #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void @regcache_mark_dirty(ptr noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %if.end18, %do.end, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb20 ], [ 0, %if.end18 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98095_mic1pre_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %mic1pre = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %mic1pre to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mic1pre, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_mic1pre_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %mic1pre = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %mic1pre to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mic1pre, align 4
  %add = shl i32 %7, 5
  %shl = add i32 %add, 32
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 95, i32 noundef 96, i32 noundef %shl) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98095_mic2pre_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %mic2pre = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %mic2pre to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mic2pre, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_mic2pre_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %mic2pre = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %mic2pre to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mic2pre, align 4
  %add = shl i32 %7, 5
  %shl = add i32 %add, 32
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 96, i32 noundef 96, i32 noundef %shl) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_lineout_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv = zext i8 %6 to i32
  %shl = shl i32 4, %conv
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %4, i32 noundef %shl, i32 noundef %shl) #11
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg7 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %7 = ptrtoint ptr %reg7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg7, align 4
  %shift8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %9 = ptrtoint ptr %shift8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift8, align 4
  %conv9 = zext i8 %10 to i32
  %shl11 = shl i32 4, %conv9
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %8, i32 noundef %shl11, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_mic_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %reg = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %8)
  %cmp = icmp eq i32 %8, 95
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %mic1pre = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %mic1pre to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mic1pre, align 4
  %add = shl i32 %10, 5
  %shl = add i32 %add, 32
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 95, i32 noundef 96, i32 noundef %shl) #11
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %mic2pre = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 14
  %11 = ptrtoint ptr %mic2pre to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mic2pre, align 4
  %add5 = shl i32 %12, 5
  %shl6 = add i32 %add5, 32
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %8, i32 noundef 96, i32 noundef %shl6) #11
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg9 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %13 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg9, align 4
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %14, i32 noundef 96, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_pga_in1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -176
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %lin_state.i = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 12
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %event, label %entry.max98095_line_pga.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb36.i
  ]

entry.max98095_line_pga.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_line_pga.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %lin_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lin_state.i, align 1
  %or65.i = or i8 %8, 1
  store i8 %or65.i, ptr %lin_state.i, align 1
  %reg.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %shift.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift.i, align 4
  %conv31.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv31.i
  %call35.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef %shl.i, i32 noundef %shl.i) #11
  br label %max98095_line_pga.exit

sw.bb36.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %lin_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lin_state.i, align 1
  %and.i = and i8 %14, -2
  store i8 %and.i, ptr %lin_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %cmp41.i = icmp eq i8 %and.i, 0
  br i1 %cmp41.i, label %if.then43.i, label %sw.bb36.i.max98095_line_pga.exit_crit_edge

sw.bb36.i.max98095_line_pga.exit_crit_edge:       ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_line_pga.exit

if.then43.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  %reg44.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %15 = ptrtoint ptr %reg44.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg44.i, align 4
  %shift45.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %17 = ptrtoint ptr %shift45.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift45.i, align 4
  %conv46.i = zext i8 %18 to i32
  %shl47.i = shl nuw i32 1, %conv46.i
  %call48.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %16, i32 noundef %shl47.i, i32 noundef 0) #11
  br label %max98095_line_pga.exit

max98095_line_pga.exit:                           ; preds = %if.then43.i, %sw.bb36.i.max98095_line_pga.exit_crit_edge, %sw.bb.i, %entry.max98095_line_pga.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.max98095_line_pga.exit_crit_edge ], [ 0, %sw.bb36.i.max98095_line_pga.exit_crit_edge ], [ 0, %if.then43.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_pga_in2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -176
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %lin_state.i = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 12
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %event, label %entry.max98095_line_pga.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb36.i
  ]

entry.max98095_line_pga.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_line_pga.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %lin_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lin_state.i, align 1
  %or65.i = or i8 %8, 2
  store i8 %or65.i, ptr %lin_state.i, align 1
  %reg.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %shift.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift.i, align 4
  %conv31.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv31.i
  %call35.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef %shl.i, i32 noundef %shl.i) #11
  br label %max98095_line_pga.exit

sw.bb36.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %lin_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lin_state.i, align 1
  %and.i = and i8 %14, -3
  store i8 %and.i, ptr %lin_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %cmp41.i = icmp eq i8 %and.i, 0
  br i1 %cmp41.i, label %if.then43.i, label %sw.bb36.i.max98095_line_pga.exit_crit_edge

sw.bb36.i.max98095_line_pga.exit_crit_edge:       ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_line_pga.exit

if.then43.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  %reg44.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %15 = ptrtoint ptr %reg44.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg44.i, align 4
  %shift45.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %17 = ptrtoint ptr %shift45.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift45.i, align 4
  %conv46.i = zext i8 %18 to i32
  %shl47.i = shl nuw i32 1, %conv46.i
  %call48.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %16, i32 noundef %shl47.i, i32 noundef 0) #11
  br label %max98095_line_pga.exit

max98095_line_pga.exit:                           ; preds = %if.then43.i, %sw.bb36.i.max98095_line_pga.exit_crit_edge, %sw.bb.i, %entry.max98095_line_pga.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.max98095_line_pga.exit_crit_edge ], [ 0, %sw.bb36.i.max98095_line_pga.exit_crit_edge ], [ 0, %if.then43.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max98095_handle_pdata(ptr noundef %component) unnamed_addr #0 align 64 {
entry:
  %controls.i41 = alloca [2 x %struct.snd_kcontrol_new], align 4
  %controls.i = alloca [2 x %struct.snd_kcontrol_new], align 4
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
  %pdata1 = getelementptr inbounds %struct.max98095_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98095_handle_pdata.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98095_handle_pdata, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !453

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98095_handle_pdata.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.209) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %digmic_left_mode = getelementptr inbounds %struct.max98095_pdata, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %digmic_left_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %digmic_left_mode, align 4
  %9 = lshr i8 %bf.load, 5
  %10 = and i8 %9, 4
  %11 = lshr i8 %bf.load, 3
  %12 = and i8 %11, 8
  %13 = or i8 %12, %10
  %conv21 = zext i8 %13 to i32
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 135, i32 noundef %conv21) #11
  %eq_cfgcnt = getelementptr inbounds %struct.max98095_pdata, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %eq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %if.end7.if.end25_crit_edge, label %if.then24

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.end7
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdata1.i = getelementptr inbounds %struct.max98095_priv, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %controls.i) #11
  %22 = ptrtoint ptr %controls.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %controls.i, align 4
  %device.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 1
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %device.i, align 4
  %subdevice.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 2
  %24 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %subdevice.i, align 4
  %name.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 3
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.210, ptr %name.i, align 4
  %index.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 4
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %index.i, align 4
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 5
  %27 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %access.i, align 4
  %count.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 6
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %count.i, align 4
  %info.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 7
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @snd_soc_info_enum_double, ptr %info.i, align 4
  %get.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 8
  %30 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @max98095_get_eq_enum, ptr %get.i, align 4
  %put.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 9
  %31 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @max98095_put_eq_enum, ptr %put.i, align 4
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 10
  %32 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tlv.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 11
  %eq_enum.i = getelementptr inbounds %struct.max98095_priv, ptr %19, i32 0, i32 8
  %33 = ptrtoint ptr %eq_enum.i to i32
  %34 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %private_value.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1
  %35 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %arrayinit.element.i, align 4
  %device3.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 1
  %36 = ptrtoint ptr %device3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %device3.i, align 4
  %subdevice4.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 2
  %37 = ptrtoint ptr %subdevice4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %subdevice4.i, align 4
  %name5.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 3
  %38 = ptrtoint ptr %name5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.211, ptr %name5.i, align 4
  %index6.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 4
  %39 = ptrtoint ptr %index6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %index6.i, align 4
  %access7.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 5
  %40 = ptrtoint ptr %access7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %access7.i, align 4
  %count8.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 6
  %41 = ptrtoint ptr %count8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %count8.i, align 4
  %info9.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 7
  %42 = ptrtoint ptr %info9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @snd_soc_info_enum_double, ptr %info9.i, align 4
  %get10.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 8
  %43 = ptrtoint ptr %get10.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @max98095_get_eq_enum, ptr %get10.i, align 4
  %put11.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 9
  %44 = ptrtoint ptr %put11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @max98095_put_eq_enum, ptr %put11.i, align 4
  %tlv12.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 10
  %45 = ptrtoint ptr %tlv12.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tlv12.i, align 4
  %private_value13.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 11
  %46 = ptrtoint ptr %private_value13.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %33, ptr %private_value13.i, align 4
  %47 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %21, align 4
  %eq_cfgcnt.i = getelementptr inbounds %struct.max98095_pdata, ptr %21, i32 0, i32 1
  %49 = ptrtoint ptr %eq_cfgcnt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %eq_cfgcnt.i, align 4
  %eq_textcnt.i = getelementptr inbounds %struct.max98095_priv, ptr %19, i32 0, i32 10
  %51 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %eq_textcnt.i, align 4
  %eq_texts.i = getelementptr inbounds %struct.max98095_priv, ptr %19, i32 0, i32 6
  %52 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %eq_texts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp86.not.i = icmp eq i32 %50, 0
  br i1 %cmp86.not.i, label %if.then24.for.end43.i_crit_edge, label %if.then24.for.cond15.preheader.i_crit_edge

if.then24.for.cond15.preheader.i_crit_edge:       ; preds = %if.then24
  br label %for.cond15.preheader.i

if.then24.for.end43.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end43.i

for.cond15.preheaderthread-pre-split.i:           ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.i = load i32, ptr %eq_textcnt.i, align 4
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.cond15.preheaderthread-pre-split.i, %if.then24.for.cond15.preheader.i_crit_edge
  %54 = phi i32 [ %.pr.i, %for.cond15.preheaderthread-pre-split.i ], [ 0, %if.then24.for.cond15.preheader.i_crit_edge ]
  %i.087.i = phi i32 [ %inc42.i, %for.cond15.preheaderthread-pre-split.i ], [ 0, %if.then24.for.cond15.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp1781.i = icmp sgt i32 %54, 0
  br i1 %cmp1781.i, label %for.body18.lr.ph.i, label %for.cond15.preheader.i.for.end.i_crit_edge

for.cond15.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body18.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %arrayidx.i = getelementptr %struct.max98095_eq_cfg, ptr %48, i32 %i.087.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %57 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eq_texts.i, align 4
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %j.082.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %for.inc.i.for.body18.i_crit_edge ]
  %arrayidx21.i = getelementptr ptr, ptr %58, i32 %j.082.i
  %59 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx21.i, align 4
  %call22.i = tail call i32 @strcmp(ptr noundef %56, ptr noundef %60) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.i, label %for.body18.i.for.end.i_crit_edge, label %for.inc.i

for.body18.i.for.end.i_crit_edge:                 ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body18.i
  %inc.i = add nuw nsw i32 %j.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %54
  br i1 %exitcond.not.i, label %for.inc.i.if.end27.i_crit_edge, label %for.inc.i.for.body18.i_crit_edge

for.inc.i.for.body18.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i

for.inc.i.if.end27.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

for.end.i:                                        ; preds = %for.body18.i.for.end.i_crit_edge, %for.cond15.preheader.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %for.cond15.preheader.i.for.end.i_crit_edge ], [ %j.082.i, %for.body18.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %54)
  %cmp25.not.i = icmp eq i32 %j.0.lcssa.i, %54
  br i1 %cmp25.not.i, label %for.end.i.if.end27.i_crit_edge, label %for.end.i.for.inc41.i_crit_edge

for.end.i.for.inc41.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41.i

for.end.i.if.end27.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.end.i.if.end27.i_crit_edge, %for.inc.i.if.end27.i_crit_edge
  %61 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %eq_texts.i, align 4
  %add.i = shl i32 %54, 2
  %mul.i = add i32 %add.i, 4
  %call30.i = tail call noalias ptr @krealloc(ptr noundef %62, i32 noundef %mul.i, i32 noundef 3264) #16
  %cmp31.i = icmp eq ptr %call30.i, null
  br i1 %cmp31.i, label %if.end27.i.for.inc41.i_crit_edge, label %if.end33.i

if.end27.i.for.inc41.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41.i

if.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx34.i = getelementptr %struct.max98095_eq_cfg, ptr %48, i32 %i.087.i
  %63 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx34.i, align 4
  %65 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %eq_textcnt.i, align 4
  %arrayidx37.i = getelementptr ptr, ptr %call30.i, i32 %66
  %67 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %arrayidx37.i, align 4
  %68 = load i32, ptr %eq_textcnt.i, align 4
  %inc39.i = add i32 %68, 1
  store i32 %inc39.i, ptr %eq_textcnt.i, align 4
  %69 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call30.i, ptr %eq_texts.i, align 4
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %if.end33.i, %if.end27.i.for.inc41.i_crit_edge, %for.end.i.for.inc41.i_crit_edge
  %inc42.i = add nuw i32 %i.087.i, 1
  %exitcond88.not.i = icmp eq i32 %inc42.i, %50
  br i1 %exitcond88.not.i, label %for.inc41.i.for.end43.i_crit_edge, label %for.cond15.preheaderthread-pre-split.i

for.inc41.i.for.end43.i_crit_edge:                ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.inc41.i.for.end43.i_crit_edge, %if.then24.for.end43.i_crit_edge
  %70 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eq_texts.i, align 4
  %texts.i = getelementptr inbounds %struct.max98095_priv, ptr %19, i32 0, i32 8, i32 5
  %72 = ptrtoint ptr %texts.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %texts.i, align 4
  %73 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %eq_textcnt.i, align 4
  %items.i = getelementptr inbounds %struct.max98095_priv, ptr %19, i32 0, i32 8, i32 3
  %75 = ptrtoint ptr %items.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %items.i, align 4
  %call48.i = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %controls.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.not.i = icmp eq i32 %call48.i, 0
  br i1 %cmp49.not.i, label %for.end43.i.max98095_handle_eq_pdata.exit_crit_edge, label %do.end.i

for.end43.i.max98095_handle_eq_pdata.exit_crit_edge: ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_handle_eq_pdata.exit

do.end.i:                                         ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.212, i32 noundef %call48.i) #14
  br label %max98095_handle_eq_pdata.exit

max98095_handle_eq_pdata.exit:                    ; preds = %do.end.i, %for.end43.i.max98095_handle_eq_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %controls.i) #11
  br label %if.end25

if.end25:                                         ; preds = %max98095_handle_eq_pdata.exit, %if.end7.if.end25_crit_edge
  %bq_cfgcnt = getelementptr inbounds %struct.max98095_pdata, ptr %5, i32 0, i32 3
  %78 = ptrtoint ptr %bq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool26.not = icmp eq i32 %79, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i43 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %driver_data.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %driver_data.i.i.i43, align 4
  %pdata1.i44 = getelementptr inbounds %struct.max98095_priv, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %pdata1.i44 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata1.i44, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %controls.i41) #11
  %86 = ptrtoint ptr %controls.i41 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %controls.i41, align 4
  %device.i45 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 1
  %87 = ptrtoint ptr %device.i45 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %device.i45, align 4
  %subdevice.i46 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 2
  %88 = ptrtoint ptr %subdevice.i46 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %subdevice.i46, align 4
  %name.i47 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 3
  %89 = load ptr, ptr @bq_mode_name, align 4
  %90 = ptrtoint ptr %name.i47 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %name.i47, align 4
  %index.i48 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 4
  %91 = ptrtoint ptr %index.i48 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %index.i48, align 4
  %access.i49 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 5
  %92 = ptrtoint ptr %access.i49 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %access.i49, align 4
  %count.i50 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 6
  %93 = ptrtoint ptr %count.i50 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %count.i50, align 4
  %info.i51 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 7
  %94 = ptrtoint ptr %info.i51 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @snd_soc_info_enum_double, ptr %info.i51, align 4
  %get.i52 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 8
  %95 = ptrtoint ptr %get.i52 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @max98095_get_bq_enum, ptr %get.i52, align 4
  %put.i53 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 9
  %96 = ptrtoint ptr %put.i53 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @max98095_put_bq_enum, ptr %put.i53, align 4
  %tlv.i54 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 10
  %97 = ptrtoint ptr %tlv.i54 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %tlv.i54, align 4
  %private_value.i55 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 0, i32 11
  %bq_enum.i = getelementptr inbounds %struct.max98095_priv, ptr %83, i32 0, i32 9
  %98 = ptrtoint ptr %bq_enum.i to i32
  %99 = ptrtoint ptr %private_value.i55 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %private_value.i55, align 4
  %arrayinit.element.i56 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1
  %100 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %arrayinit.element.i56, align 4
  %device3.i57 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 1
  %101 = ptrtoint ptr %device3.i57 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %device3.i57, align 4
  %subdevice4.i58 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 2
  %102 = ptrtoint ptr %subdevice4.i58 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %subdevice4.i58, align 4
  %name5.i59 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 3
  %103 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @bq_mode_name, i32 0, i32 1), align 4
  %104 = ptrtoint ptr %name5.i59 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %name5.i59, align 4
  %index6.i60 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 4
  %105 = ptrtoint ptr %index6.i60 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %index6.i60, align 4
  %access7.i61 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 5
  %106 = ptrtoint ptr %access7.i61 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %access7.i61, align 4
  %count8.i62 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 6
  %107 = ptrtoint ptr %count8.i62 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %count8.i62, align 4
  %info9.i63 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 7
  %108 = ptrtoint ptr %info9.i63 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @snd_soc_info_enum_double, ptr %info9.i63, align 4
  %get10.i64 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 8
  %109 = ptrtoint ptr %get10.i64 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @max98095_get_bq_enum, ptr %get10.i64, align 4
  %put11.i65 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 9
  %110 = ptrtoint ptr %put11.i65 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @max98095_put_bq_enum, ptr %put11.i65, align 4
  %tlv12.i66 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 10
  %111 = ptrtoint ptr %tlv12.i66 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %tlv12.i66, align 4
  %private_value13.i67 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i41, i32 1, i32 11
  %112 = ptrtoint ptr %private_value13.i67 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %98, ptr %private_value13.i67, align 4
  %bq_cfg.i = getelementptr inbounds %struct.max98095_pdata, ptr %85, i32 0, i32 2
  %113 = ptrtoint ptr %bq_cfg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bq_cfg.i, align 4
  %bq_cfgcnt.i = getelementptr inbounds %struct.max98095_pdata, ptr %85, i32 0, i32 3
  %115 = ptrtoint ptr %bq_cfgcnt.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bq_cfgcnt.i, align 4
  %bq_textcnt.i = getelementptr inbounds %struct.max98095_priv, ptr %83, i32 0, i32 11
  %117 = ptrtoint ptr %bq_textcnt.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %bq_textcnt.i, align 4
  %bq_texts.i = getelementptr inbounds %struct.max98095_priv, ptr %83, i32 0, i32 7
  %118 = ptrtoint ptr %bq_texts.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %bq_texts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp89.not.i = icmp eq i32 %116, 0
  br i1 %cmp89.not.i, label %if.then27.for.end43.i98_crit_edge, label %if.then27.for.cond15.preheader.i70_crit_edge

if.then27.for.cond15.preheader.i70_crit_edge:     ; preds = %if.then27
  br label %for.cond15.preheader.i70

if.then27.for.end43.i98_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end43.i98

for.cond15.preheaderthread-pre-split.i69:         ; preds = %for.inc41.i93
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %bq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr.i68 = load i32, ptr %bq_textcnt.i, align 4
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.cond15.preheaderthread-pre-split.i69, %if.then27.for.cond15.preheader.i70_crit_edge
  %120 = phi i32 [ %.pr.i68, %for.cond15.preheaderthread-pre-split.i69 ], [ 0, %if.then27.for.cond15.preheader.i70_crit_edge ]
  %i.090.i = phi i32 [ %inc42.i92, %for.cond15.preheaderthread-pre-split.i69 ], [ 0, %if.then27.for.cond15.preheader.i70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp1784.i = icmp sgt i32 %120, 0
  br i1 %cmp1784.i, label %for.body18.lr.ph.i72, label %for.cond15.preheader.i70.for.end.i82_crit_edge

for.cond15.preheader.i70.for.end.i82_crit_edge:   ; preds = %for.cond15.preheader.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i82

for.body18.lr.ph.i72:                             ; preds = %for.cond15.preheader.i70
  %arrayidx.i71 = getelementptr %struct.max98095_biquad_cfg, ptr %114, i32 %i.090.i
  %121 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i71, align 4
  %123 = ptrtoint ptr %bq_texts.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bq_texts.i, align 4
  br label %for.body18.i76

for.body18.i76:                                   ; preds = %for.inc.i79.for.body18.i76_crit_edge, %for.body18.lr.ph.i72
  %j.085.i = phi i32 [ 0, %for.body18.lr.ph.i72 ], [ %inc.i77, %for.inc.i79.for.body18.i76_crit_edge ]
  %arrayidx21.i73 = getelementptr ptr, ptr %124, i32 %j.085.i
  %125 = ptrtoint ptr %arrayidx21.i73 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx21.i73, align 4
  %call22.i74 = call i32 @strcmp(ptr noundef %122, ptr noundef %126) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i74)
  %cmp23.i75 = icmp eq i32 %call22.i74, 0
  br i1 %cmp23.i75, label %for.body18.i76.for.end.i82_crit_edge, label %for.inc.i79

for.body18.i76.for.end.i82_crit_edge:             ; preds = %for.body18.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i82

for.inc.i79:                                      ; preds = %for.body18.i76
  %inc.i77 = add nuw nsw i32 %j.085.i, 1
  %exitcond.not.i78 = icmp eq i32 %inc.i77, %120
  br i1 %exitcond.not.i78, label %for.inc.i79.if.end27.i87_crit_edge, label %for.inc.i79.for.body18.i76_crit_edge

for.inc.i79.for.body18.i76_crit_edge:             ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i76

for.inc.i79.if.end27.i87_crit_edge:               ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i87

for.end.i82:                                      ; preds = %for.body18.i76.for.end.i82_crit_edge, %for.cond15.preheader.i70.for.end.i82_crit_edge
  %j.0.lcssa.i80 = phi i32 [ 0, %for.cond15.preheader.i70.for.end.i82_crit_edge ], [ %j.085.i, %for.body18.i76.for.end.i82_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i80, i32 %120)
  %cmp25.not.i81 = icmp eq i32 %j.0.lcssa.i80, %120
  br i1 %cmp25.not.i81, label %for.end.i82.if.end27.i87_crit_edge, label %for.end.i82.for.inc41.i93_crit_edge

for.end.i82.for.inc41.i93_crit_edge:              ; preds = %for.end.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41.i93

for.end.i82.if.end27.i87_crit_edge:               ; preds = %for.end.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i87

if.end27.i87:                                     ; preds = %for.end.i82.if.end27.i87_crit_edge, %for.inc.i79.if.end27.i87_crit_edge
  %127 = ptrtoint ptr %bq_texts.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bq_texts.i, align 4
  %add.i83 = shl i32 %120, 2
  %mul.i84 = add i32 %add.i83, 4
  %call30.i85 = call noalias ptr @krealloc(ptr noundef %128, i32 noundef %mul.i84, i32 noundef 3264) #16
  %cmp31.i86 = icmp eq ptr %call30.i85, null
  br i1 %cmp31.i86, label %if.end27.i87.for.inc41.i93_crit_edge, label %if.end33.i91

if.end27.i87.for.inc41.i93_crit_edge:             ; preds = %if.end27.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41.i93

if.end33.i91:                                     ; preds = %if.end27.i87
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx34.i88 = getelementptr %struct.max98095_biquad_cfg, ptr %114, i32 %i.090.i
  %129 = ptrtoint ptr %arrayidx34.i88 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx34.i88, align 4
  %131 = ptrtoint ptr %bq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bq_textcnt.i, align 4
  %arrayidx37.i89 = getelementptr ptr, ptr %call30.i85, i32 %132
  %133 = ptrtoint ptr %arrayidx37.i89 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %arrayidx37.i89, align 4
  %134 = load i32, ptr %bq_textcnt.i, align 4
  %inc39.i90 = add i32 %134, 1
  store i32 %inc39.i90, ptr %bq_textcnt.i, align 4
  %135 = ptrtoint ptr %bq_texts.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call30.i85, ptr %bq_texts.i, align 4
  br label %for.inc41.i93

for.inc41.i93:                                    ; preds = %if.end33.i91, %if.end27.i87.for.inc41.i93_crit_edge, %for.end.i82.for.inc41.i93_crit_edge
  %inc42.i92 = add nuw i32 %i.090.i, 1
  %exitcond91.not.i = icmp eq i32 %inc42.i92, %116
  br i1 %exitcond91.not.i, label %for.inc41.i93.for.end43.i98_crit_edge, label %for.cond15.preheaderthread-pre-split.i69

for.inc41.i93.for.end43.i98_crit_edge:            ; preds = %for.inc41.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end43.i98

for.end43.i98:                                    ; preds = %for.inc41.i93.for.end43.i98_crit_edge, %if.then27.for.end43.i98_crit_edge
  %136 = ptrtoint ptr %bq_texts.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bq_texts.i, align 4
  %texts.i94 = getelementptr inbounds %struct.max98095_priv, ptr %83, i32 0, i32 9, i32 5
  %138 = ptrtoint ptr %texts.i94 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %texts.i94, align 4
  %139 = ptrtoint ptr %bq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bq_textcnt.i, align 4
  %items.i95 = getelementptr inbounds %struct.max98095_priv, ptr %83, i32 0, i32 9, i32 3
  %141 = ptrtoint ptr %items.i95 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %items.i95, align 4
  %call48.i96 = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %controls.i41, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i96)
  %cmp49.not.i97 = icmp eq i32 %call48.i96, 0
  br i1 %cmp49.not.i97, label %for.end43.i98.max98095_handle_bq_pdata.exit_crit_edge, label %do.end53.i

for.end43.i98.max98095_handle_bq_pdata.exit_crit_edge: ; preds = %for.end43.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_handle_bq_pdata.exit

do.end53.i:                                       ; preds = %for.end43.i98
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.216, i32 noundef %call48.i96) #14
  br label %max98095_handle_bq_pdata.exit

max98095_handle_bq_pdata.exit:                    ; preds = %do.end53.i, %for.end43.i98.max98095_handle_bq_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %controls.i41) #11
  br label %cleanup

cleanup:                                          ; preds = %max98095_handle_bq_pdata.exit, %if.end25.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98095_get_eq_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
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
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.210) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.max98095_get_eq_channel.exit_crit_edge, label %if.end.i

entry.max98095_get_eq_channel.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_get_eq_channel.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.211) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  %..i = select i1 %cmp2.i, i32 1, i32 -22
  br label %max98095_get_eq_channel.exit

max98095_get_eq_channel.exit:                     ; preds = %if.end.i, %entry.max98095_get_eq_channel.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.max98095_get_eq_channel.exit_crit_edge ], [ %..i, %if.end.i ]
  %eq_sel = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 %retval.0.i, i32 2
  %6 = ptrtoint ptr %eq_sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eq_sel, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_put_eq_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %pdata2 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata2, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.210) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.max98095_get_eq_channel.exit_crit_edge, label %if.end.i

entry.max98095_get_eq_channel.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %max98095_get_eq_channel.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.211) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  %..i = select i1 %cmp2.i, i32 1, i32 -22
  br label %max98095_get_eq_channel.exit

max98095_get_eq_channel.exit:                     ; preds = %if.end.i, %entry.max98095_get_eq_channel.exit_crit_edge
  %retval.0.i163 = phi i32 [ 0, %entry.max98095_get_eq_channel.exit_crit_edge ], [ %..i, %if.end.i ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %tobool25.not = icmp eq ptr %7, null
  br i1 %tobool25.not, label %max98095_get_eq_channel.exit.cleanup_crit_edge, label %lor.lhs.false

max98095_get_eq_channel.exit.cleanup_crit_edge:   ; preds = %max98095_get_eq_channel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %max98095_get_eq_channel.exit
  %eq_textcnt = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %eq_textcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eq_textcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %eq_cfgcnt = getelementptr inbounds %struct.max98095_pdata, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %eq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp29.not = icmp ult i32 %9, %13
  br i1 %cmp29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %arrayidx32 = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 %retval.0.i163
  %eq_sel = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 %retval.0.i163, i32 2
  %14 = ptrtoint ptr %eq_sel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %eq_sel, align 4
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx32, align 4
  %17 = ptrtoint ptr %eq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34166.not = icmp eq i32 %18, 0
  br i1 %cmp34166.not, label %if.end31.do.body61_crit_edge, label %for.body.lr.ph

if.end31.do.body61_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

for.body.lr.ph:                                   ; preds = %if.end31
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  %eq_texts = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %eq_texts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eq_texts, align 4
  %arrayidx37 = getelementptr ptr, ptr %22, i32 %9
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx37, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_val.0168 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %best.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %best.1, %for.inc.for.body_crit_edge ]
  %arrayidx35 = getelementptr %struct.max98095_eq_cfg, ptr %20, i32 %i.0169
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx35, align 4
  %call38 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rate42 = getelementptr %struct.max98095_eq_cfg, ptr %20, i32 %i.0169, i32 1
  %27 = ptrtoint ptr %rate42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate42, align 4
  %sub = sub i32 %28, %16
  %29 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %best_val.0168)
  %cmp46 = icmp slt i32 %29, %best_val.0168
  %spec.select = select i1 %cmp46, i32 %i.0169, i32 %best.0167
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 %best_val.0168)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %best.1 = phi i32 [ %best.0167, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %best_val.1 = phi i32 [ %best_val.0168, %for.body.for.inc_crit_edge ], [ %30, %land.lhs.true ]
  %inc = add nuw i32 %i.0169, 1
  %exitcond.not = icmp eq i32 %inc, %18
  br i1 %exitcond.not, label %for.inc.do.body61_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body61_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

do.body61:                                        ; preds = %for.inc.do.body61_crit_edge, %if.end31.do.body61_crit_edge
  %best.0.lcssa = phi i32 [ 0, %if.end31.do.body61_crit_edge ], [ %best.1, %for.inc.do.body61_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98095_put_eq_enum.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98095_put_eq_enum, %if.then71)) #11
          to label %do.end80 [label %if.then71], !srcloc !453

if.then71:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 4
  %arrayidx73 = getelementptr %struct.max98095_eq_cfg, ptr %34, i32 %best.0.lcssa
  %35 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx73, align 4
  %rate77 = getelementptr %struct.max98095_eq_cfg, ptr %34, i32 %best.0.lcssa, i32 1
  %37 = ptrtoint ptr %rate77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate77, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98095_put_eq_enum.__UNIQUE_ID_ddebug295, ptr noundef %32, ptr noundef nonnull @.str.215, ptr noundef %36, i32 noundef %38, i32 noundef %16) #11
  br label %do.end80

do.end80:                                         ; preds = %if.then71, %do.body61
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i163)
  %cmp83 = icmp eq i32 %retval.0.i163, 0
  %cond84 = select i1 %cmp83, i32 1, i32 2
  %call85 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 136) #11
  %call86 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 136, i32 noundef %cond84, i32 noundef 0) #11
  %lock = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 15, i32 noundef 1, i32 noundef 1) #11
  %band1 = getelementptr %struct.max98095_eq_cfg, ptr %40, i32 %best.0.lcssa, i32 2
  tail call fastcc void @m98095_eq_band(ptr noundef %1, i32 noundef %retval.0.i163, i32 noundef 0, ptr noundef %band1)
  %band2 = getelementptr %struct.max98095_eq_cfg, ptr %40, i32 %best.0.lcssa, i32 3
  tail call fastcc void @m98095_eq_band(ptr noundef %1, i32 noundef %retval.0.i163, i32 noundef 1, ptr noundef %band2)
  %band3 = getelementptr %struct.max98095_eq_cfg, ptr %40, i32 %best.0.lcssa, i32 4
  tail call fastcc void @m98095_eq_band(ptr noundef %1, i32 noundef %retval.0.i163, i32 noundef 2, ptr noundef %band3)
  %band4 = getelementptr %struct.max98095_eq_cfg, ptr %40, i32 %best.0.lcssa, i32 5
  tail call fastcc void @m98095_eq_band(ptr noundef %1, i32 noundef %retval.0.i163, i32 noundef 3, ptr noundef %band4)
  %band5 = getelementptr %struct.max98095_eq_cfg, ptr %40, i32 %best.0.lcssa, i32 6
  tail call fastcc void @m98095_eq_band(ptr noundef %1, i32 noundef %retval.0.i163, i32 noundef 4, ptr noundef %band5)
  %call93 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 15, i32 noundef 1, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %call95 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 136, i32 noundef %cond84, i32 noundef %call85) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %max98095_get_eq_channel.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end80 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %max98095_get_eq_channel.exit.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m98095_eq_band(ptr noundef %component, i32 noundef %dai, i32 noundef %band, ptr nocapture noundef readonly %coefs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dai)
  %cmp21 = icmp ugt i32 %dai, 1
  br i1 %cmp21, label %do.end37, label %if.end53, !prof !454

do.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 258, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dai)
  %tobool54.not = icmp eq i32 %dai, 0
  %cond = select i1 %tobool54.not, i32 16, i32 66
  %mul = mul i32 %band, 10
  %add = add i32 %cond, %mul
  %inc = or i32 %add, 1
  %0 = ptrtoint ptr %coefs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %coefs, align 2
  %2 = lshr i16 %1, 8
  %3 = zext i16 %2 to i32
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %3) #11
  %inc56 = add i32 %add, 2
  %4 = ptrtoint ptr %coefs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %coefs, align 2
  %6 = and i16 %5, 255
  %and59 = zext i16 %6 to i32
  %call60 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc, i32 noundef %and59) #11
  %inc.1 = or i32 %inc56, 1
  %arrayidx.1 = getelementptr i16, ptr %coefs, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %9 = lshr i16 %8, 8
  %10 = zext i16 %9 to i32
  %call.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56, i32 noundef %10) #11
  %inc56.1 = add i32 %add, 4
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.1, align 2
  %13 = and i16 %12, 255
  %and59.1 = zext i16 %13 to i32
  %call60.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.1, i32 noundef %and59.1) #11
  %inc.2 = or i32 %inc56.1, 1
  %arrayidx.2 = getelementptr i16, ptr %coefs, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 2
  %16 = lshr i16 %15, 8
  %17 = zext i16 %16 to i32
  %call.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.1, i32 noundef %17) #11
  %inc56.2 = add i32 %add, 6
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 2
  %20 = and i16 %19, 255
  %and59.2 = zext i16 %20 to i32
  %call60.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.2, i32 noundef %and59.2) #11
  %inc.3 = or i32 %inc56.2, 1
  %arrayidx.3 = getelementptr i16, ptr %coefs, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.3, align 2
  %23 = lshr i16 %22, 8
  %24 = zext i16 %23 to i32
  %call.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.2, i32 noundef %24) #11
  %inc56.3 = add i32 %add, 8
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.3, align 2
  %27 = and i16 %26, 255
  %and59.3 = zext i16 %27 to i32
  %call60.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.3, i32 noundef %and59.3) #11
  %inc.4 = or i32 %inc56.3, 1
  %arrayidx.4 = getelementptr i16, ptr %coefs, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.4, align 2
  %30 = lshr i16 %29, 8
  %31 = zext i16 %30 to i32
  %call.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.3, i32 noundef %31) #11
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.4, align 2
  %34 = and i16 %33, 255
  %and59.4 = zext i16 %34 to i32
  %call60.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.4, i32 noundef %and59.4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_get_bq_enum(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call i32 @match_string(ptr noundef nonnull @bq_mode_name, i32 noundef 2, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max98095_get_bq_channel.exit.thread, label %if.end

max98095_get_bq_channel.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.220, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bq_sel = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 %call.i, i32 3
  %8 = ptrtoint ptr %bq_sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bq_sel, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %max98095_get_bq_channel.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %max98095_get_bq_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_put_bq_enum(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %pdata2 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata2, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call i32 @match_string(ptr noundef nonnull @bq_mode_name, i32 noundef 2, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max98095_get_bq_channel.exit.thread, label %if.end

max98095_get_bq_channel.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.220, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %bq_textcnt = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %bq_textcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bq_textcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %bq_cfgcnt = getelementptr inbounds %struct.max98095_pdata, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %bq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp7.not = icmp ult i32 %11, %15
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %arrayidx10 = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 %call.i
  %bq_sel = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 %call.i, i32 3
  %16 = ptrtoint ptr %bq_sel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %bq_sel, align 4
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10, align 4
  %19 = ptrtoint ptr %bq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp12126.not = icmp eq i32 %20, 0
  br i1 %cmp12126.not, label %if.end9.do.body_crit_edge, label %for.body.lr.ph

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end9
  %bq_cfg = getelementptr inbounds %struct.max98095_pdata, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %bq_cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bq_cfg, align 4
  %bq_texts = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %bq_texts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bq_texts, align 4
  %arrayidx15 = getelementptr ptr, ptr %24, i32 %11
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx15, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_val.0128 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %best.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %best.1, %for.inc.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.max98095_biquad_cfg, ptr %22, i32 %i.0129
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx13, align 4
  %call16 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %26) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rate20 = getelementptr %struct.max98095_biquad_cfg, ptr %22, i32 %i.0129, i32 1
  %29 = ptrtoint ptr %rate20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate20, align 4
  %sub = sub i32 %30, %18
  %31 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %best_val.0128)
  %cmp23 = icmp slt i32 %31, %best_val.0128
  %spec.select = select i1 %cmp23, i32 %i.0129, i32 %best.0127
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 %best_val.0128)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %best.1 = phi i32 [ %best.0127, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %best_val.1 = phi i32 [ %best_val.0128, %for.body.for.inc_crit_edge ], [ %32, %land.lhs.true ]
  %inc = add nuw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end9.do.body_crit_edge
  %best.0.lcssa = phi i32 [ 0, %if.end9.do.body_crit_edge ], [ %best.1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98095_put_bq_enum.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98095_put_bq_enum, %if.then43)) #11
          to label %do.end [label %if.then43], !srcloc !453

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %bq_cfg44 = getelementptr inbounds %struct.max98095_pdata, ptr %7, i32 0, i32 2
  %35 = ptrtoint ptr %bq_cfg44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bq_cfg44, align 4
  %arrayidx45 = getelementptr %struct.max98095_biquad_cfg, ptr %36, i32 %best.0.lcssa
  %37 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx45, align 4
  %rate49 = getelementptr %struct.max98095_biquad_cfg, ptr %36, i32 %best.0.lcssa, i32 1
  %39 = ptrtoint ptr %rate49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rate49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98095_put_bq_enum.__UNIQUE_ID_ddebug296, ptr noundef %34, ptr noundef nonnull @.str.215, ptr noundef %38, i32 noundef %40, i32 noundef %18) #11
  br label %do.end

do.end:                                           ; preds = %if.then43, %do.body
  %bq_cfg51 = getelementptr inbounds %struct.max98095_pdata, ptr %7, i32 0, i32 2
  %41 = ptrtoint ptr %bq_cfg51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bq_cfg51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp53 = icmp eq i32 %call.i, 0
  %cond54 = select i1 %cmp53, i32 4, i32 8
  %call55 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 136) #11
  %call56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 136, i32 noundef %cond54, i32 noundef 0) #11
  %lock = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 15, i32 noundef 1, i32 noundef 1) #11
  %band1 = getelementptr %struct.max98095_biquad_cfg, ptr %42, i32 %best.0.lcssa, i32 2
  tail call fastcc void @m98095_biquad_band(ptr noundef %1, i32 noundef %call.i, i32 noundef 0, ptr noundef %band1)
  %band2 = getelementptr %struct.max98095_biquad_cfg, ptr %42, i32 %best.0.lcssa, i32 3
  tail call fastcc void @m98095_biquad_band(ptr noundef %1, i32 noundef %call.i, i32 noundef 1, ptr noundef %band2)
  %call60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 15, i32 noundef 1, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 136, i32 noundef %cond54, i32 noundef %call55) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %max98095_get_bq_channel.exit.thread
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call.i, %max98095_get_bq_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m98095_biquad_band(ptr noundef %component, i32 noundef %dai, i32 noundef %band, ptr nocapture noundef readonly %coefs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dai)
  %cmp21 = icmp ugt i32 %dai, 1
  br i1 %cmp21, label %do.end37, label %if.end53, !prof !454

do.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 284, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dai)
  %tobool54.not = icmp eq i32 %dai, 0
  %cond = select i1 %tobool54.not, i32 116, i32 126
  %mul = mul i32 %band, 10
  %add = add i32 %cond, %mul
  %inc = or i32 %add, 1
  %0 = ptrtoint ptr %coefs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %coefs, align 2
  %2 = lshr i16 %1, 8
  %3 = zext i16 %2 to i32
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %3) #11
  %inc56 = add i32 %add, 2
  %4 = ptrtoint ptr %coefs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %coefs, align 2
  %6 = and i16 %5, 255
  %and59 = zext i16 %6 to i32
  %call60 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc, i32 noundef %and59) #11
  %inc.1 = or i32 %inc56, 1
  %arrayidx.1 = getelementptr i16, ptr %coefs, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %9 = lshr i16 %8, 8
  %10 = zext i16 %9 to i32
  %call.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56, i32 noundef %10) #11
  %inc56.1 = add i32 %add, 4
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.1, align 2
  %13 = and i16 %12, 255
  %and59.1 = zext i16 %13 to i32
  %call60.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.1, i32 noundef %and59.1) #11
  %inc.2 = or i32 %inc56.1, 1
  %arrayidx.2 = getelementptr i16, ptr %coefs, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 2
  %16 = lshr i16 %15, 8
  %17 = zext i16 %16 to i32
  %call.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.1, i32 noundef %17) #11
  %inc56.2 = add i32 %add, 6
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 2
  %20 = and i16 %19, 255
  %and59.2 = zext i16 %20 to i32
  %call60.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.2, i32 noundef %and59.2) #11
  %inc.3 = or i32 %inc56.2, 1
  %arrayidx.3 = getelementptr i16, ptr %coefs, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.3, align 2
  %23 = lshr i16 %22, 8
  %24 = zext i16 %23 to i32
  %call.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.2, i32 noundef %24) #11
  %inc56.3 = add i32 %add, 8
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.3, align 2
  %27 = and i16 %26, 255
  %and59.3 = zext i16 %27 to i32
  %call60.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.3, i32 noundef %and59.3) #11
  %inc.4 = or i32 %inc56.3, 1
  %arrayidx.4 = getelementptr i16, ptr %coefs, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.4, align 2
  %30 = lshr i16 %29, 8
  %31 = zext i16 %30 to i32
  %call.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.3, i32 noundef %31) #11
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.4, align 2
  %34 = and i16 %33, 255
  %and59.4 = zext i16 %34 to i32
  %call60.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.4, i32 noundef %and59.4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %sysclk = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef %freq) #11
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %call5) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %freq.addr.0 = phi i32 [ %freq, %if.end.if.end8_crit_edge ], [ %call5, %if.then3 ]
  %12 = add i32 %freq.addr.0, -10000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %12)
  %13 = icmp ult i32 %12, 10000000
  br i1 %13, label %if.end8.do.body28_crit_edge, label %if.else

if.end8.do.body28_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.else:                                          ; preds = %if.end8
  %14 = add i32 %freq.addr.0, -20000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %14)
  %15 = icmp ult i32 %14, 20000000
  br i1 %15, label %if.else.do.body28_crit_edge, label %if.else18

if.else.do.body28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.else18:                                        ; preds = %if.else
  %16 = add i32 %freq.addr.0, -40000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %16)
  %17 = icmp ult i32 %16, 20000000
  br i1 %17, label %if.else18.do.body28_crit_edge, label %do.end

if.else18.do.body28_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

do.end:                                           ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.228) #14
  br label %cleanup

do.body28:                                        ; preds = %if.else18.do.body28_crit_edge, %if.else.do.body28_crit_edge, %if.end8.do.body28_crit_edge
  %.sink = phi i32 [ 16, %if.end8.do.body28_crit_edge ], [ 32, %if.else.do.body28_crit_edge ], [ 48, %if.else18.do.body28_crit_edge ]
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 38, i32 noundef %.sink) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98095_dai_set_sysclk.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98095_dai_set_sysclk, %if.then32)) #11
          to label %do.end36 [label %if.then32], !srcloc !453

if.then32:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %dev33 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %20 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98095_dai_set_sysclk.__UNIQUE_ID_ddebug294, ptr noundef %21, ptr noundef nonnull @.str.230, i32 noundef %clk_id, i32 noundef %freq.addr.0) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body28
  %22 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %freq.addr.0, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end36 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_dai1_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %fmt2 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fmt)
  %cmp.not = icmp eq i32 %7, %fmt
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fmt, ptr %fmt2, align 4
  %and = and i32 %fmt, 61440
  %9 = add nsw i32 %and, -4096
  %10 = lshr exact i32 %9, 12
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %10, label %do.end [
    i32 3, label %sw.bb
    i32 0, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 40, i32 noundef 128) #11
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 41, i32 noundef 0) #11
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.231) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.then.sw.epilog_crit_edge
  %regval.0 = phi i8 [ 0, %sw.bb ], [ -128, %if.then.sw.epilog_crit_edge ]
  %and9 = and i32 %fmt, 15
  %14 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %and9, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb10
    i32 3, label %sw.epilog.sw.epilog15_crit_edge
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %15 = or i8 %regval.0, 16
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb10, %sw.epilog.sw.epilog15_crit_edge
  %regval.1 = phi i8 [ %regval.0, %sw.epilog.sw.epilog15_crit_edge ], [ %15, %sw.bb10 ]
  %and16 = lshr i32 %fmt, 8
  %16 = and i32 %and16, 15
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %16, label %sw.epilog15.cleanup_crit_edge [
    i32 0, label %sw.epilog15.sw.epilog30_crit_edge
    i32 2, label %sw.bb17
    i32 3, label %sw.bb21
    i32 4, label %sw.bb25
  ]

sw.epilog15.sw.epilog30_crit_edge:                ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.epilog15.cleanup_crit_edge:                    ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %18 = or i8 %regval.1, 64
  br label %sw.epilog30

sw.bb21:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %19 = or i8 %regval.1, 32
  br label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %20 = or i8 %regval.1, 96
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb25, %sw.bb21, %sw.bb17, %sw.epilog15.sw.epilog30_crit_edge
  %regval.2 = phi i8 [ %20, %sw.bb25 ], [ %19, %sw.bb21 ], [ %18, %sw.bb17 ], [ %regval.1, %sw.epilog15.sw.epilog30_crit_edge ]
  %conv31 = zext i8 %regval.2 to i32
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 42, i32 noundef 240, i32 noundef %conv31) #11
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 43, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog30, %sw.epilog15.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog15.cleanup_crit_edge ], [ 0, %sw.epilog30 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_dai1_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %dai2 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 5
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !455
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  %13 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb6
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb6:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %params_width.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb6 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 42, i32 noundef 1, i32 noundef %.sink) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %7)
  %cmp2.not.i = icmp ugt i32 %7, 8000
  br i1 %cmp2.not.i, label %for.inc.i, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %7)
  %cmp2.not.1.i = icmp ugt i32 %7, 11025
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %7)
  %cmp2.not.2.i = icmp ugt i32 %7, 16000
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end_crit_edge

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %7)
  %cmp2.not.3.i = icmp ugt i32 %7, 22050
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end_crit_edge

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %7)
  %cmp2.not.4.i = icmp ugt i32 %7, 24000
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end_crit_edge

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %7)
  %cmp2.not.5.i = icmp ugt i32 %7, 32000
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end_crit_edge

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %7)
  %cmp2.not.6.i = icmp ugt i32 %7, 44100
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end_crit_edge

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp2.not.7.i = icmp ugt i32 %7, 48000
  br i1 %cmp2.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end_crit_edge

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %7)
  %cmp2.not.8.i = icmp ugt i32 %7, 88200
  br i1 %cmp2.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end_crit_edge

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %7)
  %cmp2.not.9.i = icmp ugt i32 %7, 96000
  br i1 %cmp2.not.9.i, label %for.inc.8.i.cleanup_crit_edge, label %for.inc.8.i.if.end_crit_edge

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.8.i.cleanup_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %sw.epilog.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ], [ 8, %for.inc.7.i.if.end_crit_edge ], [ 9, %for.inc.8.i.if.end_crit_edge ]
  %sr.i = getelementptr [10 x %struct.anon.108], ptr @rate_table, i32 0, i32 %i.09.lcssa.i, i32 1
  %14 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sr.i, align 4
  %conv = zext i8 %15 to i32
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 39, i32 noundef 255, i32 noundef %conv) #11
  %16 = ptrtoint ptr %dai2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %dai2, align 4
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 42) #11
  %and = and i32 %call11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.if.end220_crit_edge, label %if.then13

if.end.if.end220_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then13:                                        ; preds = %if.end
  %sysclk = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.233) #14
  br label %cleanup

if.end16:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp17 = icmp ult i32 %7, 50000
  %mul = select i1 %cmp17, i64 6291456, i64 3145728
  %conv19 = zext i32 %7 to i64
  %mul20 = mul nuw nsw i64 %mul, %conv19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul20)
  %cmp197 = icmp ult i64 %mul20, 4294967296
  br i1 %cmp197, label %if.then201, label %if.else207, !prof !456

if.then201:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv202 = trunc i64 %mul20 to i32
  %div205 = udiv i32 %conv202, %18
  br label %if.end211

if.else207:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %mul20) #18, !srcloc !457
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  %extract.t344 = trunc i64 %asmresult1.i to i32
  br label %if.end211

if.end211:                                        ; preds = %if.else207, %if.then201
  %ni.0.off0 = phi i32 [ %div205, %if.then201 ], [ %extract.t344, %if.else207 ]
  %22 = lshr i32 %ni.0.off0, 8
  %conv215 = and i32 %22, 127
  %call216 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 40, i32 noundef %conv215) #11
  %conv218 = and i32 %ni.0.off0, 255
  %call219 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 41, i32 noundef %conv218) #11
  br label %if.end220

if.end220:                                        ; preds = %if.end211, %if.end.if.end220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp221 = icmp ult i32 %7, 50000
  br i1 %cmp221, label %if.then223, label %if.else225

if.then223:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %call224 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 46, i32 noundef 8, i32 noundef 0) #11
  br label %cleanup

if.else225:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %call226 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 46, i32 noundef 8, i32 noundef 8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else225, %if.then223, %do.end, %for.inc.8.i.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.else225 ], [ 0, %if.then223 ], [ -22, %for.inc.8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_dai2_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %fmt2 = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 1, i32 1
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fmt)
  %cmp.not = icmp eq i32 %7, %fmt
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fmt, ptr %fmt2, align 4
  %and = and i32 %fmt, 61440
  %9 = add nsw i32 %and, -4096
  %10 = lshr exact i32 %9, 12
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %10, label %do.end [
    i32 3, label %sw.bb
    i32 0, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 50, i32 noundef 128) #11
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 51, i32 noundef 0) #11
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.231) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.then.sw.epilog_crit_edge
  %regval.0 = phi i8 [ 0, %sw.bb ], [ -128, %if.then.sw.epilog_crit_edge ]
  %and9 = and i32 %fmt, 15
  %14 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %and9, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb10
    i32 3, label %sw.epilog.sw.epilog15_crit_edge
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %15 = or i8 %regval.0, 16
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb10, %sw.epilog.sw.epilog15_crit_edge
  %regval.1 = phi i8 [ %regval.0, %sw.epilog.sw.epilog15_crit_edge ], [ %15, %sw.bb10 ]
  %and16 = lshr i32 %fmt, 8
  %16 = and i32 %and16, 15
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %16, label %sw.epilog15.cleanup_crit_edge [
    i32 0, label %sw.epilog15.sw.epilog30_crit_edge
    i32 2, label %sw.bb17
    i32 3, label %sw.bb21
    i32 4, label %sw.bb25
  ]

sw.epilog15.sw.epilog30_crit_edge:                ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.epilog15.cleanup_crit_edge:                    ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %18 = or i8 %regval.1, 64
  br label %sw.epilog30

sw.bb21:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %19 = or i8 %regval.1, 32
  br label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %20 = or i8 %regval.1, 96
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb25, %sw.bb21, %sw.bb17, %sw.epilog15.sw.epilog30_crit_edge
  %regval.2 = phi i8 [ %20, %sw.bb25 ], [ %19, %sw.bb21 ], [ %18, %sw.bb17 ], [ %regval.1, %sw.epilog15.sw.epilog30_crit_edge ]
  %conv31 = zext i8 %regval.2 to i32
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 52, i32 noundef 240, i32 noundef %conv31) #11
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 53, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog30, %sw.epilog15.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog15.cleanup_crit_edge ], [ 0, %sw.epilog30 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_dai2_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %arrayidx = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 1
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !455
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  %13 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb6
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb6:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %params_width.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb6 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 52, i32 noundef 1, i32 noundef %.sink) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %7)
  %cmp2.not.i = icmp ugt i32 %7, 8000
  br i1 %cmp2.not.i, label %for.inc.i, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %7)
  %cmp2.not.1.i = icmp ugt i32 %7, 11025
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %7)
  %cmp2.not.2.i = icmp ugt i32 %7, 16000
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end_crit_edge

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %7)
  %cmp2.not.3.i = icmp ugt i32 %7, 22050
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end_crit_edge

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %7)
  %cmp2.not.4.i = icmp ugt i32 %7, 24000
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end_crit_edge

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %7)
  %cmp2.not.5.i = icmp ugt i32 %7, 32000
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end_crit_edge

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %7)
  %cmp2.not.6.i = icmp ugt i32 %7, 44100
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end_crit_edge

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp2.not.7.i = icmp ugt i32 %7, 48000
  br i1 %cmp2.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end_crit_edge

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %7)
  %cmp2.not.8.i = icmp ugt i32 %7, 88200
  br i1 %cmp2.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end_crit_edge

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %7)
  %cmp2.not.9.i = icmp ugt i32 %7, 96000
  br i1 %cmp2.not.9.i, label %for.inc.8.i.cleanup_crit_edge, label %for.inc.8.i.if.end_crit_edge

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.8.i.cleanup_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %sw.epilog.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ], [ 8, %for.inc.7.i.if.end_crit_edge ], [ 9, %for.inc.8.i.if.end_crit_edge ]
  %sr.i = getelementptr [10 x %struct.anon.108], ptr @rate_table, i32 0, i32 %i.09.lcssa.i, i32 1
  %14 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sr.i, align 4
  %conv = zext i8 %15 to i32
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 49, i32 noundef 255, i32 noundef %conv) #11
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %arrayidx, align 4
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 52) #11
  %and = and i32 %call11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.if.end220_crit_edge, label %if.then13

if.end.if.end220_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then13:                                        ; preds = %if.end
  %sysclk = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.233) #14
  br label %cleanup

if.end16:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp17 = icmp ult i32 %7, 50000
  %mul = select i1 %cmp17, i64 6291456, i64 3145728
  %conv19 = zext i32 %7 to i64
  %mul20 = mul nuw nsw i64 %mul, %conv19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul20)
  %cmp197 = icmp ult i64 %mul20, 4294967296
  br i1 %cmp197, label %if.then201, label %if.else207, !prof !456

if.then201:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv202 = trunc i64 %mul20 to i32
  %div205 = udiv i32 %conv202, %18
  br label %if.end211

if.else207:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %mul20) #18, !srcloc !457
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  %extract.t344 = trunc i64 %asmresult1.i to i32
  br label %if.end211

if.end211:                                        ; preds = %if.else207, %if.then201
  %ni.0.off0 = phi i32 [ %div205, %if.then201 ], [ %extract.t344, %if.else207 ]
  %22 = lshr i32 %ni.0.off0, 8
  %conv215 = and i32 %22, 127
  %call216 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 50, i32 noundef %conv215) #11
  %conv218 = and i32 %ni.0.off0, 255
  %call219 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 51, i32 noundef %conv218) #11
  br label %if.end220

if.end220:                                        ; preds = %if.end211, %if.end.if.end220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp221 = icmp ult i32 %7, 50000
  br i1 %cmp221, label %if.then223, label %if.else225

if.then223:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %call224 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 56, i32 noundef 8, i32 noundef 0) #11
  br label %cleanup

if.else225:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %call226 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 56, i32 noundef 8, i32 noundef 8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else225, %if.then223, %do.end, %for.inc.8.i.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.else225 ], [ 0, %if.then223 ], [ -22, %for.inc.8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_dai3_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %fmt2 = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 2, i32 1
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fmt)
  %cmp.not = icmp eq i32 %7, %fmt
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fmt, ptr %fmt2, align 4
  %and = and i32 %fmt, 61440
  %9 = add nsw i32 %and, -4096
  %10 = lshr exact i32 %9, 12
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %10, label %do.end [
    i32 3, label %sw.bb
    i32 0, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 60, i32 noundef 128) #11
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 61, i32 noundef 0) #11
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.231) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.then.sw.epilog_crit_edge
  %regval.0 = phi i8 [ 0, %sw.bb ], [ -128, %if.then.sw.epilog_crit_edge ]
  %and9 = and i32 %fmt, 15
  %14 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %and9, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb10
    i32 3, label %sw.epilog.sw.epilog15_crit_edge
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %15 = or i8 %regval.0, 16
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb10, %sw.epilog.sw.epilog15_crit_edge
  %regval.1 = phi i8 [ %regval.0, %sw.epilog.sw.epilog15_crit_edge ], [ %15, %sw.bb10 ]
  %and16 = lshr i32 %fmt, 8
  %16 = and i32 %and16, 15
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %16, label %sw.epilog15.cleanup_crit_edge [
    i32 0, label %sw.epilog15.sw.epilog30_crit_edge
    i32 2, label %sw.bb17
    i32 3, label %sw.bb21
    i32 4, label %sw.bb25
  ]

sw.epilog15.sw.epilog30_crit_edge:                ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.epilog15.cleanup_crit_edge:                    ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %18 = or i8 %regval.1, 64
  br label %sw.epilog30

sw.bb21:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %19 = or i8 %regval.1, 32
  br label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  %20 = or i8 %regval.1, 96
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb25, %sw.bb21, %sw.bb17, %sw.epilog15.sw.epilog30_crit_edge
  %regval.2 = phi i8 [ %20, %sw.bb25 ], [ %19, %sw.bb21 ], [ %18, %sw.bb17 ], [ %regval.1, %sw.epilog15.sw.epilog30_crit_edge ]
  %conv31 = zext i8 %regval.2 to i32
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 62, i32 noundef 240, i32 noundef %conv31) #11
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 63, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog30, %sw.epilog15.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog15.cleanup_crit_edge ], [ 0, %sw.epilog30 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98095_dai3_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %arrayidx = getelementptr %struct.max98095_priv, ptr %5, i32 0, i32 5, i32 2
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !455
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  %13 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb6
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb6:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %params_width.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb6 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 62, i32 noundef 1, i32 noundef %.sink) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %7)
  %cmp2.not.i = icmp ugt i32 %7, 8000
  br i1 %cmp2.not.i, label %for.inc.i, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %7)
  %cmp2.not.1.i = icmp ugt i32 %7, 11025
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %7)
  %cmp2.not.2.i = icmp ugt i32 %7, 16000
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end_crit_edge

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %7)
  %cmp2.not.3.i = icmp ugt i32 %7, 22050
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end_crit_edge

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %7)
  %cmp2.not.4.i = icmp ugt i32 %7, 24000
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end_crit_edge

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %7)
  %cmp2.not.5.i = icmp ugt i32 %7, 32000
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end_crit_edge

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %7)
  %cmp2.not.6.i = icmp ugt i32 %7, 44100
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end_crit_edge

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp2.not.7.i = icmp ugt i32 %7, 48000
  br i1 %cmp2.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end_crit_edge

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %7)
  %cmp2.not.8.i = icmp ugt i32 %7, 88200
  br i1 %cmp2.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end_crit_edge

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %7)
  %cmp2.not.9.i = icmp ugt i32 %7, 96000
  br i1 %cmp2.not.9.i, label %for.inc.8.i.cleanup_crit_edge, label %for.inc.8.i.if.end_crit_edge

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.8.i.cleanup_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %sw.epilog.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ], [ 8, %for.inc.7.i.if.end_crit_edge ], [ 9, %for.inc.8.i.if.end_crit_edge ]
  %sr.i = getelementptr [10 x %struct.anon.108], ptr @rate_table, i32 0, i32 %i.09.lcssa.i, i32 1
  %14 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sr.i, align 4
  %conv = zext i8 %15 to i32
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 59, i32 noundef 255, i32 noundef %conv) #11
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %arrayidx, align 4
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 62) #11
  %and = and i32 %call11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.if.end220_crit_edge, label %if.then13

if.end.if.end220_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then13:                                        ; preds = %if.end
  %sysclk = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.233) #14
  br label %cleanup

if.end16:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp17 = icmp ult i32 %7, 50000
  %mul = select i1 %cmp17, i64 6291456, i64 3145728
  %conv19 = zext i32 %7 to i64
  %mul20 = mul nuw nsw i64 %mul, %conv19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul20)
  %cmp197 = icmp ult i64 %mul20, 4294967296
  br i1 %cmp197, label %if.then201, label %if.else207, !prof !456

if.then201:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv202 = trunc i64 %mul20 to i32
  %div205 = udiv i32 %conv202, %18
  br label %if.end211

if.else207:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %mul20) #18, !srcloc !457
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  %extract.t344 = trunc i64 %asmresult1.i to i32
  br label %if.end211

if.end211:                                        ; preds = %if.else207, %if.then201
  %ni.0.off0 = phi i32 [ %div205, %if.then201 ], [ %extract.t344, %if.else207 ]
  %22 = lshr i32 %ni.0.off0, 8
  %conv215 = and i32 %22, 127
  %call216 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 60, i32 noundef %conv215) #11
  %conv218 = and i32 %ni.0.off0, 255
  %call219 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 61, i32 noundef %conv218) #11
  br label %if.end220

if.end220:                                        ; preds = %if.end211, %if.end.if.end220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp221 = icmp ult i32 %7, 50000
  br i1 %cmp221, label %if.then223, label %if.else225

if.then223:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %call224 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 66, i32 noundef 8, i32 noundef 0) #11
  br label %cleanup

if.else225:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %call226 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 66, i32 noundef 8, i32 noundef 8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else225, %if.then223, %do.end, %for.inc.8.i.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.else225 ], [ 0, %if.then223 ], [ -22, %for.inc.8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 301)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 301)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !30, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !168, !170, !171, !173, !175, !176, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !351, !353, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !373, !375, !377, !378, !379, !380, !382, !383, !385, !386, !387, !389, !390, !391, !392, !394, !396, !398, !400, !402, !403, !404, !405, !407, !408, !410, !411, !412, !413, !415, !416, !417, !418, !420, !422, !424, !425, !426, !428, !429, !430, !432, !434, !435, !436, !438, !439, !440, !442}
!llvm.module.flags = !{!444, !445, !446, !447, !448, !449, !450, !451}
!llvm.ident = !{!452}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98095.c", i32 1913, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @max98095_jack_detect._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @max98095_jack_detect._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_max98095_jack_detect, !9, !"__ksymtab_max98095_jack_detect", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/max98095.c", i32 1920, i32 1}
!10 = !{ptr @__initcall__kmod_snd_soc_max98095__299_2168_max98095_i2c_driver_init6, !11, !"__initcall__kmod_snd_soc_max98095__299_2168_max98095_i2c_driver_init6", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/max98095.c", i32 2168, i32 1}
!12 = !{ptr @__exitcall_max98095_i2c_driver_exit, !11, !"__exitcall_max98095_i2c_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description300, !14, !"__UNIQUE_ID_description300", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/max98095.c", i32 2170, i32 1}
!15 = !{ptr @__UNIQUE_ID_author301, !16, !"__UNIQUE_ID_author301", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/max98095.c", i32 2171, i32 1}
!17 = !{ptr @__UNIQUE_ID_file302, !18, !"__UNIQUE_ID_file302", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/max98095.c", i32 2172, i32 1}
!19 = !{ptr @__UNIQUE_ID_license303, !18, !"__UNIQUE_ID_license303", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/max98095.c", i32 1865, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max98095_jack_detect_enable._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @max98095_jack_detect_enable._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @max98095_jack_detect_enable._entry.7, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/max98095.c", i32 1872, i32 3}
!27 = !{ptr @max98095_jack_detect_enable._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/max98095.c", i32 2161, i32 11}
!30 = !{ptr @max98095_i2c_driver, !31, !"max98095_i2c_driver", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/max98095.c", i32 2159, i32 26}
!32 = !{ptr @max98095_i2c_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/max98095.c", i32 2126, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @max98095_i2c_probe._key, !36, !"_key", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/max98095.c", i32 2128, i32 21}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/max98095.c", i32 2131, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @max98095_i2c_probe._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @max98095_i2c_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @max98095_regmap, !44, !"max98095_regmap", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/max98095.c", i32 234, i32 35}
!45 = !{ptr @max98095_reg_def, !46, !"max98095_reg_def", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/max98095.c", i32 61, i32 33}
!47 = !{ptr @soc_component_dev_max98095, !48, !"soc_component_dev_max98095", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/max98095.c", i32 2097, i32 46}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/max98095.c", i32 438, i32 2}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/max98095.c", i32 441, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/max98095.c", i32 444, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/max98095.c", i32 447, i32 2}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/max98095.c", i32 450, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/max98095.c", i32 453, i32 2}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/max98095.c", i32 456, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/max98095.c", i32 458, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/max98095.c", i32 461, i32 2}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/max98095.c", i32 464, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/max98095.c", i32 467, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/max98095.c", i32 471, i32 2}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/max98095.c", i32 476, i32 2}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/max98095.c", i32 479, i32 2}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/max98095.c", i32 481, i32 2}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/max98095.c", i32 484, i32 2}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/max98095.c", i32 486, i32 2}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/max98095.c", i32 489, i32 2}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/max98095.c", i32 490, i32 2}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/max98095.c", i32 492, i32 2}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/max98095.c", i32 493, i32 2}
!91 = !{ptr @.str.55, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/max98095.c", i32 495, i32 2}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/max98095.c", i32 496, i32 2}
!95 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/max98095.c", i32 497, i32 2}
!97 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/max98095.c", i32 498, i32 2}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/max98095.c", i32 499, i32 2}
!101 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/max98095.c", i32 501, i32 2}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/max98095.c", i32 502, i32 2}
!105 = !{ptr @max98095_snd_controls, !106, !"max98095_snd_controls", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/max98095.c", i32 436, i32 38}
!107 = !{ptr @max98095_hp_tlv, !108, !"max98095_hp_tlv", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/max98095.c", i32 407, i32 14}
!109 = !{ptr @max98095_spk_tlv, !110, !"max98095_spk_tlv", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/max98095.c", i32 415, i32 14}
!111 = !{ptr @max98095_rcv_lout_tlv, !112, !"max98095_rcv_lout_tlv", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/max98095.c", i32 422, i32 14}
!113 = !{ptr @max98095_mic_tlv, !114, !"max98095_mic_tlv", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/max98095.c", i32 403, i32 14}
!115 = !{ptr @max98095_micboost_tlv, !116, !"max98095_micboost_tlv", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/max98095.c", i32 398, i32 14}
!117 = !{ptr @max98095_lin_tlv, !118, !"max98095_lin_tlv", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/max98095.c", i32 430, i32 14}
!119 = !{ptr @max98095_adc_tlv, !120, !"max98095_adc_tlv", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/max98095.c", i32 404, i32 14}
!121 = !{ptr @max98095_adcboost_tlv, !122, !"max98095_adcboost_tlv", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/max98095.c", i32 405, i32 14}
!123 = !{ptr @max98095_dai1_filter_mode_enum, !124, !"max98095_dai1_filter_mode_enum", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/max98095.c", i32 301, i32 8}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/max98095.c", i32 300, i32 52}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/max98095.c", i32 300, i32 61}
!129 = !{ptr @max98095_fltr_mode, !130, !"max98095_fltr_mode", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/max98095.c", i32 300, i32 27}
!131 = !{ptr @max98095_dai2_filter_mode_enum, !132, !"max98095_dai2_filter_mode_enum", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/max98095.c", i32 304, i32 8}
!133 = !{ptr @max98095_dai1_dac_filter_enum, !134, !"max98095_dai1_dac_filter_enum", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/max98095.c", i32 340, i32 8}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/max98095.c", i32 338, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/max98095.c", i32 338, i32 9}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/max98095.c", i32 338, i32 31}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/max98095.c", i32 339, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/max98095.c", i32 339, i32 23}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/max98095.c", i32 339, i32 45}
!147 = !{ptr @max98095_dai_fltr, !148, !"max98095_dai_fltr", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/max98095.c", i32 337, i32 27}
!149 = !{ptr @max98095_dai2_dac_filter_enum, !150, !"max98095_dai2_dac_filter_enum", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/max98095.c", i32 343, i32 8}
!151 = !{ptr @max98095_dai3_dac_filter_enum, !152, !"max98095_dai3_dac_filter_enum", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/max98095.c", i32 346, i32 8}
!153 = !{ptr @max98095_linein_mode_enum, !154, !"max98095_linein_mode_enum", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/max98095.c", i32 329, i32 8}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/max98095.c", i32 327, i32 2}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/max98095.c", i32 327, i32 12}
!159 = !{ptr @max98095_line_mode_text, !160, !"max98095_line_mode_text", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/max98095.c", i32 326, i32 27}
!161 = !{ptr @max98095_lineout_mode_enum, !162, !"max98095_lineout_mode_enum", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/max98095.c", i32 333, i32 8}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/max98095.c", i32 696, i32 2}
!165 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/max98095.c", i32 697, i32 2}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/max98095.c", i32 699, i32 2}
!170 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/max98095.c", i32 701, i32 2}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/max98095.c", i32 703, i32 2}
!175 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/max98095.c", i32 705, i32 2}
!178 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/max98095.c", i32 708, i32 2}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/max98095.c", i32 710, i32 2}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/max98095.c", i32 713, i32 2}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/max98095.c", i32 715, i32 2}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/max98095.c", i32 718, i32 2}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/max98095.c", i32 721, i32 2}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/max98095.c", i32 723, i32 2}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/max98095.c", i32 726, i32 2}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/max98095.c", i32 729, i32 2}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/max98095.c", i32 732, i32 2}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/max98095.c", i32 736, i32 2}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/max98095.c", i32 740, i32 2}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/max98095.c", i32 744, i32 2}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/max98095.c", i32 748, i32 2}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/max98095.c", i32 752, i32 2}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/max98095.c", i32 756, i32 2}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/max98095.c", i32 760, i32 2}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/max98095.c", i32 764, i32 2}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/max98095.c", i32 768, i32 2}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/max98095.c", i32 772, i32 2}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/max98095.c", i32 776, i32 2}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/max98095.c", i32 780, i32 2}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/max98095.c", i32 784, i32 2}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/max98095.c", i32 785, i32 2}
!227 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/max98095.c", i32 787, i32 2}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/max98095.c", i32 788, i32 2}
!231 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/max98095.c", i32 789, i32 2}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/max98095.c", i32 790, i32 2}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/max98095.c", i32 791, i32 2}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/max98095.c", i32 792, i32 2}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/max98095.c", i32 793, i32 2}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/max98095.c", i32 794, i32 2}
!243 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/max98095.c", i32 795, i32 2}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/max98095.c", i32 797, i32 2}
!247 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/max98095.c", i32 798, i32 2}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/max98095.c", i32 799, i32 2}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/max98095.c", i32 800, i32 2}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/max98095.c", i32 801, i32 2}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/max98095.c", i32 802, i32 2}
!257 = !{ptr @max98095_dapm_widgets, !258, !"max98095_dapm_widgets", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/max98095.c", i32 694, i32 41}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/max98095.c", i32 315, i32 2}
!261 = !{ptr @max98095_extmic_mux, !262, !"max98095_extmic_mux", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/max98095.c", i32 314, i32 38}
!263 = !{ptr @max98095_extmic_enum, !264, !"max98095_extmic_enum", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/max98095.c", i32 310, i32 8}
!265 = !{ptr @.str.123, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/max98095.c", i32 308, i32 54}
!267 = !{ptr @max98095_extmic_text, !268, !"max98095_extmic_text", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/max98095.c", i32 308, i32 27}
!269 = !{ptr @.str.124, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/max98095.c", i32 324, i32 2}
!271 = !{ptr @max98095_linein_mux, !272, !"max98095_linein_mux", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/max98095.c", i32 323, i32 38}
!273 = !{ptr @max98095_linein_enum, !274, !"max98095_linein_enum", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/max98095.c", i32 319, i32 8}
!275 = !{ptr @.str.125, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/max98095.c", i32 317, i32 54}
!277 = !{ptr @.str.126, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/max98095.c", i32 317, i32 61}
!279 = !{ptr @max98095_linein_text, !280, !"max98095_linein_text", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/max98095.c", i32 317, i32 27}
!281 = !{ptr @.str.127, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/max98095.c", i32 531, i32 2}
!283 = !{ptr @.str.129, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/max98095.c", i32 532, i32 2}
!285 = !{ptr @.str.131, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/max98095.c", i32 533, i32 2}
!287 = !{ptr @.str.133, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/max98095.c", i32 534, i32 2}
!289 = !{ptr @.str.135, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/max98095.c", i32 535, i32 2}
!291 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/max98095.c", i32 536, i32 2}
!293 = !{ptr @max98095_left_hp_mixer_controls, !294, !"max98095_left_hp_mixer_controls", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/max98095.c", i32 530, i32 38}
!295 = !{ptr @max98095_right_hp_mixer_controls, !296, !"max98095_right_hp_mixer_controls", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/max98095.c", i32 540, i32 38}
!297 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/max98095.c", i32 509, i32 2}
!299 = !{ptr @.str.149, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/max98095.c", i32 510, i32 2}
!301 = !{ptr @max98095_left_speaker_mixer_controls, !302, !"max98095_left_speaker_mixer_controls", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/max98095.c", i32 506, i32 38}
!303 = !{ptr @max98095_right_speaker_mixer_controls, !304, !"max98095_right_speaker_mixer_controls", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/max98095.c", i32 518, i32 38}
!305 = !{ptr @max98095_mono_rcv_mixer_controls, !306, !"max98095_mono_rcv_mixer_controls", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/max98095.c", i32 550, i32 38}
!307 = !{ptr @max98095_left_lineout_mixer_controls, !308, !"max98095_left_lineout_mixer_controls", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/max98095.c", i32 560, i32 38}
!309 = !{ptr @max98095_right_lineout_mixer_controls, !310, !"max98095_right_lineout_mixer_controls", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/max98095.c", i32 570, i32 38}
!311 = !{ptr @max98095_left_ADC_mixer_controls, !312, !"max98095_left_ADC_mixer_controls", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/max98095.c", i32 580, i32 38}
!313 = !{ptr @max98095_right_ADC_mixer_controls, !314, !"max98095_right_ADC_mixer_controls", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/max98095.c", i32 588, i32 38}
!315 = !{ptr @max98095_audio_map, !316, !"max98095_audio_map", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/max98095.c", i32 805, i32 40}
!317 = !{ptr @.str.189, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/max98095.c", i32 1992, i32 48}
!319 = !{ptr @.str.190, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/max98095.c", i32 2036, i32 4}
!321 = !{ptr @.str.191, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @max98095_probe._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @max98095_probe._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.193, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/max98095.c", i32 2043, i32 3}
!326 = !{ptr @max98095_probe._entry.192, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @max98095_probe._entry_ptr.194, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.196, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/max98095.c", i32 2047, i32 2}
!330 = !{ptr @.str.197, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @max98095_probe._entry.195, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @max98095_probe._entry_ptr.198, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.199, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/max98095.c", i32 1962, i32 3}
!335 = !{ptr @.str.200, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @max98095_reset._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @max98095_reset._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.202, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/max98095.c", i32 1968, i32 3}
!340 = !{ptr @max98095_reset._entry.201, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @max98095_reset._entry_ptr.203, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.205, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/max98095.c", i32 1977, i32 4}
!344 = !{ptr @max98095_reset._entry.204, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @max98095_reset._entry_ptr.206, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.207, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/max98095.c", i32 1788, i32 3}
!348 = !{ptr @.str.208, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.209, !347, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @max98095_handle_pdata.__UNIQUE_ID_ddebug298, !347, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!351 = !{ptr @.str.210, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/max98095.c", i32 1580, i32 3}
!353 = !{ptr @.str.211, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/max98095.c", i32 1584, i32 3}
!355 = !{ptr @.str.212, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/max98095.c", i32 1626, i32 3}
!357 = !{ptr @.str.213, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @max98095_handle_eq_pdata._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @max98095_handle_eq_pdata._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.214, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/max98095.c", i32 1528, i32 2}
!362 = !{ptr @.str.215, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @max98095_put_eq_enum.__UNIQUE_ID_ddebug295, !361, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!364 = !{ptr @.str.216, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/max98095.c", i32 1778, i32 3}
!366 = !{ptr @.str.217, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @max98095_handle_bq_pdata._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @max98095_handle_bq_pdata._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.218, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/max98095.c", i32 1629, i32 38}
!371 = !{ptr @.str.219, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/max98095.c", i32 1629, i32 54}
!373 = !{ptr @bq_mode_name, !374, !"bq_mode_name", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/max98095.c", i32 1629, i32 20}
!375 = !{ptr @.str.220, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/max98095.c", i32 1638, i32 3}
!377 = !{ptr @.str.221, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @max98095_get_bq_channel._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @max98095_get_bq_channel._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.222, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/max98095.c", i32 1679, i32 2}
!382 = !{ptr @max98095_put_bq_enum.__UNIQUE_ID_ddebug296, !381, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!383 = !{ptr @.str.223, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/max98095.c", i32 1886, i32 3}
!385 = !{ptr @max98095_jack_detect_disable._entry, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @max98095_jack_detect_disable._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.224, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/max98095.c", i32 1399, i32 5}
!389 = !{ptr @.str.225, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @max98095_set_bias_level._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @max98095_set_bias_level._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.226, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/max98095.c", i32 1440, i32 10}
!394 = !{ptr @.str.227, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/max98095.c", i32 1458, i32 10}
!396 = !{ptr @max98095_dai, !397, !"max98095_dai", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/max98095.c", i32 1438, i32 34}
!398 = !{ptr @max98095_dai1_ops, !399, !"max98095_dai1_ops", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/max98095.c", i32 1420, i32 37}
!400 = !{ptr @.str.228, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/max98095.c", i32 1148, i32 3}
!402 = !{ptr @.str.229, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @max98095_dai_set_sysclk._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @max98095_dai_set_sysclk._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.230, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/max98095.c", i32 1152, i32 2}
!407 = !{ptr @max98095_dai_set_sysclk.__UNIQUE_ID_ddebug294, !406, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!408 = !{ptr @.str.231, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/max98095.c", i32 1186, i32 4}
!410 = !{ptr @.str.232, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @max98095_dai1_set_fmt._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @max98095_dai1_set_fmt._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.233, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/max98095.c", i32 976, i32 4}
!415 = !{ptr @.str.234, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @max98095_dai1_hw_params._entry, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @max98095_dai1_hw_params._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @rate_table, !419, !"rate_table", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/max98095.c", i32 911, i32 3}
!420 = !{ptr @max98095_dai2_ops, !421, !"max98095_dai2_ops", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/max98095.c", i32 1426, i32 37}
!422 = !{ptr @.str.235, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/max98095.c", i32 1254, i32 4}
!424 = !{ptr @max98095_dai2_set_fmt._entry, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @max98095_dai2_set_fmt._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.236, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/max98095.c", i32 1037, i32 4}
!428 = !{ptr @max98095_dai2_hw_params._entry, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @max98095_dai2_hw_params._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @max98095_dai3_ops, !431, !"max98095_dai3_ops", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/max98095.c", i32 1432, i32 37}
!432 = !{ptr @.str.237, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/max98095.c", i32 1323, i32 4}
!434 = !{ptr @max98095_dai3_set_fmt._entry, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @max98095_dai3_set_fmt._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.238, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/max98095.c", i32 1098, i32 4}
!438 = !{ptr @max98095_dai3_hw_params._entry, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @max98095_dai3_hw_params._entry_ptr, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @max98095_of_match, !441, !"max98095_of_match", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/max98095.c", i32 2152, i32 34}
!442 = !{ptr @max98095_i2c_id, !443, !"max98095_i2c_id", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/max98095.c", i32 2145, i32 35}
!444 = !{i32 1, !"wchar_size", i32 2}
!445 = !{i32 1, !"min_enum_size", i32 4}
!446 = !{i32 8, !"branch-target-enforcement", i32 0}
!447 = !{i32 8, !"sign-return-address", i32 0}
!448 = !{i32 8, !"sign-return-address-all", i32 0}
!449 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!450 = !{i32 7, !"uwtable", i32 1}
!451 = !{i32 7, !"frame-pointer", i32 2}
!452 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!453 = !{i64 2149015405, i64 2149015410, i64 2149015423, i64 2149015467, i64 2149015501, i64 2149015522}
!454 = !{!"branch_weights", i32 1, i32 2000}
!455 = !{i32 0, i32 33}
!456 = !{!"branch_weights", i32 2000, i32 1}
!457 = !{i64 2148248452, i64 2148248732, i64 2148249066, i64 2148249400}
