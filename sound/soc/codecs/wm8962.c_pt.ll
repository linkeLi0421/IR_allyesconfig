; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8962.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8962.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8962_mic_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8962_mic_detect\09\09\09\09"
module asm "\09.long\09__crc_wm8962_mic_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8962_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8962_mic_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8962_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_bytes = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.106, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.anon.110 = type { i32, i32, i16, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.111 = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wm8962_priv = type { %struct.wm8962_pdata, ptr, ptr, i32, i32, i32, i32, %struct.completion, i32, i32, i32, %struct.mutex, i16, %struct.delayed_work, ptr, [8 x %struct.regulator_bulk_data], [8 x %struct.notifier_block], ptr, %struct.work_struct, i32, %struct.gpio_chip, i32 }
%struct.wm8962_pdata = type { ptr, i32, [6 x i32], i32, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct._fll_div = type { i16, i16, i16, i16, i16, i16 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.84, [64 x i8] }
%union.anon.84 = type { %struct.anon.87, [40 x i8] }
%struct.anon.87 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_wm8962_mic_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8962_mic_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8962_mic_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8962_mic_detect to i32), ptr @__kstrtab_wm8962_mic_detect, ptr @__kstrtabns_wm8962_mic_detect }, section "___ksymtab_gpl+wm8962_mic_detect", align 4
@__initcall__kmod_snd_soc_wm8962__343_3887_wm8962_i2c_driver_init6 = internal global ptr @wm8962_i2c_driver_init, section ".initcall6.init", align 4
@wm8962_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8962_i2c_probe, ptr @wm8962_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8962_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_pm, ptr null, ptr null }, ptr @wm8962_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8962_i2c_driver_exit = internal global ptr @wm8962_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description344 = internal constant [46 x i8] c"snd_soc_wm8962.description=ASoC WM8962 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author345 = internal constant [71 x i8] c"snd_soc_wm8962.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [52 x i8] c"snd_soc_wm8962.file=sound/soc/codecs/snd-soc-wm8962\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [27 x i8] c"snd_soc_wm8962.license=GPL\00", section ".modinfo", align 1
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8962\00", [25 x i8] zeroinitializer }, align 32
@wm8962_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8962\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wm8962_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_runtime_suspend, ptr @wm8962_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@wm8962_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8962\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&wm8962->dsp2_ena_lock\00", [41 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&wm8962->mic_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&wm8962->mic_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 3580, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8962_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8962.c\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr = internal global ptr @wm8962_i2c_probe._entry, section ".printk_index", align 4
@wm8962_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 3587, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.15 = internal global ptr @wm8962_i2c_probe._entry.13, section ".printk_index", align 4
@wm8962_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8962_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm8962_readable_register, ptr @wm8962_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 21139, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_reg, i32 618, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8962:3591:(&wm8962_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.10, i32 3594, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.19 = internal global ptr @wm8962_i2c_probe._entry.17, section ".printk_index", align 4
@wm8962_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.10, i32 3607, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read ID register\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.22 = internal global ptr @wm8962_i2c_probe._entry.20, section ".printk_index", align 4
@wm8962_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.10, i32 3612, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device is not a WM8962, ID %x != 0x6243\0A\00", [55 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.25 = internal global ptr @wm8962_i2c_probe._entry.23, section ".printk_index", align 4
@wm8962_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str.10, i32 3620, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read device revision: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.28 = internal global ptr @wm8962_i2c_probe._entry.26, section ".printk_index", align 4
@wm8962_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.9, ptr @.str.10, i32 3627, ptr @.str.31, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"customer id %x revision %c\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.32 = internal global ptr @wm8962_i2c_probe._entry.29, section ".printk_index", align 4
@wm8962_i2c_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.9, ptr @.str.10, i32 3633, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to issue reset\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.35 = internal global ptr @wm8962_i2c_probe._entry.33, section ".printk_index", align 4
@wm8962_dc_measure = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 253, i32 1, i32 0 }, %struct.reg_sequence { i32 204, i32 64, i32 0 }, %struct.reg_sequence { i32 253, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.9, ptr @.str.10, i32 3715, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to configure for DC measurement: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.38 = internal global ptr @wm8962_i2c_probe._entry.36, section ".printk_index", align 4
@wm8962_i2c_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.9, ptr @.str.10, i32 3736, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8962_i2c_probe._entry_ptr.41 = internal global ptr @wm8962_i2c_probe._entry.39, section ".printk_index", align 4
@soc_component_dev_wm8962 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @wm8962_probe, ptr @wm8962_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_set_fll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8962_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.2, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.291, i64 68719477828, i32 1790, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.296, i64 68719477828, i32 1790, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spk-mono\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mic-cfg\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-cfg\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLLVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDD1\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDD2\00", [24 x i8] zeroinitializer }, align 32
@wm8962_reg = internal constant { [618 x %struct.reg_default], [1232 x i8] } { [618 x %struct.reg_default] [%struct.reg_default { i32 0, i32 159 }, %struct.reg_default { i32 1, i32 1183 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 5, i32 24 }, %struct.reg_default { i32 6, i32 8200 }, %struct.reg_default { i32 7, i32 10 }, %struct.reg_default { i32 8, i32 484 }, %struct.reg_default { i32 9, i32 768 }, %struct.reg_default { i32 10, i32 192 }, %struct.reg_default { i32 11, i32 192 }, %struct.reg_default { i32 14, i32 64 }, %struct.reg_default { i32 15, i32 25155 }, %struct.reg_default { i32 17, i32 123 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 7218 }, %struct.reg_default { i32 20, i32 12800 }, %struct.reg_default { i32 21, i32 192 }, %struct.reg_default { i32 22, i32 192 }, %struct.reg_default { i32 23, i32 352 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 16 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 30, i32 94 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 325 }, %struct.reg_default { i32 33, i32 325 }, %struct.reg_default { i32 34, i32 9 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 37, i32 8 }, %struct.reg_default { i32 38, i32 8 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 49, i32 16 }, %struct.reg_default { i32 51, i32 3 }, %struct.reg_default { i32 56, i32 1286 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 60, i32 768 }, %struct.reg_default { i32 61, i32 768 }, %struct.reg_default { i32 64, i32 2064 }, %struct.reg_default { i32 68, i32 27 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 71, i32 507 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 82, i32 4 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 319 }, %struct.reg_default { i32 103, i32 319 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 319 }, %struct.reg_default { i32 108, i32 319 }, %struct.reg_default { i32 109, i32 3 }, %struct.reg_default { i32 110, i32 2 }, %struct.reg_default { i32 115, i32 6 }, %struct.reg_default { i32 116, i32 38 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 124, i32 17 }, %struct.reg_default { i32 125, i32 75 }, %struct.reg_default { i32 126, i32 13 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 136, i32 103 }, %struct.reg_default { i32 137, i32 28 }, %struct.reg_default { i32 138, i32 113 }, %struct.reg_default { i32 139, i32 199 }, %struct.reg_default { i32 140, i32 103 }, %struct.reg_default { i32 141, i32 72 }, %struct.reg_default { i32 142, i32 34 }, %struct.reg_default { i32 143, i32 151 }, %struct.reg_default { i32 155, i32 12 }, %struct.reg_default { i32 156, i32 57 }, %struct.reg_default { i32 157, i32 384 }, %struct.reg_default { i32 159, i32 50 }, %struct.reg_default { i32 160, i32 24 }, %struct.reg_default { i32 161, i32 125 }, %struct.reg_default { i32 162, i32 8 }, %struct.reg_default { i32 252, i32 5 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 257, i32 0 }, %struct.reg_default { i32 258, i32 0 }, %struct.reg_default { i32 259, i32 0 }, %struct.reg_default { i32 260, i32 0 }, %struct.reg_default { i32 261, i32 0 }, %struct.reg_default { i32 262, i32 0 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 265, i32 0 }, %struct.reg_default { i32 268, i32 0 }, %struct.reg_default { i32 269, i32 0 }, %struct.reg_default { i32 270, i32 0 }, %struct.reg_default { i32 271, i32 0 }, %struct.reg_default { i32 276, i32 12 }, %struct.reg_default { i32 277, i32 2341 }, %struct.reg_default { i32 278, i32 0 }, %struct.reg_default { i32 279, i32 0 }, %struct.reg_default { i32 280, i32 0 }, %struct.reg_default { i32 285, i32 0 }, %struct.reg_default { i32 335, i32 4 }, %struct.reg_default { i32 336, i32 25368 }, %struct.reg_default { i32 337, i32 25344 }, %struct.reg_default { i32 338, i32 4042 }, %struct.reg_default { i32 339, i32 1024 }, %struct.reg_default { i32 340, i32 216 }, %struct.reg_default { i32 341, i32 7861 }, %struct.reg_default { i32 342, i32 61765 }, %struct.reg_default { i32 343, i32 2933 }, %struct.reg_default { i32 344, i32 453 }, %struct.reg_default { i32 345, i32 7256 }, %struct.reg_default { i32 346, i32 62323 }, %struct.reg_default { i32 347, i32 2644 }, %struct.reg_default { i32 348, i32 1368 }, %struct.reg_default { i32 349, i32 5774 }, %struct.reg_default { i32 350, i32 63529 }, %struct.reg_default { i32 351, i32 1965 }, %struct.reg_default { i32 352, i32 4355 }, %struct.reg_default { i32 353, i32 1380 }, %struct.reg_default { i32 354, i32 1369 }, %struct.reg_default { i32 355, i32 16384 }, %struct.reg_default { i32 356, i32 25368 }, %struct.reg_default { i32 357, i32 25344 }, %struct.reg_default { i32 358, i32 4042 }, %struct.reg_default { i32 359, i32 1024 }, %struct.reg_default { i32 360, i32 216 }, %struct.reg_default { i32 361, i32 7861 }, %struct.reg_default { i32 362, i32 61765 }, %struct.reg_default { i32 363, i32 2933 }, %struct.reg_default { i32 364, i32 453 }, %struct.reg_default { i32 365, i32 7256 }, %struct.reg_default { i32 366, i32 62323 }, %struct.reg_default { i32 367, i32 2644 }, %struct.reg_default { i32 368, i32 1368 }, %struct.reg_default { i32 369, i32 5774 }, %struct.reg_default { i32 370, i32 63529 }, %struct.reg_default { i32 371, i32 1965 }, %struct.reg_default { i32 372, i32 4355 }, %struct.reg_default { i32 373, i32 1380 }, %struct.reg_default { i32 374, i32 1369 }, %struct.reg_default { i32 375, i32 16384 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 514, i32 0 }, %struct.reg_default { i32 516, i32 33024 }, %struct.reg_default { i32 517, i32 33024 }, %struct.reg_default { i32 568, i32 48 }, %struct.reg_default { i32 569, i32 65517 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 584, i32 45 }, %struct.reg_default { i32 586, i32 0 }, %struct.reg_default { i32 768, i32 7168 }, %struct.reg_default { i32 8192, i32 0 }, %struct.reg_default { i32 9216, i32 48 }, %struct.reg_default { i32 9217, i32 0 }, %struct.reg_default { i32 9218, i32 0 }, %struct.reg_default { i32 12288, i32 0 }, %struct.reg_default { i32 12289, i32 0 }, %struct.reg_default { i32 13312, i32 0 }, %struct.reg_default { i32 13313, i32 0 }, %struct.reg_default { i32 14336, i32 0 }, %struct.reg_default { i32 14337, i32 0 }, %struct.reg_default { i32 15360, i32 10 }, %struct.reg_default { i32 16384, i32 0 }, %struct.reg_default { i32 16385, i32 0 }, %struct.reg_default { i32 16386, i32 0 }, %struct.reg_default { i32 16387, i32 0 }, %struct.reg_default { i32 16388, i32 0 }, %struct.reg_default { i32 16389, i32 0 }, %struct.reg_default { i32 16896, i32 2 }, %struct.reg_default { i32 16897, i32 48402 }, %struct.reg_default { i32 16898, i32 124 }, %struct.reg_default { i32 16899, i32 22636 }, %struct.reg_default { i32 16900, i32 83 }, %struct.reg_default { i32 16901, i32 33057 }, %struct.reg_default { i32 16902, i32 63 }, %struct.reg_default { i32 16903, i32 35800 }, %struct.reg_default { i32 16904, i32 50 }, %struct.reg_default { i32 16905, i32 62765 }, %struct.reg_default { i32 16906, i32 101 }, %struct.reg_default { i32 16907, i32 44172 }, %struct.reg_default { i32 16908, i32 107 }, %struct.reg_default { i32 16909, i32 57479 }, %struct.reg_default { i32 16910, i32 114 }, %struct.reg_default { i32 16911, i32 5251 }, %struct.reg_default { i32 16912, i32 114 }, %struct.reg_default { i32 16913, i32 5251 }, %struct.reg_default { i32 16914, i32 67 }, %struct.reg_default { i32 16915, i32 13605 }, %struct.reg_default { i32 16916, i32 6 }, %struct.reg_default { i32 16917, i32 27210 }, %struct.reg_default { i32 16918, i32 67 }, %struct.reg_default { i32 16919, i32 24697 }, %struct.reg_default { i32 16920, i32 8 }, %struct.reg_default { i32 16921, i32 0 }, %struct.reg_default { i32 16922, i32 1 }, %struct.reg_default { i32 16923, i32 0 }, %struct.reg_default { i32 16924, i32 89 }, %struct.reg_default { i32 16925, i32 39322 }, %struct.reg_default { i32 17408, i32 131 }, %struct.reg_default { i32 17409, i32 39085 }, %struct.reg_default { i32 17920, i32 127 }, %struct.reg_default { i32 17921, i32 65535 }, %struct.reg_default { i32 17922, i32 0 }, %struct.reg_default { i32 17923, i32 0 }, %struct.reg_default { i32 17924, i32 0 }, %struct.reg_default { i32 17925, i32 0 }, %struct.reg_default { i32 17926, i32 0 }, %struct.reg_default { i32 17927, i32 0 }, %struct.reg_default { i32 17928, i32 0 }, %struct.reg_default { i32 17929, i32 0 }, %struct.reg_default { i32 17930, i32 0 }, %struct.reg_default { i32 17931, i32 0 }, %struct.reg_default { i32 17932, i32 0 }, %struct.reg_default { i32 17933, i32 0 }, %struct.reg_default { i32 17934, i32 0 }, %struct.reg_default { i32 17935, i32 0 }, %struct.reg_default { i32 17936, i32 0 }, %struct.reg_default { i32 17937, i32 0 }, %struct.reg_default { i32 17938, i32 0 }, %struct.reg_default { i32 17939, i32 0 }, %struct.reg_default { i32 17940, i32 0 }, %struct.reg_default { i32 17941, i32 0 }, %struct.reg_default { i32 17942, i32 0 }, %struct.reg_default { i32 17943, i32 0 }, %struct.reg_default { i32 17944, i32 0 }, %struct.reg_default { i32 17945, i32 0 }, %struct.reg_default { i32 17946, i32 0 }, %struct.reg_default { i32 17947, i32 0 }, %struct.reg_default { i32 17948, i32 0 }, %struct.reg_default { i32 17949, i32 0 }, %struct.reg_default { i32 17950, i32 0 }, %struct.reg_default { i32 17951, i32 0 }, %struct.reg_default { i32 17952, i32 0 }, %struct.reg_default { i32 17953, i32 0 }, %struct.reg_default { i32 17954, i32 0 }, %struct.reg_default { i32 17955, i32 0 }, %struct.reg_default { i32 17956, i32 0 }, %struct.reg_default { i32 17957, i32 0 }, %struct.reg_default { i32 17958, i32 0 }, %struct.reg_default { i32 17959, i32 0 }, %struct.reg_default { i32 17960, i32 0 }, %struct.reg_default { i32 17961, i32 0 }, %struct.reg_default { i32 17962, i32 0 }, %struct.reg_default { i32 17963, i32 0 }, %struct.reg_default { i32 17964, i32 0 }, %struct.reg_default { i32 17965, i32 0 }, %struct.reg_default { i32 17966, i32 0 }, %struct.reg_default { i32 17967, i32 0 }, %struct.reg_default { i32 17968, i32 0 }, %struct.reg_default { i32 17969, i32 0 }, %struct.reg_default { i32 17970, i32 0 }, %struct.reg_default { i32 17971, i32 0 }, %struct.reg_default { i32 17972, i32 0 }, %struct.reg_default { i32 17973, i32 0 }, %struct.reg_default { i32 17974, i32 0 }, %struct.reg_default { i32 17975, i32 0 }, %struct.reg_default { i32 17976, i32 0 }, %struct.reg_default { i32 17977, i32 0 }, %struct.reg_default { i32 17978, i32 0 }, %struct.reg_default { i32 17979, i32 0 }, %struct.reg_default { i32 17980, i32 0 }, %struct.reg_default { i32 17981, i32 0 }, %struct.reg_default { i32 17982, i32 0 }, %struct.reg_default { i32 17983, i32 0 }, %struct.reg_default { i32 18432, i32 32 }, %struct.reg_default { i32 18433, i32 0 }, %struct.reg_default { i32 18434, i32 64 }, %struct.reg_default { i32 18435, i32 0 }, %struct.reg_default { i32 18944, i32 127 }, %struct.reg_default { i32 18945, i32 65535 }, %struct.reg_default { i32 18946, i32 0 }, %struct.reg_default { i32 18947, i32 0 }, %struct.reg_default { i32 18948, i32 0 }, %struct.reg_default { i32 18949, i32 0 }, %struct.reg_default { i32 18950, i32 0 }, %struct.reg_default { i32 18951, i32 0 }, %struct.reg_default { i32 18952, i32 0 }, %struct.reg_default { i32 18953, i32 0 }, %struct.reg_default { i32 18954, i32 0 }, %struct.reg_default { i32 18955, i32 0 }, %struct.reg_default { i32 18956, i32 0 }, %struct.reg_default { i32 18957, i32 0 }, %struct.reg_default { i32 18958, i32 0 }, %struct.reg_default { i32 18959, i32 0 }, %struct.reg_default { i32 18960, i32 0 }, %struct.reg_default { i32 18961, i32 0 }, %struct.reg_default { i32 18962, i32 0 }, %struct.reg_default { i32 18963, i32 0 }, %struct.reg_default { i32 18964, i32 0 }, %struct.reg_default { i32 18965, i32 0 }, %struct.reg_default { i32 18966, i32 0 }, %struct.reg_default { i32 18967, i32 0 }, %struct.reg_default { i32 18968, i32 0 }, %struct.reg_default { i32 18969, i32 0 }, %struct.reg_default { i32 18970, i32 0 }, %struct.reg_default { i32 18971, i32 0 }, %struct.reg_default { i32 18972, i32 0 }, %struct.reg_default { i32 18973, i32 0 }, %struct.reg_default { i32 18974, i32 0 }, %struct.reg_default { i32 18975, i32 0 }, %struct.reg_default { i32 18976, i32 0 }, %struct.reg_default { i32 18977, i32 0 }, %struct.reg_default { i32 18978, i32 0 }, %struct.reg_default { i32 18979, i32 0 }, %struct.reg_default { i32 18980, i32 0 }, %struct.reg_default { i32 18981, i32 0 }, %struct.reg_default { i32 18982, i32 0 }, %struct.reg_default { i32 18983, i32 0 }, %struct.reg_default { i32 18984, i32 0 }, %struct.reg_default { i32 18985, i32 0 }, %struct.reg_default { i32 18986, i32 0 }, %struct.reg_default { i32 18987, i32 0 }, %struct.reg_default { i32 18988, i32 0 }, %struct.reg_default { i32 18989, i32 0 }, %struct.reg_default { i32 18990, i32 0 }, %struct.reg_default { i32 18991, i32 0 }, %struct.reg_default { i32 18992, i32 0 }, %struct.reg_default { i32 18993, i32 0 }, %struct.reg_default { i32 18994, i32 0 }, %struct.reg_default { i32 18995, i32 0 }, %struct.reg_default { i32 18996, i32 0 }, %struct.reg_default { i32 18997, i32 0 }, %struct.reg_default { i32 18998, i32 0 }, %struct.reg_default { i32 18999, i32 0 }, %struct.reg_default { i32 19000, i32 0 }, %struct.reg_default { i32 19001, i32 0 }, %struct.reg_default { i32 19002, i32 0 }, %struct.reg_default { i32 19003, i32 0 }, %struct.reg_default { i32 19004, i32 0 }, %struct.reg_default { i32 19005, i32 0 }, %struct.reg_default { i32 19006, i32 0 }, %struct.reg_default { i32 19007, i32 0 }, %struct.reg_default { i32 19456, i32 127 }, %struct.reg_default { i32 19457, i32 65535 }, %struct.reg_default { i32 19458, i32 0 }, %struct.reg_default { i32 19459, i32 0 }, %struct.reg_default { i32 19460, i32 0 }, %struct.reg_default { i32 19461, i32 0 }, %struct.reg_default { i32 19462, i32 0 }, %struct.reg_default { i32 19463, i32 0 }, %struct.reg_default { i32 19464, i32 0 }, %struct.reg_default { i32 19465, i32 0 }, %struct.reg_default { i32 19466, i32 0 }, %struct.reg_default { i32 19467, i32 0 }, %struct.reg_default { i32 19468, i32 0 }, %struct.reg_default { i32 19469, i32 0 }, %struct.reg_default { i32 19470, i32 0 }, %struct.reg_default { i32 19471, i32 0 }, %struct.reg_default { i32 19472, i32 0 }, %struct.reg_default { i32 19473, i32 0 }, %struct.reg_default { i32 19474, i32 0 }, %struct.reg_default { i32 19475, i32 0 }, %struct.reg_default { i32 19476, i32 0 }, %struct.reg_default { i32 19477, i32 0 }, %struct.reg_default { i32 19478, i32 0 }, %struct.reg_default { i32 19479, i32 0 }, %struct.reg_default { i32 19480, i32 0 }, %struct.reg_default { i32 19481, i32 0 }, %struct.reg_default { i32 19482, i32 0 }, %struct.reg_default { i32 19483, i32 0 }, %struct.reg_default { i32 19484, i32 0 }, %struct.reg_default { i32 19485, i32 0 }, %struct.reg_default { i32 19486, i32 0 }, %struct.reg_default { i32 19487, i32 0 }, %struct.reg_default { i32 19488, i32 0 }, %struct.reg_default { i32 19489, i32 0 }, %struct.reg_default { i32 19490, i32 0 }, %struct.reg_default { i32 19491, i32 0 }, %struct.reg_default { i32 19492, i32 0 }, %struct.reg_default { i32 19493, i32 0 }, %struct.reg_default { i32 19494, i32 0 }, %struct.reg_default { i32 19495, i32 0 }, %struct.reg_default { i32 19496, i32 0 }, %struct.reg_default { i32 19497, i32 0 }, %struct.reg_default { i32 19498, i32 0 }, %struct.reg_default { i32 19499, i32 0 }, %struct.reg_default { i32 19500, i32 0 }, %struct.reg_default { i32 19501, i32 0 }, %struct.reg_default { i32 19502, i32 0 }, %struct.reg_default { i32 19503, i32 0 }, %struct.reg_default { i32 19504, i32 0 }, %struct.reg_default { i32 19505, i32 0 }, %struct.reg_default { i32 19506, i32 0 }, %struct.reg_default { i32 19507, i32 0 }, %struct.reg_default { i32 19508, i32 0 }, %struct.reg_default { i32 19509, i32 0 }, %struct.reg_default { i32 19510, i32 0 }, %struct.reg_default { i32 19511, i32 0 }, %struct.reg_default { i32 19512, i32 0 }, %struct.reg_default { i32 19513, i32 0 }, %struct.reg_default { i32 19514, i32 0 }, %struct.reg_default { i32 19515, i32 0 }, %struct.reg_default { i32 19516, i32 0 }, %struct.reg_default { i32 19517, i32 0 }, %struct.reg_default { i32 19518, i32 0 }, %struct.reg_default { i32 19519, i32 0 }, %struct.reg_default { i32 19968, i32 32 }, %struct.reg_default { i32 19969, i32 0 }, %struct.reg_default { i32 19970, i32 64 }, %struct.reg_default { i32 19971, i32 0 }, %struct.reg_default { i32 20480, i32 127 }, %struct.reg_default { i32 20481, i32 65535 }, %struct.reg_default { i32 20482, i32 0 }, %struct.reg_default { i32 20483, i32 0 }, %struct.reg_default { i32 20484, i32 0 }, %struct.reg_default { i32 20485, i32 0 }, %struct.reg_default { i32 20486, i32 0 }, %struct.reg_default { i32 20487, i32 0 }, %struct.reg_default { i32 20488, i32 0 }, %struct.reg_default { i32 20489, i32 0 }, %struct.reg_default { i32 20490, i32 0 }, %struct.reg_default { i32 20491, i32 0 }, %struct.reg_default { i32 20492, i32 0 }, %struct.reg_default { i32 20493, i32 0 }, %struct.reg_default { i32 20494, i32 0 }, %struct.reg_default { i32 20495, i32 0 }, %struct.reg_default { i32 20496, i32 0 }, %struct.reg_default { i32 20497, i32 0 }, %struct.reg_default { i32 20498, i32 0 }, %struct.reg_default { i32 20499, i32 0 }, %struct.reg_default { i32 20500, i32 0 }, %struct.reg_default { i32 20501, i32 0 }, %struct.reg_default { i32 20502, i32 0 }, %struct.reg_default { i32 20503, i32 0 }, %struct.reg_default { i32 20504, i32 0 }, %struct.reg_default { i32 20505, i32 0 }, %struct.reg_default { i32 20506, i32 0 }, %struct.reg_default { i32 20507, i32 0 }, %struct.reg_default { i32 20508, i32 0 }, %struct.reg_default { i32 20509, i32 0 }, %struct.reg_default { i32 20510, i32 0 }, %struct.reg_default { i32 20511, i32 0 }, %struct.reg_default { i32 20512, i32 0 }, %struct.reg_default { i32 20513, i32 0 }, %struct.reg_default { i32 20514, i32 0 }, %struct.reg_default { i32 20515, i32 0 }, %struct.reg_default { i32 20516, i32 0 }, %struct.reg_default { i32 20517, i32 0 }, %struct.reg_default { i32 20518, i32 0 }, %struct.reg_default { i32 20519, i32 0 }, %struct.reg_default { i32 20520, i32 0 }, %struct.reg_default { i32 20521, i32 0 }, %struct.reg_default { i32 20522, i32 0 }, %struct.reg_default { i32 20523, i32 0 }, %struct.reg_default { i32 20524, i32 0 }, %struct.reg_default { i32 20525, i32 0 }, %struct.reg_default { i32 20526, i32 0 }, %struct.reg_default { i32 20527, i32 0 }, %struct.reg_default { i32 20528, i32 0 }, %struct.reg_default { i32 20529, i32 0 }, %struct.reg_default { i32 20530, i32 0 }, %struct.reg_default { i32 20531, i32 0 }, %struct.reg_default { i32 20532, i32 0 }, %struct.reg_default { i32 20533, i32 0 }, %struct.reg_default { i32 20534, i32 0 }, %struct.reg_default { i32 20535, i32 0 }, %struct.reg_default { i32 20536, i32 0 }, %struct.reg_default { i32 20537, i32 0 }, %struct.reg_default { i32 20538, i32 0 }, %struct.reg_default { i32 20539, i32 0 }, %struct.reg_default { i32 20540, i32 0 }, %struct.reg_default { i32 20541, i32 0 }, %struct.reg_default { i32 20542, i32 0 }, %struct.reg_default { i32 20543, i32 0 }, %struct.reg_default { i32 20992, i32 140 }, %struct.reg_default { i32 20993, i32 512 }, %struct.reg_default { i32 20994, i32 53 }, %struct.reg_default { i32 20995, i32 1792 }, %struct.reg_default { i32 20996, i32 58 }, %struct.reg_default { i32 20997, i32 16640 }, %struct.reg_default { i32 20998, i32 139 }, %struct.reg_default { i32 20999, i32 32000 }, %struct.reg_default { i32 21000, i32 58 }, %struct.reg_default { i32 21001, i32 16640 }, %struct.reg_default { i32 21002, i32 140 }, %struct.reg_default { i32 21003, i32 65256 }, %struct.reg_default { i32 21004, i32 120 }, %struct.reg_default { i32 21005, i32 0 }, %struct.reg_default { i32 21006, i32 63 }, %struct.reg_default { i32 21007, i32 45664 }, %struct.reg_default { i32 21008, i32 45 }, %struct.reg_default { i32 21009, i32 6168 }, %struct.reg_default { i32 21010, i32 32 }, %struct.reg_default { i32 21011, i32 0 }, %struct.reg_default { i32 21012, i32 241 }, %struct.reg_default { i32 21013, i32 33600 }, %struct.reg_default { i32 21014, i32 251 }, %struct.reg_default { i32 21015, i32 33536 }, %struct.reg_default { i32 21016, i32 238 }, %struct.reg_default { i32 21017, i32 44736 }, %struct.reg_default { i32 21018, i32 251 }, %struct.reg_default { i32 21019, i32 44096 }, %struct.reg_default { i32 21020, i32 241 }, %struct.reg_default { i32 21021, i32 32640 }, %struct.reg_default { i32 21022, i32 244 }, %struct.reg_default { i32 21023, i32 15168 }, %struct.reg_default { i32 21024, i32 245 }, %struct.reg_default { i32 21025, i32 64256 }, %struct.reg_default { i32 21026, i32 234 }, %struct.reg_default { i32 21027, i32 4288 }, %struct.reg_default { i32 21028, i32 252 }, %struct.reg_default { i32 21029, i32 50560 }, %struct.reg_default { i32 21030, i32 226 }, %struct.reg_default { i32 21031, i32 30144 }, %struct.reg_default { i32 21032, i32 4 }, %struct.reg_default { i32 21033, i32 46208 }, %struct.reg_default { i32 21034, i32 212 }, %struct.reg_default { i32 21035, i32 63872 }, %struct.reg_default { i32 21036, i32 4 }, %struct.reg_default { i32 21037, i32 37184 }, %struct.reg_default { i32 21038, i32 216 }, %struct.reg_default { i32 21039, i32 42112 }, %struct.reg_default { i32 21040, i32 2 }, %struct.reg_default { i32 21041, i32 15808 }, %struct.reg_default { i32 21042, i32 207 }, %struct.reg_default { i32 21043, i32 31360 }, %struct.reg_default { i32 21044, i32 220 }, %struct.reg_default { i32 21045, i32 1536 }, %struct.reg_default { i32 21046, i32 242 }, %struct.reg_default { i32 21047, i32 56000 }, %struct.reg_default { i32 21048, i32 186 }, %struct.reg_default { i32 21049, i32 62272 }, %struct.reg_default { i32 21050, i32 10 }, %struct.reg_default { i32 21051, i32 31040 }, %struct.reg_default { i32 21052, i32 28 }, %struct.reg_default { i32 21053, i32 1664 }, %struct.reg_default { i32 21054, i32 253 }, %struct.reg_default { i32 21055, i32 11520 }, %struct.reg_default { i32 21056, i32 28 }, %struct.reg_default { i32 21057, i32 59456 }, %struct.reg_default { i32 21058, i32 13 }, %struct.reg_default { i32 21059, i32 56384 }, %struct.reg_default { i32 21060, i32 252 }, %struct.reg_default { i32 21061, i32 40192 }, %struct.reg_default { i32 21062, i32 9 }, %struct.reg_default { i32 21063, i32 21888 }, %struct.reg_default { i32 21064, i32 254 }, %struct.reg_default { i32 21065, i32 32384 }, %struct.reg_default { i32 21066, i32 14 }, %struct.reg_default { i32 21067, i32 43840 }, %struct.reg_default { i32 21068, i32 249 }, %struct.reg_default { i32 21069, i32 39040 }, %struct.reg_default { i32 21070, i32 9 }, %struct.reg_default { i32 21071, i32 34752 }, %struct.reg_default { i32 21072, i32 253 }, %struct.reg_default { i32 21073, i32 11328 }, %struct.reg_default { i32 21074, i32 9 }, %struct.reg_default { i32 21075, i32 18432 }, %struct.reg_default { i32 21076, i32 3 }, %struct.reg_default { i32 21077, i32 24384 }, %struct.reg_default { i32 21078, i32 0 }, %struct.reg_default { i32 21079, i32 34560 }, %struct.reg_default { i32 21080, i32 250 }, %struct.reg_default { i32 21081, i32 58560 }, %struct.reg_default { i32 21082, i32 0 }, %struct.reg_default { i32 21083, i32 2880 }, %struct.reg_default { i32 21084, i32 4 }, %struct.reg_default { i32 21085, i32 57728 }, %struct.reg_default { i32 21086, i32 1 }, %struct.reg_default { i32 21087, i32 8000 }, %struct.reg_default { i32 21088, i32 248 }, %struct.reg_default { i32 21089, i32 45056 }, %struct.reg_default { i32 21090, i32 251 }, %struct.reg_default { i32 21091, i32 52160 }, %struct.reg_default { i32 21092, i32 4 }, %struct.reg_default { i32 21093, i32 62336 }, %struct.reg_default { i32 21094, i32 7 }, %struct.reg_default { i32 21095, i32 57152 }, %struct.reg_default { i32 21096, i32 255 }, %struct.reg_default { i32 21097, i32 1792 }, %struct.reg_default { i32 21098, i32 239 }, %struct.reg_default { i32 21099, i32 55040 }, %struct.reg_default { i32 21100, i32 251 }, %struct.reg_default { i32 21101, i32 44864 }, %struct.reg_default { i32 21102, i32 16 }, %struct.reg_default { i32 21103, i32 35456 }, %struct.reg_default { i32 21104, i32 17 }, %struct.reg_default { i32 21105, i32 1984 }, %struct.reg_default { i32 21106, i32 224 }, %struct.reg_default { i32 21107, i32 2048 }, %struct.reg_default { i32 21108, i32 210 }, %struct.reg_default { i32 21109, i32 30208 }, %struct.reg_default { i32 21110, i32 32 }, %struct.reg_default { i32 21111, i32 53056 }, %struct.reg_default { i32 21112, i32 48 }, %struct.reg_default { i32 21113, i32 9024 }, %struct.reg_default { i32 21114, i32 253 }, %struct.reg_default { i32 21115, i32 27072 }, %struct.reg_default { i32 21116, i32 40 }, %struct.reg_default { i32 21117, i32 13568 }, %struct.reg_default { i32 21118, i32 6 }, %struct.reg_default { i32 21119, i32 13056 }, %struct.reg_default { i32 21120, i32 217 }, %struct.reg_default { i32 21121, i32 63168 }, %struct.reg_default { i32 21122, i32 243 }, %struct.reg_default { i32 21123, i32 13120 }, %struct.reg_default { i32 21124, i32 15 }, %struct.reg_default { i32 21125, i32 16896 }, %struct.reg_default { i32 21126, i32 4 }, %struct.reg_default { i32 21127, i32 3200 }, %struct.reg_default { i32 21128, i32 251 }, %struct.reg_default { i32 21129, i32 16256 }, %struct.reg_default { i32 21130, i32 247 }, %struct.reg_default { i32 21131, i32 22464 }, %struct.reg_default { i32 21132, i32 3 }, %struct.reg_default { i32 21133, i32 21504 }, %struct.reg_default { i32 21134, i32 0 }, %struct.reg_default { i32 21135, i32 50880 }, %struct.reg_default { i32 21136, i32 3 }, %struct.reg_default { i32 21137, i32 4800 }, %struct.reg_default { i32 21138, i32 253 }, %struct.reg_default { i32 21139, i32 34176 }], [1232 x i8] zeroinitializer }, align 32
@wm8962_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.10, i32 3023, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to resume: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8962_irq\00", [21 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr = internal global ptr @wm8962_irq._entry, section ".printk_index", align 4
@wm8962_irq._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.10, i32 3032, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read interrupt mask: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.58 = internal global ptr @wm8962_irq._entry.56, section ".printk_index", align 4
@wm8962_irq._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.10, i32 3039, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read interrupt: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.61 = internal global ptr @wm8962_irq._entry.59, section ".printk_index", align 4
@wm8962_irq._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.10, i32 3053, ptr @.str.64, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to ack interrupt: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.65 = internal global ptr @wm8962_irq._entry.62, section ".printk_index", align 4
@wm8962_irq.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.55, ptr @.str.10, ptr @.str.67, i8 2, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8962\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FLL locked\0A\00", [20 x i8] zeroinitializer }, align 32
@wm8962_irq._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.10, i32 3061, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FIFO error\0A\00", [20 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.70 = internal global ptr @wm8962_irq._entry.68, section ".printk_index", align 4
@wm8962_irq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.55, ptr @.str.10, i32 3064, ptr @.str.73, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Thermal shutdown\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.74 = internal global ptr @wm8962_irq._entry.71, section ".printk_index", align 4
@wm8962_irq._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.55, ptr @.str.10, i32 3070, ptr @.str.64, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read thermal status: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.77 = internal global ptr @wm8962_irq._entry.75, section ".printk_index", align 4
@wm8962_irq._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.55, ptr @.str.10, i32 3075, ptr @.str.73, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headphone thermal error\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.80 = internal global ptr @wm8962_irq._entry.78, section ".printk_index", align 4
@wm8962_irq._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.55, ptr @.str.10, i32 3077, ptr @.str.73, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone thermal warning\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.83 = internal global ptr @wm8962_irq._entry.81, section ".printk_index", align 4
@wm8962_irq._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.55, ptr @.str.10, i32 3079, ptr @.str.73, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Speaker thermal error\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.86 = internal global ptr @wm8962_irq._entry.84, section ".printk_index", align 4
@wm8962_irq._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.55, ptr @.str.10, i32 3081, ptr @.str.73, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Speaker thermal warning\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8962_irq._entry_ptr.89 = internal global ptr @wm8962_irq._entry.87, section ".printk_index", align 4
@wm8962_irq.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.55, ptr @.str.10, ptr @.str.90, i8 3, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microphone event detected\0A\00", [37 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_snd_soc_jack_irq = external dso_local global %struct.tracepoint, align 4
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/asoc.h\00", [36 x i8] zeroinitializer }, align 32
@trace_snd_soc_jack_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@wm8962_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.10, i32 3436, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register regulator notifier: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8962_probe\00", [19 x i8] zeroinitializer }, align 32
@wm8962_probe._entry_ptr = internal global ptr @wm8962_probe._entry, section ".printk_index", align 4
@wm8962_probe.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.95, ptr @.str.10, ptr @.str.96, i8 3, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMIC not in use, disabling\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMICDAT\00", [24 x i8] zeroinitializer }, align 32
@wm8962_probe._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.95, ptr @.str.10, i32 3469, ptr @.str.64, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMIC GPIOs partially configured\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8962_probe._entry_ptr.100 = internal global ptr @wm8962_probe._entry.98, section ".printk_index", align 4
@wm8962_snd_controls = internal constant { [62 x %struct.snd_kcontrol_new], [736 x i8] } { [62 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mixin_tlv }, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mixinpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mixin_tlv }, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mixin_tlv }, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mixinpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mixin_tlv }, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cap_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cap_lhpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @st_tlv }, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @beep_tlv }, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8962_put_hp_sw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.155, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @hp_tlv }, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.157, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.159, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.163, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.165, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.167, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.169, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @classd_tlv }, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.187, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.189, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.203, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @wm8962_dsp2_ena_info, ptr @wm8962_dsp2_ena_get, ptr @wm8962_dsp2_ena_put, %union.anon.94 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @wm8962_dsp2_ena_info, ptr @wm8962_dsp2_ena_get, ptr @wm8962_dsp2_ena_put, %union.anon.94 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @wm8962_dsp2_ena_info, ptr @wm8962_dsp2_ena_get, ptr @wm8962_dsp2_ena_put, %union.anon.94 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @wm8962_dsp2_ena_info, ptr @wm8962_dsp2_ena_get, ptr @wm8962_dsp2_ena_put, %union.anon.94 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.213, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.215, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.216 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }], [736 x i8] zeroinitializer }, align 32
@wm8962_spk_mono_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.225, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8962_put_spk_sw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.226 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.227, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.228 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.229, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.232 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.233, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.234 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.235, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.236 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }], [96 x i8] zeroinitializer }, align 32
@wm8962_spk_stereo_controls = internal constant { [16 x %struct.snd_kcontrol_new], [192 x i8] } { [16 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.225, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8962_put_spk_sw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.227, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.229, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.257, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.259, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.261, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.263, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }], [192 x i8] zeroinitializer }, align 32
@wm8962_intercon = internal constant { [71 x %struct.snd_soc_dapm_route], [916 x i8] } { [71 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.285, ptr @.str.309, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr @.str.311, ptr @.str.273, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr @.str.313, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr @.str.315, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.286, ptr @.str.317, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.286, ptr @.str.319, ptr @.str.274, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.286, ptr @.str.321, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.286, ptr @.str.323, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr @.str.311, ptr @.str.273, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr @.str.313, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr @.str.327, ptr @.str.285, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.319, ptr @.str.274, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.321, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.327, ptr @.str.286, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.1, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.289, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str.289, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str.289, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.334, ptr @.str.290, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.335, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr null, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr @.str.334, ptr @.str.290, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr @.str.335, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr null, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr null, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.315, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.323, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.337, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.339, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.341, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.343, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.315, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.323, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.337, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.339, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.341, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.343, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr null, ptr @.str.300, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr null, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr null, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr null, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.302, ptr @.str.356, ptr @.str.298, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.302, ptr @.str.355, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.303, ptr @.str.356, ptr @.str.299, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.303, ptr @.str.355, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr null, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr null, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr null, ptr @.str.280, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.305, ptr null, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.306, ptr null, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.305, ptr null, ptr @.str.283, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.306, ptr null, ptr @.str.283, ptr null, %struct.snd_soc_dobj zeroinitializer }], [916 x i8] zeroinitializer }, align 32
@wm8962_spk_mono_intercon = internal constant { [13 x %struct.snd_soc_dapm_route], [188 x i8] } { [13 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.315, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.323, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.337, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.339, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.341, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.343, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.366, ptr @.str.356, ptr @.str.365, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.366, ptr @.str.355, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.367, ptr null, ptr @.str.366, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.367, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.367, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.367, ptr null, ptr @.str.284, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.368, ptr null, ptr @.str.367, ptr null, %struct.snd_soc_dobj zeroinitializer }], [188 x i8] zeroinitializer }, align 32
@wm8962_spk_stereo_intercon = internal constant { [26 x %struct.snd_soc_dapm_route], [344 x i8] } { [26 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.315, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.323, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.337, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.339, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.341, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.343, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.315, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.323, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.337, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.339, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.341, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.343, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.379, ptr @.str.356, ptr @.str.377, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.379, ptr @.str.355, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.380, ptr @.str.356, ptr @.str.378, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.380, ptr @.str.355, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.382, ptr null, ptr @.str.379, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.382, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.382, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.382, ptr null, ptr @.str.284, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.381, ptr null, ptr @.str.380, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.381, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.381, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.381, ptr null, ptr @.str.284, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.383, ptr null, ptr @.str.382, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.384, ptr null, ptr @.str.381, ptr null, %struct.snd_soc_dobj zeroinitializer }], [344 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Beep\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Input Mixer Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 3, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MIXINL IN2L Volume\00", [45 x i8] zeroinitializer }, align 32
@mixin_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIXINL PGA Volume\00", [46 x i8] zeroinitializer }, align 32
@mixinpga_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 1, i32 1, i32 8, i32 0, i32 600, i32 2, i32 2, i32 1, i32 8, i32 1300, i32 1300, i32 3, i32 4, i32 1, i32 8, i32 1800, i32 200, i32 5, i32 5, i32 1, i32 8, i32 2400, i32 0, i32 6, i32 7, i32 1, i32 8, i32 2700, i32 300], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MIXINL IN3L Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MIXINR IN2R Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 33, i32 33, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIXINR PGA Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 33, i32 33, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MIXINR IN3R Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 21, i32 22, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@inpga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2325, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 0, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 1, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Capture ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 1, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture HPF Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Capture HPF Mode\00", [47 x i8] zeroinitializer }, align 32
@cap_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 10, i8 10, i32 2, i32 1, ptr @cap_hpf_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture HPF Cutoff\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 6, i32 6, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Capture LHPF Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 264, i32 264, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Capture LHPF Mode\00", [46 x i8] zeroinitializer }, align 32
@cap_lhpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 264, i8 1, i8 1, i32 2, i32 1, ptr @cap_lhpf_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Volume\00", [16 x i8] zeroinitializer }, align 32
@st_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 57, i32 58, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 10, i32 11, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC High Performance Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC L/R Swap Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC L/R Swap Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Monomix Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Monomix Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 268, i32 268, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADC High Performance Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Beep Volume\00", [20 x i8] zeroinitializer }, align 32
@beep_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 66136], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 110, i32 110, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12100, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 2, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 1, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 3, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Headphone Aux Volume\00", [43 x i8] zeroinitializer }, align 32
@hp_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 71, i32 71, i32 3, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Headphone Mixer Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 102, i32 103, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HPMIXL IN4L Volume\00", [45 x i8] zeroinitializer }, align 32
@bypass_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 102, i32 102, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HPMIXL IN4R Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 102, i32 102, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HPMIXL MIXINL Volume\00", [43 x i8] zeroinitializer }, align 32
@inmix_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 102, i32 102, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HPMIXL MIXINR Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 102, i32 102, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HPMIXR IN4L Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 103, i32 103, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HPMIXR IN4R Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 103, i32 103, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HPMIXR MIXINL Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 103, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HPMIXR MIXINR Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 103, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Speaker Boost Volume\00", [43 x i8] zeroinitializer }, align 32
@classd_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 6, i32 1, i32 8, i32 0, i32 150, i32 7, i32 7, i32 1, i32 8, i32 1200, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EQ Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 335, i32 335, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Volume\00", [21 x i8] zeroinitializer }, align 32
@eq_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 336, i32 356, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 336, i32 356, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 336, i32 356, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ4 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 337, i32 357, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ5 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 337, i32 357, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EQL Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 338, i32 18, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EQR Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 358, i32 18, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3D Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 268, i32 268, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"3D Coefficients\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 268, i32 4, i32 1 }, [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DF1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 256, i32 256, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DF1 Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 256, i32 7, i32 1 }, [20 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 276, i32 276, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DRC Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 276, i32 5, i32 1 }, [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VSS Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VSS Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 20992, i32 148, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPF1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPF2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HPF Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 265, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HD Bass Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HD Bass Coefficients\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 16896, i32 30, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 8, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 17, i32 4, i32 384 }, [20 x i8] zeroinitializer }, align 32
@cap_hpf_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.219, ptr @.str.220], [24 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Hi-fi\00", [26 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Application\00", [20 x i8] zeroinitializer }, align 32
@cap_lhpf_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.221, ptr @.str.222], [24 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LPF\00", [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPF\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Speaker Mixer Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Mixer IN4L Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.232 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 107, i32 107, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Mixer IN4R Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 107, i32 107, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Speaker Mixer MIXINL Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Speaker Mixer MIXINR Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Mixer DACL Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Mixer DACR Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 40, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 1, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 41, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTL Mixer IN4L Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 107, i32 107, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTL Mixer IN4R Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 107, i32 107, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SPKOUTL Mixer MIXINL Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SPKOUTL Mixer MIXINR Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTL Mixer DACL Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTL Mixer DACR Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTR Mixer IN4L Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 108, i32 108, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTR Mixer IN4R Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 108, i32 108, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SPKOUTR Mixer MIXINL Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SPKOUTR Mixer MIXINR Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTR Mixer DACL Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKOUTR Mixer DACR Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1L\00", [27 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1R\00", [27 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2L\00", [27 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2R\00", [27 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3L\00", [27 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3R\00", [27 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN4L\00", [27 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN4R\00", [27 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class G\00", [24 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TOCLK\00", [26 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSP2\00", [27 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEMP_HP\00", [24 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEMP_SPK\00", [23 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INPGAL\00", [25 x i8] zeroinitializer }, align 32
@inpgal = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.309, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.310 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.311, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.312 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.313, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.314 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.315, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.316 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INPGAR\00", [25 x i8] zeroinitializer }, align 32
@inpgar = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.317, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.318 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.319, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.321, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIXINL\00", [25 x i8] zeroinitializer }, align 32
@mixinl = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.311, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.313, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.326 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.327, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIXINR\00", [25 x i8] zeroinitializer }, align 32
@mixinr = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.319, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.329 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.321, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.327, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC_ENA\00", [23 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STL\00", [28 x i8] zeroinitializer }, align 32
@stl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @stl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STR\00", [28 x i8] zeroinitializer }, align 32
@str_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @str_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Left Bypass\00", [20 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Right Bypass\00", [19 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPMIXL\00", [25 x i8] zeroinitializer }, align 32
@hpmixl = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.337, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.338 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.340 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.344 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.315, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.345 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPMIXR\00", [25 x i8] zeroinitializer }, align 32
@hpmixr = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.337, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.347 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.348 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.349 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.315, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.351 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.352 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPOUTL PGA\00", [21 x i8] zeroinitializer }, align 32
@hpoutl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.354, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hpoutl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPOUTR PGA\00", [21 x i8] zeroinitializer }, align 32
@hpoutr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.357, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hpoutr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPOUT\00", [26 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTL\00", [25 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTR\00", [25 x i8] zeroinitializer }, align 32
@wm8962_dapm_widgets = internal constant { [38 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1704 x i8] } { [38 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.271, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.272, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.273, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.274, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.275, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.276, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.277, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.278, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.1, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.279, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 82, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.280, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 72, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @cp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.281, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.282, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 768, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @dsp2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.283, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.284, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.285, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @inpgal, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.286, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @inpgar, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.287, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @mixinl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.288, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @mixinr, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.289, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.290, ptr @.str.291, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.292, ptr @.str.291, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.293, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @stl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.294, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @str_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.295, ptr @.str.296, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.297, ptr @.str.296, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.298, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.299, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.300, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @hpmixl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.301, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @hpmixr, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.302, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @out_pga_event, i32 1, ptr @hpoutl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.303, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @out_pga_event, i32 1, ptr @hpoutr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.304, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.305, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.306, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1704 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid event %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN1L Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.310 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN2L Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.312 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN3L Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.314 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN4L Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.316 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN1R Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.318 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN2R Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.320 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN3R Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.322 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN4R Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.326 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PGA Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Sidetone\00", [18 x i8] zeroinitializer }, align 32
@stl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 58, i8 2, i8 2, i32 3, i32 3, ptr @st_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@st_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.333, ptr @.str.334, ptr @.str.335], [20 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Sidetone\00", [17 x i8] zeroinitializer }, align 32
@str_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 57, i8 2, i8 2, i32 3, i32 3, ptr @st_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACL Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.338 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACR Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.340 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXINL Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.342 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXINR Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.344 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.347 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.348 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.350 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.352 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid shift %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPOUTL Mux\00", [21 x i8] zeroinitializer }, align 32
@hpoutl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 100, i8 7, i8 7, i32 2, i32 1, ptr @outmux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@outmux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.355, ptr @.str.356], [24 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mixer\00", [26 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPOUTR Mux\00", [21 x i8] zeroinitializer }, align 32
@hpoutr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 101, i8 7, i8 7, i32 2, i32 1, ptr @outmux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.358, ptr @.str.359, ptr @.str.10, i32 1896, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read DCS status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hp_event\00", [23 x i8] zeroinitializer }, align 32
@hp_event._entry_ptr = internal global ptr @hp_event._entry, section ".printk_index", align 4
@hp_event.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.359, ptr @.str.10, ptr @.str.360, i8 1, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.360 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DCS status: %x\0A\00", [16 x i8] zeroinitializer }, align 32
@hp_event._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.359, ptr @.str.10, i32 1903, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC servo timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@hp_event._entry_ptr.363 = internal global ptr @hp_event._entry.361, section ".printk_index", align 4
@hp_event.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.359, ptr @.str.10, ptr @.str.364, i8 1, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.364 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC servo complete after %dms\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Speaker Mixer\00", [18 x i8] zeroinitializer }, align 32
@spkmixl = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.337, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.370 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.372 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.373 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.315, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.374 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.375 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Speaker PGA\00", [20 x i8] zeroinitializer }, align 32
@spkoutl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.376, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @spkoutl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Output\00", [17 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKOUT\00", [25 x i8] zeroinitializer }, align 32
@wm8962_dapm_spk_mono_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.365, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @spkmixl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.366, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @out_pga_event, i32 1, ptr @spkoutl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.367, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.368, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.compoundliteral.370 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 105, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 105, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.372 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 105, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 105, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.374 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 105, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 105, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPKOUTL Mux\00", [20 x i8] zeroinitializer }, align 32
@spkoutl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 105, i8 7, i8 7, i32 2, i32 1, ptr @outmux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPKOUTL Mixer\00", [18 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPKOUTR Mixer\00", [18 x i8] zeroinitializer }, align 32
@spkmixr = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.337, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.386 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.387 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.388 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.389 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.315, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.390 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.391 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPKOUTL PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPKOUTR PGA\00", [20 x i8] zeroinitializer }, align 32
@spkoutr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.392, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @spkoutr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPKOUTR Output\00", [17 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPKOUTL Output\00", [17 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTL\00", [24 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTR\00", [24 x i8] zeroinitializer }, align 32
@wm8962_dapm_spk_stereo_widgets = internal constant { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [352 x i8] } { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.377, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @spkmixl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.378, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @spkmixr, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.379, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @out_pga_event, i32 1, ptr @spkoutl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.380, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @out_pga_event, i32 1, ptr @spkoutr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.381, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.382, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.383, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.384, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@.compoundliteral.386 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 106, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 106, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.388 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 106, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 106, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 106, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 106, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPKOUTR Mux\00", [20 x i8] zeroinitializer }, align 32
@spkoutr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 106, i8 7, i8 7, i32 2, i32 1, ptr @outmux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@wm8962_init_beep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.394, ptr @.str.10, i32 3247, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate beep device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8962_init_beep\00", [47 x i8] zeroinitializer }, align 32
@wm8962_init_beep._entry_ptr = internal global ptr @wm8962_init_beep._entry, section ".printk_index", align 4
@wm8962_init_beep.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.395 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&wm8962->beep_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WM8962 Beep Generator\00", [42 x i8] zeroinitializer }, align 32
@wm8962_init_beep._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.398, ptr @.str.394, ptr @.str.10, i32 3267, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register beep device\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8962_init_beep._entry_ptr.399 = internal global ptr @wm8962_init_beep._entry.397, section ".printk_index", align 4
@dev_attr_beep = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.408, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @beep_store }, [36 x i8] zeroinitializer }, align 32
@wm8962_init_beep._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.394, ptr @.str.10, i32 3273, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create keyclick file: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8962_init_beep._entry_ptr.402 = internal global ptr @wm8962_init_beep._entry.400, section ".printk_index", align 4
@beep_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 500, i32 1000, i32 2000, i32 4000], [16 x i8] zeroinitializer }, align 32
@wm8962_beep_work.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.403, ptr @.str.10, ptr @.str.404, i8 3, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.403 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8962_beep_work\00", [47 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Set beep rate %dHz for requested %dHz\0A\00", [57 x i8] zeroinitializer }, align 32
@wm8962_beep_work.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.403, ptr @.str.10, ptr @.str.405, i8 3, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.405 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Disabling beep\0A\00", [16 x i8] zeroinitializer }, align 32
@wm8962_beep_event.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.406, ptr @.str.10, ptr @.str.407, i8 3, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.406 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8962_beep_event\00", [46 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Beep event %x %x\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.408 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"beep\00", [27 x i8] zeroinitializer }, align 32
@wm8962_template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_gpio_request, ptr null, ptr null, ptr null, ptr @wm8962_gpio_direction_out, ptr null, ptr null, ptr @wm8962_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@wm8962_init_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8962_init_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8962_init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.410, ptr @.str.10, i32 3390, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add GPIOs: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8962_init_gpio\00", [47 x i8] zeroinitializer }, align 32
@wm8962_init_gpio._entry_ptr = internal global ptr @wm8962_init_gpio._entry, section ".printk_index", align 4
@wm8962_set_fll.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.411, ptr @.str.10, ptr @.str.412, i8 2, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.411 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8962_set_fll\00", [17 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@wm8962_set_fll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.413, ptr @.str.411, ptr @.str.10, i32 2861, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown FLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8962_set_fll._entry_ptr = internal global ptr @wm8962_set_fll._entry, section ".printk_index", align 4
@wm8962_set_fll._entry.414 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.415, ptr @.str.411, ptr @.str.10, i32 2889, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8962_set_fll._entry_ptr.416 = internal global ptr @wm8962_set_fll._entry.414, section ".printk_index", align 4
@wm8962_set_fll.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.411, ptr @.str.10, ptr @.str.417, i8 2, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.417 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FLL configured for %dHz->%dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8962_set_fll._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.419, ptr @.str.411, ptr @.str.10, i32 2911, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FLL lock timed out\00", [45 x i8] zeroinitializer }, align 32
@wm8962_set_fll._entry_ptr.420 = internal global ptr @wm8962_set_fll._entry.418, section ".printk_index", align 4
@fll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.421, ptr @.str.422, ptr @.str.10, i32 2753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Can't scale %dMHz input down to <=13.5MHz\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fll_factors\00", [20 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr = internal global ptr @fll_factors._entry, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.422, ptr @.str.10, ptr @.str.423, i8 2, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.423 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FLL Fref=%u Fout=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@fll_factors._entry.424 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.422, ptr @.str.10, i32 2769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.426 = internal global ptr @fll_factors._entry.424, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.422, ptr @.str.10, ptr @.str.427, i8 2, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.427 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FLL Fvco=%dHz\0A\00", [17 x i8] zeroinitializer }, align 32
@fll_fratios = internal constant { [5 x %struct.anon.110], [48 x i8] } { [5 x %struct.anon.110] [%struct.anon.110 { i32 0, i32 64000, i16 4, i32 16 }, %struct.anon.110 { i32 64000, i32 128000, i16 3, i32 8 }, %struct.anon.110 { i32 128000, i32 256000, i16 2, i32 4 }, %struct.anon.110 { i32 256000, i32 1000000, i16 1, i32 2 }, %struct.anon.110 { i32 1000000, i32 13500000, i16 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@fll_factors._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.429, ptr @.str.422, ptr @.str.10, i32 2787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_FRATIO for Fref=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.430 = internal global ptr @fll_factors._entry.428, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.422, ptr @.str.10, ptr @.str.431, i8 2, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.431 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FLL N=%x THETA=%x LAMBDA=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@fll_factors.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.422, ptr @.str.10, ptr @.str.432, i8 2, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.432 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FLL_FRATIO=%x FLL_OUTDIV=%x FLL_REFCLK_DIV=%x\0A\00", [49 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.433, ptr @.str.10, ptr @.str.434, i8 2, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.433 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8962_configure_bclk\00", [42 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No SYSCLK configured\0A\00", [42 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.433, ptr @.str.10, ptr @.str.435, i8 2, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.435 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No audio clocks configured\0A\00", [36 x i8] zeroinitializer }, align 32
@sysclk_rates = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 64, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1408, i32 1536, i32 3072, i32 6144], [48 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.436, ptr @.str.433, ptr @.str.10, i32 2431, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported sysclk ratio %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk._entry_ptr = internal global ptr @wm8962_configure_bclk._entry, section ".printk_index", align 4
@wm8962_configure_bclk.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.433, ptr @.str.10, ptr @.str.437, i8 2, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.437 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Selected sysclk ratio %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk._entry.438 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.439, ptr @.str.433, ptr @.str.10, i32 2455, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read DSPCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk._entry_ptr.440 = internal global ptr @wm8962_configure_bclk._entry.438, section ".printk_index", align 4
@wm8962_configure_bclk._entry.441 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.442, ptr @.str.433, ptr @.str.10, i32 2471, ptr @.str.64, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown DSPCLK divisor read back\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk._entry_ptr.443 = internal global ptr @wm8962_configure_bclk._entry.441, section ".printk_index", align 4
@wm8962_configure_bclk.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.433, ptr @.str.10, ptr @.str.444, i8 2, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.444 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DSPCLK is %dHz, BCLK %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bclk_divs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1, i32 -1, i32 2, i32 3, i32 4, i32 -1, i32 6, i32 8, i32 -1, i32 12, i32 16, i32 24, i32 -1, i32 32, i32 32, i32 32], [32 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.433, ptr @.str.10, ptr @.str.445, i8 2, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.445 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Selected BCLK_DIV %d for %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8962_configure_bclk.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.433, ptr @.str.10, ptr @.str.446, i8 2, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.446 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Selected LRCLK divisor %d for %dHz\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8962_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8962_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @wm8962_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8962_mute, ptr null, ptr null, ptr @wm8962_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@sr_vals = internal constant { [11 x %struct.anon.111], [40 x i8] } { [11 x %struct.anon.111] [%struct.anon.111 { i32 48000, i32 0 }, %struct.anon.111 { i32 44100, i32 0 }, %struct.anon.111 { i32 32000, i32 1 }, %struct.anon.111 { i32 22050, i32 2 }, %struct.anon.111 { i32 24000, i32 2 }, %struct.anon.111 { i32 16000, i32 3 }, %struct.anon.111 { i32 11025, i32 4 }, %struct.anon.111 { i32 12000, i32 4 }, %struct.anon.111 { i32 8000, i32 5 }, %struct.anon.111 { i32 88200, i32 6 }, %struct.anon.111 { i32 96000, i32 6 }], [40 x i8] zeroinitializer }, align 32
@wm8962_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.447, ptr @.str.448, ptr @.str.10, i32 2578, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported rate %dHz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8962_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8962_hw_params._entry_ptr = internal global ptr @wm8962_hw_params._entry, section ".printk_index", align 4
@wm8962_hw_params.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.448, ptr @.str.10, ptr @.str.449, i8 2, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.449 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hw_params set BCLK %dHz LRCLK %dHz\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8962_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.450, ptr @.str.451, ptr @.str.10, i32 3786, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable MCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8962_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@wm8962_runtime_resume._entry_ptr = internal global ptr @wm8962_runtime_resume._entry, section ".printk_index", align 4
@wm8962_runtime_resume._entry.452 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.451, ptr @.str.10, i32 3793, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@wm8962_runtime_resume._entry_ptr.453 = internal global ptr @wm8962_runtime_resume._entry.452, section ".printk_index", align 4
@switch.table.out_pga_event = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 41, i32 40, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.wm8962_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.454 = internal global [628 x i64] [i64 626, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 37, i64 38, i64 40, i64 41, i64 47, i64 48, i64 49, i64 51, i64 56, i64 57, i64 58, i64 60, i64 61, i64 64, i64 66, i64 68, i64 69, i64 71, i64 72, i64 82, i64 87, i64 90, i64 93, i64 94, i64 99, i64 100, i64 101, i64 102, i64 103, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 115, i64 116, i64 119, i64 124, i64 125, i64 126, i64 127, i64 129, i64 131, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 155, i64 156, i64 157, i64 159, i64 160, i64 161, i64 162, i64 252, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 264, i64 265, i64 268, i64 269, i64 270, i64 271, i64 276, i64 277, i64 278, i64 279, i64 280, i64 285, i64 335, i64 336, i64 337, i64 338, i64 339, i64 340, i64 341, i64 342, i64 343, i64 344, i64 345, i64 346, i64 347, i64 348, i64 349, i64 350, i64 351, i64 352, i64 353, i64 354, i64 355, i64 356, i64 357, i64 358, i64 359, i64 360, i64 361, i64 362, i64 363, i64 364, i64 365, i64 366, i64 367, i64 368, i64 369, i64 370, i64 371, i64 372, i64 373, i64 374, i64 375, i64 513, i64 514, i64 516, i64 517, i64 560, i64 561, i64 568, i64 569, i64 576, i64 584, i64 586, i64 768, i64 1037, i64 8192, i64 9216, i64 9217, i64 9218, i64 12288, i64 12289, i64 13312, i64 13313, i64 14336, i64 14337, i64 15360, i64 16384, i64 16385, i64 16386, i64 16387, i64 16388, i64 16389, i64 16896, i64 16897, i64 16898, i64 16899, i64 16900, i64 16901, i64 16902, i64 16903, i64 16904, i64 16905, i64 16906, i64 16907, i64 16908, i64 16909, i64 16910, i64 16911, i64 16912, i64 16913, i64 16914, i64 16915, i64 16916, i64 16917, i64 16918, i64 16919, i64 16920, i64 16921, i64 16922, i64 16923, i64 16924, i64 16925, i64 17408, i64 17409, i64 17920, i64 17921, i64 17922, i64 17923, i64 17924, i64 17925, i64 17926, i64 17927, i64 17928, i64 17929, i64 17930, i64 17931, i64 17932, i64 17933, i64 17934, i64 17935, i64 17936, i64 17937, i64 17938, i64 17939, i64 17940, i64 17941, i64 17942, i64 17943, i64 17944, i64 17945, i64 17946, i64 17947, i64 17948, i64 17949, i64 17950, i64 17951, i64 17952, i64 17953, i64 17954, i64 17955, i64 17956, i64 17957, i64 17958, i64 17959, i64 17960, i64 17961, i64 17962, i64 17963, i64 17964, i64 17965, i64 17966, i64 17967, i64 17968, i64 17969, i64 17970, i64 17971, i64 17972, i64 17973, i64 17974, i64 17975, i64 17976, i64 17977, i64 17978, i64 17979, i64 17980, i64 17981, i64 17982, i64 17983, i64 18432, i64 18433, i64 18434, i64 18435, i64 18944, i64 18945, i64 18946, i64 18947, i64 18948, i64 18949, i64 18950, i64 18951, i64 18952, i64 18953, i64 18954, i64 18955, i64 18956, i64 18957, i64 18958, i64 18959, i64 18960, i64 18961, i64 18962, i64 18963, i64 18964, i64 18965, i64 18966, i64 18967, i64 18968, i64 18969, i64 18970, i64 18971, i64 18972, i64 18973, i64 18974, i64 18975, i64 18976, i64 18977, i64 18978, i64 18979, i64 18980, i64 18981, i64 18982, i64 18983, i64 18984, i64 18985, i64 18986, i64 18987, i64 18988, i64 18989, i64 18990, i64 18991, i64 18992, i64 18993, i64 18994, i64 18995, i64 18996, i64 18997, i64 18998, i64 18999, i64 19000, i64 19001, i64 19002, i64 19003, i64 19004, i64 19005, i64 19006, i64 19007, i64 19456, i64 19457, i64 19458, i64 19459, i64 19460, i64 19461, i64 19462, i64 19463, i64 19464, i64 19465, i64 19466, i64 19467, i64 19468, i64 19469, i64 19470, i64 19471, i64 19472, i64 19473, i64 19474, i64 19475, i64 19476, i64 19477, i64 19478, i64 19479, i64 19480, i64 19481, i64 19482, i64 19483, i64 19484, i64 19485, i64 19486, i64 19487, i64 19488, i64 19489, i64 19490, i64 19491, i64 19492, i64 19493, i64 19494, i64 19495, i64 19496, i64 19497, i64 19498, i64 19499, i64 19500, i64 19501, i64 19502, i64 19503, i64 19504, i64 19505, i64 19506, i64 19507, i64 19508, i64 19509, i64 19510, i64 19511, i64 19512, i64 19513, i64 19514, i64 19515, i64 19516, i64 19517, i64 19518, i64 19519, i64 19968, i64 19969, i64 19970, i64 19971, i64 20480, i64 20481, i64 20482, i64 20483, i64 20484, i64 20485, i64 20486, i64 20487, i64 20488, i64 20489, i64 20490, i64 20491, i64 20492, i64 20493, i64 20494, i64 20495, i64 20496, i64 20497, i64 20498, i64 20499, i64 20500, i64 20501, i64 20502, i64 20503, i64 20504, i64 20505, i64 20506, i64 20507, i64 20508, i64 20509, i64 20510, i64 20511, i64 20512, i64 20513, i64 20514, i64 20515, i64 20516, i64 20517, i64 20518, i64 20519, i64 20520, i64 20521, i64 20522, i64 20523, i64 20524, i64 20525, i64 20526, i64 20527, i64 20528, i64 20529, i64 20530, i64 20531, i64 20532, i64 20533, i64 20534, i64 20535, i64 20536, i64 20537, i64 20538, i64 20539, i64 20540, i64 20541, i64 20542, i64 20543, i64 20992, i64 20993, i64 20994, i64 20995, i64 20996, i64 20997, i64 20998, i64 20999, i64 21000, i64 21001, i64 21002, i64 21003, i64 21004, i64 21005, i64 21006, i64 21007, i64 21008, i64 21009, i64 21010, i64 21011, i64 21012, i64 21013, i64 21014, i64 21015, i64 21016, i64 21017, i64 21018, i64 21019, i64 21020, i64 21021, i64 21022, i64 21023, i64 21024, i64 21025, i64 21026, i64 21027, i64 21028, i64 21029, i64 21030, i64 21031, i64 21032, i64 21033, i64 21034, i64 21035, i64 21036, i64 21037, i64 21038, i64 21039, i64 21040, i64 21041, i64 21042, i64 21043, i64 21044, i64 21045, i64 21046, i64 21047, i64 21048, i64 21049, i64 21050, i64 21051, i64 21052, i64 21053, i64 21054, i64 21055, i64 21056, i64 21057, i64 21058, i64 21059, i64 21060, i64 21061, i64 21062, i64 21063, i64 21064, i64 21065, i64 21066, i64 21067, i64 21068, i64 21069, i64 21070, i64 21071, i64 21072, i64 21073, i64 21074, i64 21075, i64 21076, i64 21077, i64 21078, i64 21079, i64 21080, i64 21081, i64 21082, i64 21083, i64 21084, i64 21085, i64 21086, i64 21087, i64 21088, i64 21089, i64 21090, i64 21091, i64 21092, i64 21093, i64 21094, i64 21095, i64 21096, i64 21097, i64 21098, i64 21099, i64 21100, i64 21101, i64 21102, i64 21103, i64 21104, i64 21105, i64 21106, i64 21107, i64 21108, i64 21109, i64 21110, i64 21111, i64 21112, i64 21113, i64 21114, i64 21115, i64 21116, i64 21117, i64 21118, i64 21119, i64 21120, i64 21121, i64 21122, i64 21123, i64 21124, i64 21125, i64 21126, i64 21127, i64 21128, i64 21129, i64 21130, i64 21131, i64 21132, i64 21133, i64 21134, i64 21135, i64 21136, i64 21137, i64 21138, i64 21139]
@__sancov_gen_cov_switch_values.455 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 15, i64 47, i64 48, i64 66, i64 560, i64 561, i64 1037]
@__sancov_gen_cov_switch_values.456 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.457 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.458 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.459 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.460 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.461 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.462 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.463 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.464 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.465 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.466 = internal global [14 x i64] [i64 12, i64 32, i64 64, i64 128, i64 192, i64 256, i64 384, i64 512, i64 768, i64 1024, i64 1408, i64 1536, i64 3072, i64 6144]
@__sancov_gen_cov_switch_values.467 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.468 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.469 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.470 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.471 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.472 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.473 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3143, i32 48 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3144, i32 48 }
@___asan_gen_.480 = private unnamed_addr constant [18 x i8] c"wm8962_i2c_driver\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3876, i32 26 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3878, i32 11 }
@___asan_gen_.486 = private unnamed_addr constant [16 x i8] c"wm8962_of_match\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3870, i32 34 }
@___asan_gen_.489 = private unnamed_addr constant [10 x i8] c"wm8962_pm\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3860, i32 32 }
@___asan_gen_.492 = private unnamed_addr constant [14 x i8] c"wm8962_i2c_id\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3864, i32 35 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3557, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3561, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3580, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3587, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [14 x i8] c"wm8962_regmap\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3504, i32 35 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3591, i32 19 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3594, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3607, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3611, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3619, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3624, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3633, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant [18 x i8] c"wm8962_dc_measure\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3498, i32 34 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3713, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3735, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8962\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3487, i32 46 }
@___asan_gen_.603 = private unnamed_addr constant [11 x i8] c"wm8962_dai\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2962, i32 34 }
@___asan_gen_.610 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 87, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3523, i32 32 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3526, i32 31 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3529, i32 37 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 40, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 41, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 42, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 43, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 44, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 45, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 46, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 47, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [11 x i8] c"wm8962_reg\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 112, i32 33 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3023, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3031, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3039, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3053, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3056, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3061, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3064, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3069, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3075, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3077, i32 4 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3079, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3081, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3085, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant [31 x i8] c"../include/trace/events/asoc.h\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 211, i32 1 }
@___asan_gen_.739 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 108, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3434, i32 4 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3465, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3466, i32 29 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3469, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant [20 x i8] c"wm8962_snd_controls\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1666, i32 38 }
@___asan_gen_.765 = private unnamed_addr constant [25 x i8] c"wm8962_spk_mono_controls\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1784, i32 38 }
@___asan_gen_.768 = private unnamed_addr constant [27 x i8] c"wm8962_spk_stereo_controls\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1805, i32 38 }
@___asan_gen_.771 = private unnamed_addr constant [16 x i8] c"wm8962_intercon\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2206, i32 40 }
@___asan_gen_.774 = private unnamed_addr constant [25 x i8] c"wm8962_spk_mono_intercon\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2300, i32 40 }
@___asan_gen_.777 = private unnamed_addr constant [27 x i8] c"wm8962_spk_stereo_intercon\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2319, i32 40 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2389, i32 33 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1667, i32 1 }
@___asan_gen_.786 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1669, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant [10 x i8] c"mixin_tlv\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1451, i32 14 }
@___asan_gen_.793 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1671, i32 1 }
@___asan_gen_.797 = private unnamed_addr constant [13 x i8] c"mixinpga_tlv\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1452, i32 14 }
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1673, i32 1 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1676, i32 1 }
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1678, i32 1 }
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1680, i32 1 }
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1683, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1460, i32 14 }
@___asan_gen_.823 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1685, i32 1 }
@___asan_gen_.827 = private unnamed_addr constant [10 x i8] c"inpga_tlv\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1450, i32 14 }
@___asan_gen_.830 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1687, i32 1 }
@___asan_gen_.834 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1689, i32 1 }
@___asan_gen_.838 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1691, i32 1 }
@___asan_gen_.842 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1692, i32 1 }
@___asan_gen_.846 = private unnamed_addr constant [13 x i8] c"cap_hpf_mode\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1655, i32 8 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1693, i32 1 }
@___asan_gen_.852 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1694, i32 1 }
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1695, i32 1 }
@___asan_gen_.860 = private unnamed_addr constant [14 x i8] c"cap_lhpf_mode\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1663, i32 8 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1697, i32 1 }
@___asan_gen_.866 = private unnamed_addr constant [7 x i8] c"st_tlv\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1461, i32 14 }
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1700, i32 1 }
@___asan_gen_.873 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1702, i32 1 }
@___asan_gen_.877 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1703, i32 1 }
@___asan_gen_.881 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1704, i32 1 }
@___asan_gen_.885 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1705, i32 1 }
@___asan_gen_.889 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1706, i32 1 }
@___asan_gen_.893 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1708, i32 1 }
@___asan_gen_.897 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1711, i32 1 }
@___asan_gen_.901 = private unnamed_addr constant [9 x i8] c"beep_tlv\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1459, i32 14 }
@___asan_gen_.904 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1713, i32 1 }
@___asan_gen_.908 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1464, i32 14 }
@___asan_gen_.911 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1715, i32 1 }
@___asan_gen_.915 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1717, i32 1 }
@___asan_gen_.919 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1719, i32 1 }
@___asan_gen_.923 = private unnamed_addr constant [7 x i8] c"hp_tlv\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1465, i32 14 }
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1722, i32 1 }
@___asan_gen_.930 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1725, i32 1 }
@___asan_gen_.934 = private unnamed_addr constant [11 x i8] c"bypass_tlv\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1463, i32 14 }
@___asan_gen_.937 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1727, i32 1 }
@___asan_gen_.941 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1729, i32 1 }
@___asan_gen_.945 = private unnamed_addr constant [10 x i8] c"inmix_tlv\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1462, i32 14 }
@___asan_gen_.948 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1731, i32 1 }
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1734, i32 1 }
@___asan_gen_.956 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1736, i32 1 }
@___asan_gen_.960 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1738, i32 1 }
@___asan_gen_.964 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1740, i32 1 }
@___asan_gen_.968 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1743, i32 1 }
@___asan_gen_.972 = private unnamed_addr constant [11 x i8] c"classd_tlv\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1466, i32 14 }
@___asan_gen_.975 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1746, i32 1 }
@___asan_gen_.979 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1747, i32 1 }
@___asan_gen_.983 = private unnamed_addr constant [7 x i8] c"eq_tlv\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1470, i32 14 }
@___asan_gen_.986 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1749, i32 1 }
@___asan_gen_.990 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1751, i32 1 }
@___asan_gen_.994 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1753, i32 1 }
@___asan_gen_.998 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1755, i32 1 }
@___asan_gen_.1002 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1757, i32 1 }
@___asan_gen_.1006 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1758, i32 1 }
@___asan_gen_.1010 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1761, i32 1 }
@___asan_gen_.1014 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1762, i32 1 }
@___asan_gen_.1018 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1764, i32 1 }
@___asan_gen_.1022 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1765, i32 1 }
@___asan_gen_.1026 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1767, i32 1 }
@___asan_gen_.1030 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1768, i32 1 }
@___asan_gen_.1034 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1770, i32 1 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1771, i32 1 }
@___asan_gen_.1041 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1772, i32 1 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1773, i32 1 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1774, i32 1 }
@___asan_gen_.1051 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1775, i32 1 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1776, i32 1 }
@___asan_gen_.1058 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1778, i32 1 }
@___asan_gen_.1062 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1780, i32 1 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant [18 x i8] c"cap_hpf_mode_text\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1651, i32 20 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1652, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1652, i32 11 }
@___asan_gen_.1076 = private unnamed_addr constant [19 x i8] c"cap_lhpf_mode_text\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1659, i32 20 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1660, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1660, i32 9 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1785, i32 1 }
@___asan_gen_.1088 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1786, i32 1 }
@___asan_gen_.1092 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1788, i32 1 }
@___asan_gen_.1096 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1790, i32 1 }
@___asan_gen_.1100 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1791, i32 1 }
@___asan_gen_.1104 = private unnamed_addr constant [21 x i8] c".compoundliteral.232\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1793, i32 1 }
@___asan_gen_.1108 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1795, i32 1 }
@___asan_gen_.1112 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1797, i32 1 }
@___asan_gen_.1116 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1799, i32 1 }
@___asan_gen_.1120 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1801, i32 1 }
@___asan_gen_.1124 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1126 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1816, i32 1 }
@___asan_gen_.1132 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1818, i32 1 }
@___asan_gen_.1136 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1820, i32 1 }
@___asan_gen_.1140 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1822, i32 1 }
@___asan_gen_.1144 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1824, i32 1 }
@___asan_gen_.1148 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1826, i32 1 }
@___asan_gen_.1152 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1829, i32 1 }
@___asan_gen_.1156 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1831, i32 1 }
@___asan_gen_.1160 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1833, i32 1 }
@___asan_gen_.1164 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1835, i32 1 }
@___asan_gen_.1168 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1837, i32 1 }
@___asan_gen_.1172 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1839, i32 1 }
@___asan_gen_.1176 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2115, i32 1 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2116, i32 1 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2117, i32 1 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2118, i32 1 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2119, i32 1 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2120, i32 1 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2121, i32 1 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2122, i32 1 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2128, i32 1 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2130, i32 1 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2132, i32 1 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2133, i32 1 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2136, i32 1 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2137, i32 1 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2139, i32 1 }
@___asan_gen_.1222 = private unnamed_addr constant [7 x i8] c"inpgal\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2052, i32 38 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2141, i32 1 }
@___asan_gen_.1228 = private unnamed_addr constant [7 x i8] c"inpgar\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2059, i32 38 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2143, i32 1 }
@___asan_gen_.1234 = private unnamed_addr constant [7 x i8] c"mixinl\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2066, i32 38 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2145, i32 1 }
@___asan_gen_.1240 = private unnamed_addr constant [7 x i8] c"mixinr\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2072, i32 38 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2148, i32 1 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2150, i32 1 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2151, i32 1 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2153, i32 1 }
@___asan_gen_.1258 = private unnamed_addr constant [8 x i8] c"stl_mux\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2023, i32 38 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2154, i32 1 }
@___asan_gen_.1264 = private unnamed_addr constant [8 x i8] c"str_mux\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2017, i32 38 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2156, i32 1 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2157, i32 1 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2159, i32 1 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2160, i32 1 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2162, i32 1 }
@___asan_gen_.1285 = private unnamed_addr constant [7 x i8] c"hpmixl\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2078, i32 38 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2164, i32 1 }
@___asan_gen_.1291 = private unnamed_addr constant [7 x i8] c"hpmixr\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2087, i32 38 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2167, i32 1 }
@___asan_gen_.1297 = private unnamed_addr constant [11 x i8] c"hpoutl_mux\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2049, i32 38 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2169, i32 1 }
@___asan_gen_.1303 = private unnamed_addr constant [11 x i8] c"hpoutr_mux\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2043, i32 38 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2172, i32 1 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2175, i32 1 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2176, i32 1 }
@___asan_gen_.1315 = private unnamed_addr constant [20 x i8] c"wm8962_dapm_widgets\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2114, i32 41 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1852, i32 3 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2053, i32 1 }
@___asan_gen_.1324 = private unnamed_addr constant [21 x i8] c".compoundliteral.310\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2054, i32 1 }
@___asan_gen_.1328 = private unnamed_addr constant [21 x i8] c".compoundliteral.312\00", align 1
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2055, i32 1 }
@___asan_gen_.1332 = private unnamed_addr constant [21 x i8] c".compoundliteral.314\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2056, i32 1 }
@___asan_gen_.1336 = private unnamed_addr constant [21 x i8] c".compoundliteral.316\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2060, i32 1 }
@___asan_gen_.1340 = private unnamed_addr constant [21 x i8] c".compoundliteral.318\00", align 1
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2061, i32 1 }
@___asan_gen_.1344 = private unnamed_addr constant [21 x i8] c".compoundliteral.320\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2062, i32 1 }
@___asan_gen_.1348 = private unnamed_addr constant [21 x i8] c".compoundliteral.322\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2063, i32 1 }
@___asan_gen_.1352 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant [21 x i8] c".compoundliteral.326\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2069, i32 1 }
@___asan_gen_.1358 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2024, i32 2 }
@___asan_gen_.1365 = private unnamed_addr constant [9 x i8] c"stl_enum\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2020, i32 8 }
@___asan_gen_.1368 = private unnamed_addr constant [8 x i8] c"st_text\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2012, i32 20 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2012, i32 34 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2012, i32 42 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2012, i32 50 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2018, i32 2 }
@___asan_gen_.1383 = private unnamed_addr constant [9 x i8] c"str_enum\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2014, i32 8 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2079, i32 1 }
@___asan_gen_.1389 = private unnamed_addr constant [21 x i8] c".compoundliteral.338\00", align 1
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2080, i32 1 }
@___asan_gen_.1393 = private unnamed_addr constant [21 x i8] c".compoundliteral.340\00", align 1
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2081, i32 1 }
@___asan_gen_.1397 = private unnamed_addr constant [21 x i8] c".compoundliteral.342\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2082, i32 1 }
@___asan_gen_.1401 = private unnamed_addr constant [21 x i8] c".compoundliteral.344\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1403 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant [21 x i8] c".compoundliteral.347\00", align 1
@___asan_gen_.1405 = private unnamed_addr constant [21 x i8] c".compoundliteral.348\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant [21 x i8] c".compoundliteral.350\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant [21 x i8] c".compoundliteral.352\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1973, i32 3 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2050, i32 2 }
@___asan_gen_.1416 = private unnamed_addr constant [12 x i8] c"hpoutl_enum\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2046, i32 8 }
@___asan_gen_.1419 = private unnamed_addr constant [12 x i8] c"outmux_text\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2026, i32 20 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2026, i32 38 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2026, i32 45 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2044, i32 2 }
@___asan_gen_.1431 = private unnamed_addr constant [12 x i8] c"hpoutr_enum\00", align 1
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2040, i32 8 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1894, i32 5 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1899, i32 4 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1903, i32 4 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 1905, i32 4 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2180, i32 1 }
@___asan_gen_.1458 = private unnamed_addr constant [8 x i8] c"spkmixl\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2096, i32 38 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2182, i32 1 }
@___asan_gen_.1464 = private unnamed_addr constant [12 x i8] c"spkoutl_mux\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2037, i32 38 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2184, i32 1 }
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2185, i32 1 }
@___asan_gen_.1473 = private unnamed_addr constant [29 x i8] c"wm8962_dapm_spk_mono_widgets\00", align 1
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2179, i32 41 }
@___asan_gen_.1476 = private unnamed_addr constant [21 x i8] c".compoundliteral.370\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant [21 x i8] c".compoundliteral.372\00", align 1
@___asan_gen_.1479 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1480 = private unnamed_addr constant [21 x i8] c".compoundliteral.374\00", align 1
@___asan_gen_.1481 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2038, i32 2 }
@___asan_gen_.1485 = private unnamed_addr constant [13 x i8] c"spkoutl_enum\00", align 1
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2034, i32 8 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2189, i32 1 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2191, i32 1 }
@___asan_gen_.1494 = private unnamed_addr constant [8 x i8] c"spkmixr\00", align 1
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2105, i32 38 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2194, i32 1 }
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2196, i32 1 }
@___asan_gen_.1503 = private unnamed_addr constant [12 x i8] c"spkoutr_mux\00", align 1
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2031, i32 38 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2199, i32 1 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2200, i32 1 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2202, i32 1 }
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2203, i32 1 }
@___asan_gen_.1518 = private unnamed_addr constant [31 x i8] c"wm8962_dapm_spk_stereo_widgets\00", align 1
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2188, i32 41 }
@___asan_gen_.1521 = private unnamed_addr constant [21 x i8] c".compoundliteral.386\00", align 1
@___asan_gen_.1522 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1523 = private unnamed_addr constant [21 x i8] c".compoundliteral.388\00", align 1
@___asan_gen_.1524 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1526 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2032, i32 2 }
@___asan_gen_.1530 = private unnamed_addr constant [13 x i8] c"spkoutr_enum\00", align 1
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2028, i32 8 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3247, i32 3 }
@___asan_gen_.1542 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3251, i32 2 }
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3254, i32 23 }
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3267, i32 3 }
@___asan_gen_.1557 = private unnamed_addr constant [14 x i8] c"dev_attr_beep\00", align 1
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3272, i32 3 }
@___asan_gen_.1566 = private unnamed_addr constant [11 x i8] c"beep_rates\00", align 1
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3156, i32 12 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3177, i32 3 }
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3184, i32 3 }
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3203, i32 2 }
@___asan_gen_.1586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3238, i32 8 }
@___asan_gen_.1587 = private unnamed_addr constant [21 x i8] c"wm8962_template_chip\00", align 1
@___asan_gen_.1589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3364, i32 31 }
@___asan_gen_.1590 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3388, i32 8 }
@___asan_gen_.1604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3390, i32 3 }
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2828, i32 3 }
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2861, i32 3 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2889, i32 3 }
@___asan_gen_.1625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2897, i32 2 }
@___asan_gen_.1631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2911, i32 3 }
@___asan_gen_.1640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2752, i32 4 }
@___asan_gen_.1643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2758, i32 2 }
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2768, i32 4 }
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2776, i32 2 }
@___asan_gen_.1653 = private unnamed_addr constant [12 x i8] c"fll_fratios\00", align 1
@___asan_gen_.1655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2728, i32 3 }
@___asan_gen_.1661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2787, i32 3 }
@___asan_gen_.1664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2804, i32 2 }
@___asan_gen_.1667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2806, i32 2 }
@___asan_gen_.1673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2413, i32 3 }
@___asan_gen_.1676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2418, i32 3 }
@___asan_gen_.1677 = private unnamed_addr constant [13 x i8] c"sysclk_rates\00", align 1
@___asan_gen_.1679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2399, i32 18 }
@___asan_gen_.1685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2430, i32 3 }
@___asan_gen_.1688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2435, i32 2 }
@___asan_gen_.1694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2455, i32 3 }
@___asan_gen_.1700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2471, i32 3 }
@___asan_gen_.1703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2475, i32 2 }
@___asan_gen_.1704 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.1706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2395, i32 18 }
@___asan_gen_.1709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2494, i32 2 }
@___asan_gen_.1712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2498, i32 2 }
@___asan_gen_.1713 = private unnamed_addr constant [15 x i8] c"wm8962_dai_ops\00", align 1
@___asan_gen_.1715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2954, i32 37 }
@___asan_gen_.1716 = private unnamed_addr constant [8 x i8] c"sr_vals\00", align 1
@___asan_gen_.1718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2541, i32 3 }
@___asan_gen_.1727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2578, i32 3 }
@___asan_gen_.1730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 2607, i32 2 }
@___asan_gen_.1737 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3786, i32 3 }
@___asan_gen_.1740 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1741 = private constant [29 x i8] c"../sound/soc/codecs/wm8962.c\00", align 1
@___asan_gen_.1742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1741, i32 3793, i32 3 }
@___asan_gen_.1743 = private unnamed_addr constant [27 x i8] c"switch.table.out_pga_event\00", align 1
@___asan_gen_.1744 = private unnamed_addr constant [30 x i8] c"switch.table.wm8962_hw_params\00", align 1
@llvm.compiler.used = appending global [554 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_wm8962_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8962__343_3887_wm8962_i2c_driver_init6, ptr @__ksymtab_wm8962_mic_detect, ptr @fll_factors._entry, ptr @fll_factors._entry.424, ptr @fll_factors._entry.428, ptr @fll_factors._entry_ptr, ptr @fll_factors._entry_ptr.426, ptr @fll_factors._entry_ptr.430, ptr @hp_event._entry, ptr @hp_event._entry.361, ptr @hp_event._entry_ptr, ptr @hp_event._entry_ptr.363, ptr @wm8962_configure_bclk._entry, ptr @wm8962_configure_bclk._entry.438, ptr @wm8962_configure_bclk._entry.441, ptr @wm8962_configure_bclk._entry_ptr, ptr @wm8962_configure_bclk._entry_ptr.440, ptr @wm8962_configure_bclk._entry_ptr.443, ptr @wm8962_hw_params._entry, ptr @wm8962_hw_params._entry_ptr, ptr @wm8962_i2c_driver_exit, ptr @wm8962_i2c_probe._entry, ptr @wm8962_i2c_probe._entry.13, ptr @wm8962_i2c_probe._entry.17, ptr @wm8962_i2c_probe._entry.20, ptr @wm8962_i2c_probe._entry.23, ptr @wm8962_i2c_probe._entry.26, ptr @wm8962_i2c_probe._entry.29, ptr @wm8962_i2c_probe._entry.33, ptr @wm8962_i2c_probe._entry.36, ptr @wm8962_i2c_probe._entry.39, ptr @wm8962_i2c_probe._entry_ptr, ptr @wm8962_i2c_probe._entry_ptr.15, ptr @wm8962_i2c_probe._entry_ptr.19, ptr @wm8962_i2c_probe._entry_ptr.22, ptr @wm8962_i2c_probe._entry_ptr.25, ptr @wm8962_i2c_probe._entry_ptr.28, ptr @wm8962_i2c_probe._entry_ptr.32, ptr @wm8962_i2c_probe._entry_ptr.35, ptr @wm8962_i2c_probe._entry_ptr.38, ptr @wm8962_i2c_probe._entry_ptr.41, ptr @wm8962_init_beep._entry, ptr @wm8962_init_beep._entry.397, ptr @wm8962_init_beep._entry.400, ptr @wm8962_init_beep._entry_ptr, ptr @wm8962_init_beep._entry_ptr.399, ptr @wm8962_init_beep._entry_ptr.402, ptr @wm8962_init_gpio._entry, ptr @wm8962_init_gpio._entry_ptr, ptr @wm8962_irq._entry, ptr @wm8962_irq._entry.56, ptr @wm8962_irq._entry.59, ptr @wm8962_irq._entry.62, ptr @wm8962_irq._entry.68, ptr @wm8962_irq._entry.71, ptr @wm8962_irq._entry.75, ptr @wm8962_irq._entry.78, ptr @wm8962_irq._entry.81, ptr @wm8962_irq._entry.84, ptr @wm8962_irq._entry.87, ptr @wm8962_irq._entry_ptr, ptr @wm8962_irq._entry_ptr.58, ptr @wm8962_irq._entry_ptr.61, ptr @wm8962_irq._entry_ptr.65, ptr @wm8962_irq._entry_ptr.70, ptr @wm8962_irq._entry_ptr.74, ptr @wm8962_irq._entry_ptr.77, ptr @wm8962_irq._entry_ptr.80, ptr @wm8962_irq._entry_ptr.83, ptr @wm8962_irq._entry_ptr.86, ptr @wm8962_irq._entry_ptr.89, ptr @wm8962_probe._entry, ptr @wm8962_probe._entry.98, ptr @wm8962_probe._entry_ptr, ptr @wm8962_probe._entry_ptr.100, ptr @wm8962_runtime_resume._entry, ptr @wm8962_runtime_resume._entry.452, ptr @wm8962_runtime_resume._entry_ptr, ptr @wm8962_runtime_resume._entry_ptr.453, ptr @wm8962_set_fll._entry, ptr @wm8962_set_fll._entry.414, ptr @wm8962_set_fll._entry.418, ptr @wm8962_set_fll._entry_ptr, ptr @wm8962_set_fll._entry_ptr.416, ptr @wm8962_set_fll._entry_ptr.420, ptr @.str, ptr @.str.1, ptr @wm8962_i2c_driver, ptr @.str.2, ptr @wm8962_of_match, ptr @wm8962_pm, ptr @wm8962_i2c_id, ptr @wm8962_i2c_probe.__key, ptr @.str.3, ptr @wm8962_i2c_probe.__key.4, ptr @.str.5, ptr @wm8962_i2c_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @wm8962_i2c_probe._key, ptr @wm8962_regmap, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @wm8962_dc_measure, ptr @.str.37, ptr @.str.40, ptr @soc_component_dev_wm8962, ptr @wm8962_dai, ptr @init_completion.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @wm8962_reg, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @wm8962_snd_controls, ptr @wm8962_spk_mono_controls, ptr @wm8962_spk_stereo_controls, ptr @wm8962_intercon, ptr @wm8962_spk_mono_intercon, ptr @wm8962_spk_stereo_intercon, ptr @.str.101, ptr @.str.102, ptr @.compoundliteral, ptr @.str.103, ptr @mixin_tlv, ptr @.compoundliteral.104, ptr @.str.105, ptr @mixinpga_tlv, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @digital_tlv, ptr @.compoundliteral.116, ptr @.str.117, ptr @inpga_tlv, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @cap_hpf_mode, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @cap_lhpf_mode, ptr @.str.131, ptr @st_tlv, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @beep_tlv, ptr @.compoundliteral.148, ptr @.str.149, ptr @out_tlv, ptr @.compoundliteral.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.str.155, ptr @hp_tlv, ptr @.compoundliteral.156, ptr @.str.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @bypass_tlv, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @inmix_tlv, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.compoundliteral.168, ptr @.str.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @classd_tlv, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @eq_tlv, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @.compoundliteral.186, ptr @.str.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.str.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.str.213, ptr @.compoundliteral.214, ptr @.str.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @cap_hpf_mode_text, ptr @.str.219, ptr @.str.220, ptr @cap_lhpf_mode_text, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.compoundliteral.224, ptr @.str.225, ptr @.compoundliteral.226, ptr @.str.227, ptr @.compoundliteral.228, ptr @.str.229, ptr @.compoundliteral.230, ptr @.str.231, ptr @.compoundliteral.232, ptr @.str.233, ptr @.compoundliteral.234, ptr @.str.235, ptr @.compoundliteral.236, ptr @.str.237, ptr @.compoundliteral.238, ptr @.str.239, ptr @.compoundliteral.240, ptr @.str.241, ptr @.compoundliteral.242, ptr @.compoundliteral.243, ptr @.compoundliteral.244, ptr @.compoundliteral.245, ptr @.compoundliteral.246, ptr @.str.247, ptr @.compoundliteral.248, ptr @.str.249, ptr @.compoundliteral.250, ptr @.str.251, ptr @.compoundliteral.252, ptr @.str.253, ptr @.compoundliteral.254, ptr @.str.255, ptr @.compoundliteral.256, ptr @.str.257, ptr @.compoundliteral.258, ptr @.str.259, ptr @.compoundliteral.260, ptr @.str.261, ptr @.compoundliteral.262, ptr @.str.263, ptr @.compoundliteral.264, ptr @.str.265, ptr @.compoundliteral.266, ptr @.str.267, ptr @.compoundliteral.268, ptr @.str.269, ptr @.compoundliteral.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @inpgal, ptr @.str.286, ptr @inpgar, ptr @.str.287, ptr @mixinl, ptr @.str.288, ptr @mixinr, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @stl_mux, ptr @.str.294, ptr @str_mux, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @hpmixl, ptr @.str.301, ptr @hpmixr, ptr @.str.302, ptr @hpoutl_mux, ptr @.str.303, ptr @hpoutr_mux, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @wm8962_dapm_widgets, ptr @.str.308, ptr @.str.309, ptr @.compoundliteral.310, ptr @.str.311, ptr @.compoundliteral.312, ptr @.str.313, ptr @.compoundliteral.314, ptr @.str.315, ptr @.compoundliteral.316, ptr @.str.317, ptr @.compoundliteral.318, ptr @.str.319, ptr @.compoundliteral.320, ptr @.str.321, ptr @.compoundliteral.322, ptr @.str.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @.compoundliteral.326, ptr @.str.327, ptr @.compoundliteral.328, ptr @.compoundliteral.329, ptr @.compoundliteral.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @stl_enum, ptr @st_text, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @str_enum, ptr @.str.337, ptr @.compoundliteral.338, ptr @.str.339, ptr @.compoundliteral.340, ptr @.str.341, ptr @.compoundliteral.342, ptr @.str.343, ptr @.compoundliteral.344, ptr @.compoundliteral.345, ptr @.compoundliteral.346, ptr @.compoundliteral.347, ptr @.compoundliteral.348, ptr @.compoundliteral.349, ptr @.compoundliteral.350, ptr @.compoundliteral.351, ptr @.compoundliteral.352, ptr @.str.353, ptr @.str.354, ptr @hpoutl_enum, ptr @outmux_text, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @hpoutr_enum, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.362, ptr @.str.364, ptr @.str.365, ptr @spkmixl, ptr @.str.366, ptr @spkoutl_mux, ptr @.str.367, ptr @.str.368, ptr @wm8962_dapm_spk_mono_widgets, ptr @.compoundliteral.370, ptr @.compoundliteral.371, ptr @.compoundliteral.372, ptr @.compoundliteral.373, ptr @.compoundliteral.374, ptr @.compoundliteral.375, ptr @.str.376, ptr @spkoutl_enum, ptr @.str.377, ptr @.str.378, ptr @spkmixr, ptr @.str.379, ptr @.str.380, ptr @spkoutr_mux, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @wm8962_dapm_spk_stereo_widgets, ptr @.compoundliteral.386, ptr @.compoundliteral.387, ptr @.compoundliteral.388, ptr @.compoundliteral.389, ptr @.compoundliteral.390, ptr @.compoundliteral.391, ptr @.str.392, ptr @spkoutr_enum, ptr @.str.393, ptr @.str.394, ptr @wm8962_init_beep.__key, ptr @.str.395, ptr @.str.396, ptr @.str.398, ptr @dev_attr_beep, ptr @.str.401, ptr @beep_rates, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @wm8962_template_chip, ptr @wm8962_init_gpio.lock_key, ptr @wm8962_init_gpio.request_key, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.415, ptr @.str.417, ptr @.str.419, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.425, ptr @.str.427, ptr @fll_fratios, ptr @.str.429, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @sysclk_rates, ptr @.str.436, ptr @.str.437, ptr @.str.439, ptr @.str.442, ptr @.str.444, ptr @bclk_divs, ptr @.str.445, ptr @.str.446, ptr @wm8962_dai_ops, ptr @sr_vals, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450, ptr @.str.451, ptr @switch.table.out_pga_event, ptr @switch.table.wm8962_hw_params], section "llvm.metadata"
@0 = internal global [505 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_dc_measure to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_i2c_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8962 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_reg to i32), i32 4944, i32 6176, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_irq._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_probe._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_snd_controls to i32), i32 2976, i32 3712, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_spk_mono_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_spk_stereo_controls to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_intercon to i32), i32 3692, i32 4608, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_spk_mono_intercon to i32), i32 676, i32 864, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_spk_stereo_intercon to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixin_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixinpga_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inpga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_lhpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bypass_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inmix_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classd_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_hpf_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_lhpf_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.232 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inpgal to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inpgar to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixinl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixinr to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpmixl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpmixr to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpoutl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpoutr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_dapm_widgets to i32), i32 6840, i32 8544, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.310 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.312 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.314 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.316 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.318 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.320 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.322 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.326 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.338 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.340 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.342 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.344 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.347 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.348 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.350 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.352 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpoutl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outmux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpoutr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_event._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkmixl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkoutl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_dapm_spk_mono_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.370 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.372 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.374 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkoutl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkmixr to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkoutr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_dapm_spk_stereo_widgets to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.386 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.388 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkoutr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_init_beep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_init_beep.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_init_beep._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beep to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_init_beep._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_init_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_init_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_set_fll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_set_fll._entry.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_set_fll._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_fratios to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysclk_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_configure_bclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_configure_bclk._entry.438 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_configure_bclk._entry.441 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_vals to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8962_runtime_resume._entry.452 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.out_pga_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8962_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8962_mic_detect(ptr noundef %component, ptr noundef %jack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %jack2 = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %jack2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %jack2, align 4
  %tobool.not = icmp eq ptr %jack, null
  %. = select i1 %tobool.not, i32 49152, i32 0
  %.25 = select i1 %tobool.not, i32 0, i32 512
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 569, i32 noundef 49152, i32 noundef %.) #13
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 512, i32 noundef %.25) #13
  %5 = ptrtoint ptr %jack2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jack2, align 4
  tail call void @snd_soc_jack_report(ptr noundef %6, i32 noundef 0, i32 noundef 16386) #13
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #13
  br i1 %tobool.not, label %if.else10, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str) #13
  %call9 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.1) #13
  br label %if.end13

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str) #13
  %call12 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.1) #13
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then7
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i27 = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i27) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_i2c_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8962_i2c_driver) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8962_i2c_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8962_i2c_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %val32.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !783
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 928, i32 noundef 3520) #13
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %dsp2_ena_lock = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %dsp2_ena_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @wm8962_i2c_probe.__key) #13
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mic_work = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %mic_work, i32 noundef 0) #13
  %4 = ptrtoint ptr %mic_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %mic_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @wm8962_i2c_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry11 = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wm8962_mic_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @wm8962_i2c_probe.__key.6) #13
  %fll_lock = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %fll_lock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fll_lock, align 4
  %wait.i = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #13
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %irq22 = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 21
  %11 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %irq22, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = call ptr @memcpy(ptr %call.i, ptr %1, i32 40)
  br label %if.end34

if.else:                                          ; preds = %do.body
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %tobool26.not = icmp eq ptr %14, null
  br i1 %tobool26.not, label %if.else.if.end34_crit_edge, label %if.then27

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then27:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #13
  %15 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val32.i, align 4, !annotation !783
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.43, ptr noundef null) #13
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.then27.if.end.i_crit_edge, label %if.then.i

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %spk_mono.i = getelementptr inbounds %struct.wm8962_pdata, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %spk_mono.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %spk_mono.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then27.if.end.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.44, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #13
  %17 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp sgt i32 %17, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val32.i, align 4
  %mic_cfg.i = getelementptr inbounds %struct.wm8962_pdata, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %mic_cfg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mic_cfg.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %gpio_init.i = getelementptr %struct.wm8962_pdata, ptr %call.i, i32 0, i32 2
  %call.i31.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.45, ptr noundef %gpio_init.i, i32 noundef 6, i32 noundef 0) #13
  %21 = call i32 @llvm.smin.i32(i32 %call.i31.i, i32 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp5.i = icmp sgt i32 %21, -1
  br i1 %cmp5.i, label %for.body.preheader.i, label %if.end3.i.wm8962_set_pdata_from_of.exit_crit_edge

if.end3.i.wm8962_set_pdata_from_of.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wm8962_set_pdata_from_of.exit

for.body.preheader.i:                             ; preds = %if.end3.i
  %22 = ptrtoint ptr %gpio_init.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_init.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %23)
  %cmp9.i = icmp ugt i32 %23, 65535
  br i1 %cmp9.i, label %if.then10.i, label %for.body.preheader.i.for.inc.i_crit_edge

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %gpio_init.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %gpio_init.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.wm8962_pdata, ptr %call.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %26)
  %cmp9.1.i = icmp ugt i32 %26, 65535
  br i1 %cmp9.1.i, label %if.then10.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.then10.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then10.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.wm8962_pdata, ptr %call.i, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %29)
  %cmp9.2.i = icmp ugt i32 %29, 65535
  br i1 %cmp9.2.i, label %if.then10.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.then10.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then10.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.wm8962_pdata, ptr %call.i, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %32)
  %cmp9.3.i = icmp ugt i32 %32, 65535
  br i1 %cmp9.3.i, label %if.then10.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.then10.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then10.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.wm8962_pdata, ptr %call.i, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %35)
  %cmp9.4.i = icmp ugt i32 %35, 65535
  br i1 %cmp9.4.i, label %if.then10.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

if.then10.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx.4.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then10.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.wm8962_pdata, ptr %call.i, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %38)
  %cmp9.5.i = icmp ugt i32 %38, 65535
  br i1 %cmp9.5.i, label %if.then10.5.i, label %for.inc.4.i.wm8962_set_pdata_from_of.exit_crit_edge

for.inc.4.i.wm8962_set_pdata_from_of.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wm8962_set_pdata_from_of.exit

if.then10.5.i:                                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx.5.i, align 4
  br label %wm8962_set_pdata_from_of.exit

wm8962_set_pdata_from_of.exit:                    ; preds = %if.then10.5.i, %for.inc.4.i.wm8962_set_pdata_from_of.exit_crit_edge, %if.end3.i.wm8962_set_pdata_from_of.exit_crit_edge
  %call16.i = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #13
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call16.i, ptr %call.i, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  %41 = ptrtoint ptr %call16.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #13
  br i1 %cmp.i.i.i.not, label %wm8962_set_pdata_from_of.exit.cleanup_crit_edge, label %wm8962_set_pdata_from_of.exit.if.end34_crit_edge

wm8962_set_pdata_from_of.exit.if.end34_crit_edge: ; preds = %wm8962_set_pdata_from_of.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

wm8962_set_pdata_from_of.exit.cleanup_crit_edge:  ; preds = %wm8962_set_pdata_from_of.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %wm8962_set_pdata_from_of.exit.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then23
  %arrayidx36 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 0
  %42 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.46, ptr %arrayidx36, align 4
  %arrayidx36.1 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 1
  %43 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.47, ptr %arrayidx36.1, align 4
  %arrayidx36.2 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 2
  %44 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.48, ptr %arrayidx36.2, align 4
  %arrayidx36.3 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 3
  %45 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.49, ptr %arrayidx36.3, align 4
  %arrayidx36.4 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 4
  %46 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.50, ptr %arrayidx36.4, align 4
  %arrayidx36.5 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 5
  %47 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.51, ptr %arrayidx36.5, align 4
  %arrayidx36.6 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 6
  %48 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.52, ptr %arrayidx36.6, align 4
  %arrayidx36.7 = getelementptr %struct.wm8962_priv, ptr %call.i, i32 0, i32 15, i32 7
  %49 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.53, ptr %arrayidx36.7, align 4
  %call39 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 8, ptr noundef %arrayidx36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call39) #16
  br label %cleanup

if.end46:                                         ; preds = %if.end34
  %call49 = call i32 @regulator_bulk_enable(i32 noundef 8, ptr noundef %arrayidx36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call49) #16
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %call57 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8962_regmap, ptr noundef nonnull @wm8962_i2c_probe._key, ptr noundef nonnull @.str.16) #13
  %regmap = getelementptr inbounds %struct.wm8962_priv, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call57, ptr %regmap, align 4
  %cmp.i345 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i345, label %if.then60, label %if.end67

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %call57 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %51) #16
  br label %err_enable

if.end67:                                         ; preds = %if.end56
  call void @regcache_cache_bypass(ptr noundef %call57, i1 noundef zeroext true) #13
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call70 = call i32 @regmap_read(ptr noundef %53, i32 noundef 15, ptr noundef nonnull %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #16
  br label %err_enable

if.end77:                                         ; preds = %if.end67
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25155, i32 %55)
  %cmp78.not = icmp eq i32 %55, 25155
  br i1 %cmp78.not, label %if.end84, label %do.end82

do.end82:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %55) #16
  br label %err_enable

if.end84:                                         ; preds = %if.end77
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call86 = call i32 @regmap_read(ptr noundef %57, i32 noundef 1, ptr noundef nonnull %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end91, label %do.end96

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call86) #16
  br label %err_enable

do.end96:                                         ; preds = %if.end84
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg, align 4
  %and = lshr i32 %59, 12
  %shr = and i32 %and, 15
  %and98 = lshr i32 %59, 9
  %shr99 = and i32 %and98, 7
  %add = add nuw nsw i32 %shr99, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %shr, i32 noundef %add) #16
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_bypass(ptr noundef %61, i1 noundef zeroext false) #13
  %call101 = call fastcc i32 @wm8962_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %do.end106, label %if.end108

do.end106:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #16
  br label %err_enable

if.end108:                                        ; preds = %do.end96
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call.i346 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 8, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call.i347 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 8, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call.i348 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 129, i32 noundef 176, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %for.body117

for.body117:                                      ; preds = %for.inc131.for.body117_crit_edge, %if.end108
  %i.1371 = phi i32 [ 0, %if.end108 ], [ %inc132, %for.inc131.for.body117_crit_edge ]
  %arrayidx119 = getelementptr %struct.wm8962_pdata, ptr %call.i, i32 0, i32 2, i32 %i.1371
  %68 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool120.not = icmp eq i32 %69, 0
  br i1 %tobool120.not, label %for.body117.for.inc131_crit_edge, label %if.then121

for.body117.for.inc131_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc131

if.then121:                                       ; preds = %for.body117
  %70 = zext i32 %i.1371 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.1371, label %if.then121.wm8962_set_gpio_mode.exit_crit_edge [
    i32 1, label %if.then121.if.then.i350_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.then121.if.then.i350_crit_edge:                ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i350

if.then121.wm8962_set_gpio_mode.exit_crit_edge:   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %wm8962_set_gpio_mode.exit

sw.bb1.i:                                         ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i350

if.then.i350:                                     ; preds = %sw.bb1.i, %if.then121.if.then.i350_crit_edge
  %mask.0.ph.i = phi i32 [ 24, %sw.bb1.i ], [ 96, %if.then121.if.then.i350_crit_edge ]
  %val.0.ph.i = phi i32 [ 8, %sw.bb1.i ], [ 32, %if.then121.if.then.i350_crit_edge ]
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call.i.i349 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 124, i32 noundef %mask.0.ph.i, i32 noundef %val.0.ph.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %wm8962_set_gpio_mode.exit

wm8962_set_gpio_mode.exit:                        ; preds = %if.then.i350, %if.then121.wm8962_set_gpio_mode.exit_crit_edge
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %add124 = add nuw nsw i32 %i.1371, 512
  %75 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx119, align 4
  %and128 = and i32 %76, 65535
  %call129 = call i32 @regmap_write(ptr noundef %74, i32 noundef %add124, i32 noundef %and128) #13
  br label %for.inc131

for.inc131:                                       ; preds = %wm8962_set_gpio_mode.exit, %for.body117.for.inc131_crit_edge
  %inc132 = add nuw nsw i32 %i.1371, 1
  %exitcond.not = icmp eq i32 %inc132, 6
  br i1 %exitcond.not, label %for.end133, label %for.inc131.for.body117_crit_edge

for.inc131.for.body117_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body117

for.end133:                                       ; preds = %for.inc131
  %spk_mono = getelementptr inbounds %struct.wm8962_pdata, ptr %call.i, i32 0, i32 5
  %77 = ptrtoint ptr %spk_mono to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %spk_mono, align 1, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool135.not = icmp eq i8 %78, 0
  br i1 %tobool135.not, label %for.end133.if.end139_crit_edge, label %if.then136

for.end133.if.end139_crit_edge:                   ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then136:                                       ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %call.i352 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 51, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %for.end133.if.end139_crit_edge
  %mic_cfg = getelementptr inbounds %struct.wm8962_pdata, ptr %call.i, i32 0, i32 3
  %81 = ptrtoint ptr %mic_cfg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mic_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool141.not = icmp eq i32 %82, 0
  br i1 %tobool141.not, label %if.end139.if.end147_crit_edge, label %if.then142

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call.i353 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 48, i32 noundef 32257, i32 noundef %82, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.end139.if.end147_crit_edge
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call.i354 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 0, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %call.i355 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 1, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 4
  %call.i356 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 21, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call.i357 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 22, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %call.i358 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 10, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %95 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap, align 4
  %call.i359 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 11, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %call.i360 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 40, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %99 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap, align 4
  %call.i361 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 41, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %call.i362 = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 2, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call.i363 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 3, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %call.i364 = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 335, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %107 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap, align 4
  %call.i365 = call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 584, i32 noundef 45, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %in4_dc_measure = getelementptr inbounds %struct.wm8962_pdata, ptr %call.i, i32 0, i32 6
  %109 = ptrtoint ptr %in4_dc_measure to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %in4_dc_measure, align 2, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool173.not = icmp eq i8 %110, 0
  br i1 %tobool173.not, label %if.end147.if.end184_crit_edge, label %if.then174

if.end147.if.end184_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.then174:                                       ; preds = %if.end147
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call176 = call i32 @regmap_register_patch(ptr noundef %112, ptr noundef nonnull @wm8962_dc_measure, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177.not = icmp eq i32 %call176, 0
  br i1 %cmp177.not, label %if.then174.if.end184_crit_edge, label %do.end181

if.then174.if.end184_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

do.end181:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call176) #16
  br label %if.end184

if.end184:                                        ; preds = %do.end181, %if.then174.if.end184_crit_edge, %if.end147.if.end184_crit_edge
  %113 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool186.not = icmp eq i32 %114, 0
  br i1 %tobool186.not, label %if.end184.if.end211_crit_edge, label %if.then187

if.end184.if.end211_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211

if.then187:                                       ; preds = %if.end184
  %irq_active_low = getelementptr inbounds %struct.wm8962_pdata, ptr %call.i, i32 0, i32 4
  %115 = ptrtoint ptr %irq_active_low to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %irq_active_low, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool189.not = icmp eq i8 %116, 0
  %not.tobool189.not = xor i1 %tobool189.not, true
  %. = zext i1 %not.tobool189.not to i32
  %.344 = select i1 %tobool189.not, i32 8196, i32 8200
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %call.i366 = call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 576, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %119 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq22, align 4
  %call198 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %120, ptr noundef null, ptr noundef nonnull @wm8962_irq, i32 noundef %.344, ptr noundef nonnull @.str.2, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199.not = icmp eq i32 %call198, 0
  br i1 %cmp199.not, label %if.else207, label %do.end203

do.end203:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %122, i32 noundef %call198) #16
  %123 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %irq22, align 4
  br label %if.end211

if.else207:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap, align 4
  %call.i367 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 569, i32 noundef 8225, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end211

if.end211:                                        ; preds = %if.else207, %do.end203, %if.end184.if.end211_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev) #13
  %call.i368 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 1) #13
  %call216 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8962, ptr noundef nonnull @wm8962_dai, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %err_pm_runtime, label %if.end219

if.end219:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %127, i1 noundef zeroext true) #13
  %call223 = call i32 @regulator_bulk_disable(i32 noundef 8, ptr noundef %arrayidx36) #13
  br label %cleanup

err_pm_runtime:                                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #15
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  br label %err_enable

err_enable:                                       ; preds = %err_pm_runtime, %do.end106, %do.end91, %do.end82, %do.end75, %if.then60
  %ret.0 = phi i32 [ %51, %if.then60 ], [ %call70, %do.end75 ], [ -22, %do.end82 ], [ %call86, %do.end91 ], [ %call101, %do.end106 ], [ %call216, %err_pm_runtime ]
  %call227 = call i32 @regulator_bulk_disable(i32 noundef 8, ptr noundef %arrayidx36) #13
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.end219, %do.end54, %do.end44, %wm8962_set_pdata_from_of.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %do.end54 ], [ 0, %if.end219 ], [ -12, %entry.cleanup_crit_edge ], [ %41, %wm8962_set_pdata_from_of.exit.cleanup_crit_edge ], [ %call39, %do.end44 ], [ %ret.0, %err_enable ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_i2c_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8962_mic_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr i8, ptr %work, i32 -184
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 48) #13
  %and = and i32 %call, 128
  %2 = lshr exact i32 %and, 6
  %3 = shl nuw nsw i32 %and, 7
  %and3 = and i32 %call, 64
  %4 = shl nuw nsw i32 %and3, 8
  %5 = or i32 %4, %2
  %6 = shl nuw nsw i32 %and3, 9
  %7 = or i32 %6, %3
  %jack = getelementptr i8, ptr %work, i32 100
  %8 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %9, i32 noundef %5, i32 noundef 16386) #13
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 586, i32 noundef 49152, i32 noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8962_reset(ptr nocapture noundef readonly %wm8962) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.wm8962_priv, ptr %wm8962, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 15, i32 noundef 25155) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 127, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  %active = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #13
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !783
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active) #13
  %3 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %active, align 4, !annotation !783
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !783
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %data, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !785
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !786
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !787
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.54, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 569, ptr noundef nonnull %mask) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i161 = call i32 @__pm_runtime_idle(ptr noundef %data, i32 noundef 5) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.57, i32 noundef %call2) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %9, i32 noundef 561, ptr noundef nonnull %active) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call.i162 = call i32 @__pm_runtime_idle(ptr noundef %data, i32 noundef 5) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.60, i32 noundef %call11) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %neg = xor i32 %11, -1
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active, align 4
  %and = and i32 %13, %neg
  store i32 %and, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call.i163 = call i32 @__pm_runtime_idle(ptr noundef %data, i32 noundef 5) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %15, i32 noundef 561, i32 noundef %and) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end21.if.end29_crit_edge, label %do.end28

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %data, ptr noundef nonnull @.str.63, i32 noundef %call23) #16
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %if.end21.if.end29_crit_edge
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active, align 4
  %and30 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end42_crit_edge, label %do.body33

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

do.body33:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_irq.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_irq, %if.then38)) #13
          to label %do.end41 [label %if.then38], !srcloc !788

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_irq.__UNIQUE_ID_ddebug337, ptr noundef %data, ptr noundef nonnull @.str.67) #13
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body33
  %fll_lock = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 7
  call void @complete(ptr noundef %fll_lock) #13
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %if.end29.if.end42_crit_edge
  %18 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active, align 4
  %and43 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end49_crit_edge, label %do.end48

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.69) #16
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %if.end42.if.end49_crit_edge
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active, align 4
  %and50 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end92_crit_edge, label %do.end55

if.end49.if.end92_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

do.end55:                                         ; preds = %if.end49
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %data, ptr noundef nonnull @.str.72) #16
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call57 = call i32 @regmap_read(ptr noundef %23, i32 noundef 47, ptr noundef nonnull %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %do.end55.if.end63_crit_edge, label %do.end62

do.end55.if.end63_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.end62:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %data, ptr noundef nonnull @.str.76, i32 noundef %call57) #16
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %reg, align 4
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %do.end55.if.end63_crit_edge
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %and64 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end70_crit_edge, label %do.end69

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %data, ptr noundef nonnull @.str.79) #16
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.end63.if.end70_crit_edge
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg, align 4
  %and71 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end77_crit_edge, label %do.end76

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %data, ptr noundef nonnull @.str.82) #16
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %if.end70.if.end77_crit_edge
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %and78 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end84_crit_edge, label %do.end83

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %data, ptr noundef nonnull @.str.85) #16
  br label %if.end84

if.end84:                                         ; preds = %do.end83, %if.end77.if.end84_crit_edge
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg, align 4
  %and85 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end92_crit_edge, label %do.end90

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %data, ptr noundef nonnull @.str.88) #16
  br label %if.end92

if.end92:                                         ; preds = %do.end90, %if.end84.if.end92_crit_edge, %if.end49.if.end92_crit_edge
  %33 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %active, align 4
  %and93 = and i32 %34, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end115_crit_edge, label %do.body96

if.end92.if.end115_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

do.body96:                                        ; preds = %if.end92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_irq.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_irq, %if.then108)) #13
          to label %do.end111 [label %if.then108], !srcloc !788

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_irq.__UNIQUE_ID_ddebug338, ptr noundef %data, ptr noundef nonnull @.str.90) #13
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %do.body96
  %init_name.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end111.dev_name.exit_crit_edge

do.end111.dev_name.exit_crit_edge:                ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end111.dev_name.exit_crit_edge
  %retval.0.i164 = phi ptr [ %38, %if.end.i ], [ %36, %do.end111.dev_name.exit_crit_edge ]
  call fastcc void @trace_snd_soc_jack_irq(ptr noundef %retval.0.i164)
  call void @pm_wakeup_dev_event(ptr noundef %data, i32 noundef 300, i1 noundef zeroext false) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %39 = load ptr, ptr @system_power_efficient_wq, align 4
  %mic_work = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 13
  %call.i165 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %mic_work, i32 noundef 25) #13
  br label %if.end115

if.end115:                                        ; preds = %dev_name.exit, %if.end92.if.end115_crit_edge
  %call.i166 = call i32 @__pm_runtime_idle(ptr noundef %data, i32 noundef 5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then19, %if.then13, %if.then4, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ 0, %if.then4 ], [ 0, %if.then13 ], [ 1, %if.end115 ], [ 0, %if.then19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8962_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.454)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 6, label %entry.return_crit_edge6
    i32 7, label %entry.return_crit_edge7
    i32 8, label %entry.return_crit_edge8
    i32 9, label %entry.return_crit_edge9
    i32 10, label %entry.return_crit_edge10
    i32 11, label %entry.return_crit_edge11
    i32 14, label %entry.return_crit_edge12
    i32 15, label %entry.return_crit_edge13
    i32 17, label %entry.return_crit_edge14
    i32 18, label %entry.return_crit_edge15
    i32 19, label %entry.return_crit_edge16
    i32 20, label %entry.return_crit_edge17
    i32 21, label %entry.return_crit_edge18
    i32 22, label %entry.return_crit_edge19
    i32 23, label %entry.return_crit_edge20
    i32 24, label %entry.return_crit_edge21
    i32 25, label %entry.return_crit_edge22
    i32 26, label %entry.return_crit_edge23
    i32 27, label %entry.return_crit_edge24
    i32 28, label %entry.return_crit_edge25
    i32 30, label %entry.return_crit_edge26
    i32 31, label %entry.return_crit_edge27
    i32 32, label %entry.return_crit_edge28
    i32 33, label %entry.return_crit_edge29
    i32 34, label %entry.return_crit_edge30
    i32 35, label %entry.return_crit_edge31
    i32 37, label %entry.return_crit_edge32
    i32 38, label %entry.return_crit_edge33
    i32 40, label %entry.return_crit_edge34
    i32 41, label %entry.return_crit_edge35
    i32 47, label %entry.return_crit_edge36
    i32 48, label %entry.return_crit_edge37
    i32 49, label %entry.return_crit_edge38
    i32 51, label %entry.return_crit_edge39
    i32 56, label %entry.return_crit_edge40
    i32 57, label %entry.return_crit_edge41
    i32 58, label %entry.return_crit_edge42
    i32 60, label %entry.return_crit_edge43
    i32 61, label %entry.return_crit_edge44
    i32 64, label %entry.return_crit_edge45
    i32 66, label %entry.return_crit_edge46
    i32 68, label %entry.return_crit_edge47
    i32 69, label %entry.return_crit_edge48
    i32 71, label %entry.return_crit_edge49
    i32 72, label %entry.return_crit_edge50
    i32 82, label %entry.return_crit_edge51
    i32 87, label %entry.return_crit_edge52
    i32 90, label %entry.return_crit_edge53
    i32 93, label %entry.return_crit_edge54
    i32 94, label %entry.return_crit_edge55
    i32 99, label %entry.return_crit_edge56
    i32 100, label %entry.return_crit_edge57
    i32 101, label %entry.return_crit_edge58
    i32 102, label %entry.return_crit_edge59
    i32 103, label %entry.return_crit_edge60
    i32 105, label %entry.return_crit_edge61
    i32 106, label %entry.return_crit_edge62
    i32 107, label %entry.return_crit_edge63
    i32 108, label %entry.return_crit_edge64
    i32 109, label %entry.return_crit_edge65
    i32 110, label %entry.return_crit_edge66
    i32 115, label %entry.return_crit_edge67
    i32 116, label %entry.return_crit_edge68
    i32 119, label %entry.return_crit_edge69
    i32 124, label %entry.return_crit_edge70
    i32 125, label %entry.return_crit_edge71
    i32 126, label %entry.return_crit_edge72
    i32 127, label %entry.return_crit_edge73
    i32 129, label %entry.return_crit_edge74
    i32 131, label %entry.return_crit_edge75
    i32 136, label %entry.return_crit_edge76
    i32 137, label %entry.return_crit_edge77
    i32 138, label %entry.return_crit_edge78
    i32 139, label %entry.return_crit_edge79
    i32 140, label %entry.return_crit_edge80
    i32 141, label %entry.return_crit_edge81
    i32 142, label %entry.return_crit_edge82
    i32 143, label %entry.return_crit_edge83
    i32 155, label %entry.return_crit_edge84
    i32 156, label %entry.return_crit_edge85
    i32 157, label %entry.return_crit_edge86
    i32 159, label %entry.return_crit_edge87
    i32 160, label %entry.return_crit_edge88
    i32 161, label %entry.return_crit_edge89
    i32 162, label %entry.return_crit_edge90
    i32 252, label %entry.return_crit_edge91
    i32 256, label %entry.return_crit_edge92
    i32 257, label %entry.return_crit_edge93
    i32 258, label %entry.return_crit_edge94
    i32 259, label %entry.return_crit_edge95
    i32 260, label %entry.return_crit_edge96
    i32 261, label %entry.return_crit_edge97
    i32 262, label %entry.return_crit_edge98
    i32 264, label %entry.return_crit_edge99
    i32 265, label %entry.return_crit_edge100
    i32 268, label %entry.return_crit_edge101
    i32 269, label %entry.return_crit_edge102
    i32 270, label %entry.return_crit_edge103
    i32 271, label %entry.return_crit_edge104
    i32 276, label %entry.return_crit_edge105
    i32 277, label %entry.return_crit_edge106
    i32 278, label %entry.return_crit_edge107
    i32 279, label %entry.return_crit_edge108
    i32 280, label %entry.return_crit_edge109
    i32 285, label %entry.return_crit_edge110
    i32 335, label %entry.return_crit_edge111
    i32 336, label %entry.return_crit_edge112
    i32 337, label %entry.return_crit_edge113
    i32 338, label %entry.return_crit_edge114
    i32 339, label %entry.return_crit_edge115
    i32 340, label %entry.return_crit_edge116
    i32 341, label %entry.return_crit_edge117
    i32 342, label %entry.return_crit_edge118
    i32 343, label %entry.return_crit_edge119
    i32 344, label %entry.return_crit_edge120
    i32 345, label %entry.return_crit_edge121
    i32 346, label %entry.return_crit_edge122
    i32 347, label %entry.return_crit_edge123
    i32 348, label %entry.return_crit_edge124
    i32 349, label %entry.return_crit_edge125
    i32 350, label %entry.return_crit_edge126
    i32 351, label %entry.return_crit_edge127
    i32 352, label %entry.return_crit_edge128
    i32 353, label %entry.return_crit_edge129
    i32 354, label %entry.return_crit_edge130
    i32 355, label %entry.return_crit_edge131
    i32 356, label %entry.return_crit_edge132
    i32 357, label %entry.return_crit_edge133
    i32 358, label %entry.return_crit_edge134
    i32 359, label %entry.return_crit_edge135
    i32 360, label %entry.return_crit_edge136
    i32 361, label %entry.return_crit_edge137
    i32 362, label %entry.return_crit_edge138
    i32 363, label %entry.return_crit_edge139
    i32 364, label %entry.return_crit_edge140
    i32 365, label %entry.return_crit_edge141
    i32 366, label %entry.return_crit_edge142
    i32 367, label %entry.return_crit_edge143
    i32 368, label %entry.return_crit_edge144
    i32 369, label %entry.return_crit_edge145
    i32 370, label %entry.return_crit_edge146
    i32 371, label %entry.return_crit_edge147
    i32 372, label %entry.return_crit_edge148
    i32 373, label %entry.return_crit_edge149
    i32 374, label %entry.return_crit_edge150
    i32 375, label %entry.return_crit_edge151
    i32 513, label %entry.return_crit_edge152
    i32 514, label %entry.return_crit_edge153
    i32 516, label %entry.return_crit_edge154
    i32 517, label %entry.return_crit_edge155
    i32 560, label %entry.return_crit_edge156
    i32 561, label %entry.return_crit_edge157
    i32 568, label %entry.return_crit_edge158
    i32 569, label %entry.return_crit_edge159
    i32 576, label %entry.return_crit_edge160
    i32 584, label %entry.return_crit_edge161
    i32 586, label %entry.return_crit_edge162
    i32 768, label %entry.return_crit_edge163
    i32 1037, label %entry.return_crit_edge164
    i32 8192, label %entry.return_crit_edge165
    i32 9216, label %entry.return_crit_edge166
    i32 9217, label %entry.return_crit_edge167
    i32 9218, label %entry.return_crit_edge168
    i32 12288, label %entry.return_crit_edge169
    i32 12289, label %entry.return_crit_edge170
    i32 13312, label %entry.return_crit_edge171
    i32 13313, label %entry.return_crit_edge172
    i32 14336, label %entry.return_crit_edge173
    i32 14337, label %entry.return_crit_edge174
    i32 15360, label %entry.return_crit_edge175
    i32 16384, label %entry.return_crit_edge176
    i32 16385, label %entry.return_crit_edge177
    i32 16386, label %entry.return_crit_edge178
    i32 16387, label %entry.return_crit_edge179
    i32 16388, label %entry.return_crit_edge180
    i32 16389, label %entry.return_crit_edge181
    i32 16896, label %entry.return_crit_edge182
    i32 16897, label %entry.return_crit_edge183
    i32 16898, label %entry.return_crit_edge184
    i32 16899, label %entry.return_crit_edge185
    i32 16900, label %entry.return_crit_edge186
    i32 16901, label %entry.return_crit_edge187
    i32 16902, label %entry.return_crit_edge188
    i32 16903, label %entry.return_crit_edge189
    i32 16904, label %entry.return_crit_edge190
    i32 16905, label %entry.return_crit_edge191
    i32 16906, label %entry.return_crit_edge192
    i32 16907, label %entry.return_crit_edge193
    i32 16908, label %entry.return_crit_edge194
    i32 16909, label %entry.return_crit_edge195
    i32 16910, label %entry.return_crit_edge196
    i32 16911, label %entry.return_crit_edge197
    i32 16912, label %entry.return_crit_edge198
    i32 16913, label %entry.return_crit_edge199
    i32 16914, label %entry.return_crit_edge200
    i32 16915, label %entry.return_crit_edge201
    i32 16916, label %entry.return_crit_edge202
    i32 16917, label %entry.return_crit_edge203
    i32 16918, label %entry.return_crit_edge204
    i32 16919, label %entry.return_crit_edge205
    i32 16920, label %entry.return_crit_edge206
    i32 16921, label %entry.return_crit_edge207
    i32 16922, label %entry.return_crit_edge208
    i32 16923, label %entry.return_crit_edge209
    i32 16924, label %entry.return_crit_edge210
    i32 16925, label %entry.return_crit_edge211
    i32 17408, label %entry.return_crit_edge212
    i32 17409, label %entry.return_crit_edge213
    i32 17920, label %entry.return_crit_edge214
    i32 17921, label %entry.return_crit_edge215
    i32 17922, label %entry.return_crit_edge216
    i32 17923, label %entry.return_crit_edge217
    i32 17924, label %entry.return_crit_edge218
    i32 17925, label %entry.return_crit_edge219
    i32 17926, label %entry.return_crit_edge220
    i32 17927, label %entry.return_crit_edge221
    i32 17928, label %entry.return_crit_edge222
    i32 17929, label %entry.return_crit_edge223
    i32 17930, label %entry.return_crit_edge224
    i32 17931, label %entry.return_crit_edge225
    i32 17932, label %entry.return_crit_edge226
    i32 17933, label %entry.return_crit_edge227
    i32 17934, label %entry.return_crit_edge228
    i32 17935, label %entry.return_crit_edge229
    i32 17936, label %entry.return_crit_edge230
    i32 17937, label %entry.return_crit_edge231
    i32 17938, label %entry.return_crit_edge232
    i32 17939, label %entry.return_crit_edge233
    i32 17940, label %entry.return_crit_edge234
    i32 17941, label %entry.return_crit_edge235
    i32 17942, label %entry.return_crit_edge236
    i32 17943, label %entry.return_crit_edge237
    i32 17944, label %entry.return_crit_edge238
    i32 17945, label %entry.return_crit_edge239
    i32 17946, label %entry.return_crit_edge240
    i32 17947, label %entry.return_crit_edge241
    i32 17948, label %entry.return_crit_edge242
    i32 17949, label %entry.return_crit_edge243
    i32 17950, label %entry.return_crit_edge244
    i32 17951, label %entry.return_crit_edge245
    i32 17952, label %entry.return_crit_edge246
    i32 17953, label %entry.return_crit_edge247
    i32 17954, label %entry.return_crit_edge248
    i32 17955, label %entry.return_crit_edge249
    i32 17956, label %entry.return_crit_edge250
    i32 17957, label %entry.return_crit_edge251
    i32 17958, label %entry.return_crit_edge252
    i32 17959, label %entry.return_crit_edge253
    i32 17960, label %entry.return_crit_edge254
    i32 17961, label %entry.return_crit_edge255
    i32 17962, label %entry.return_crit_edge256
    i32 17963, label %entry.return_crit_edge257
    i32 17964, label %entry.return_crit_edge258
    i32 17965, label %entry.return_crit_edge259
    i32 17966, label %entry.return_crit_edge260
    i32 17967, label %entry.return_crit_edge261
    i32 17968, label %entry.return_crit_edge262
    i32 17969, label %entry.return_crit_edge263
    i32 17970, label %entry.return_crit_edge264
    i32 17971, label %entry.return_crit_edge265
    i32 17972, label %entry.return_crit_edge266
    i32 17973, label %entry.return_crit_edge267
    i32 17974, label %entry.return_crit_edge268
    i32 17975, label %entry.return_crit_edge269
    i32 17976, label %entry.return_crit_edge270
    i32 17977, label %entry.return_crit_edge271
    i32 17978, label %entry.return_crit_edge272
    i32 17979, label %entry.return_crit_edge273
    i32 17980, label %entry.return_crit_edge274
    i32 17981, label %entry.return_crit_edge275
    i32 17982, label %entry.return_crit_edge276
    i32 17983, label %entry.return_crit_edge277
    i32 18432, label %entry.return_crit_edge278
    i32 18433, label %entry.return_crit_edge279
    i32 18434, label %entry.return_crit_edge280
    i32 18435, label %entry.return_crit_edge281
    i32 18944, label %entry.return_crit_edge282
    i32 18945, label %entry.return_crit_edge283
    i32 18946, label %entry.return_crit_edge284
    i32 18947, label %entry.return_crit_edge285
    i32 18948, label %entry.return_crit_edge286
    i32 18949, label %entry.return_crit_edge287
    i32 18950, label %entry.return_crit_edge288
    i32 18951, label %entry.return_crit_edge289
    i32 18952, label %entry.return_crit_edge290
    i32 18953, label %entry.return_crit_edge291
    i32 18954, label %entry.return_crit_edge292
    i32 18955, label %entry.return_crit_edge293
    i32 18956, label %entry.return_crit_edge294
    i32 18957, label %entry.return_crit_edge295
    i32 18958, label %entry.return_crit_edge296
    i32 18959, label %entry.return_crit_edge297
    i32 18960, label %entry.return_crit_edge298
    i32 18961, label %entry.return_crit_edge299
    i32 18962, label %entry.return_crit_edge300
    i32 18963, label %entry.return_crit_edge301
    i32 18964, label %entry.return_crit_edge302
    i32 18965, label %entry.return_crit_edge303
    i32 18966, label %entry.return_crit_edge304
    i32 18967, label %entry.return_crit_edge305
    i32 18968, label %entry.return_crit_edge306
    i32 18969, label %entry.return_crit_edge307
    i32 18970, label %entry.return_crit_edge308
    i32 18971, label %entry.return_crit_edge309
    i32 18972, label %entry.return_crit_edge310
    i32 18973, label %entry.return_crit_edge311
    i32 18974, label %entry.return_crit_edge312
    i32 18975, label %entry.return_crit_edge313
    i32 18976, label %entry.return_crit_edge314
    i32 18977, label %entry.return_crit_edge315
    i32 18978, label %entry.return_crit_edge316
    i32 18979, label %entry.return_crit_edge317
    i32 18980, label %entry.return_crit_edge318
    i32 18981, label %entry.return_crit_edge319
    i32 18982, label %entry.return_crit_edge320
    i32 18983, label %entry.return_crit_edge321
    i32 18984, label %entry.return_crit_edge322
    i32 18985, label %entry.return_crit_edge323
    i32 18986, label %entry.return_crit_edge324
    i32 18987, label %entry.return_crit_edge325
    i32 18988, label %entry.return_crit_edge326
    i32 18989, label %entry.return_crit_edge327
    i32 18990, label %entry.return_crit_edge328
    i32 18991, label %entry.return_crit_edge329
    i32 18992, label %entry.return_crit_edge330
    i32 18993, label %entry.return_crit_edge331
    i32 18994, label %entry.return_crit_edge332
    i32 18995, label %entry.return_crit_edge333
    i32 18996, label %entry.return_crit_edge334
    i32 18997, label %entry.return_crit_edge335
    i32 18998, label %entry.return_crit_edge336
    i32 18999, label %entry.return_crit_edge337
    i32 19000, label %entry.return_crit_edge338
    i32 19001, label %entry.return_crit_edge339
    i32 19002, label %entry.return_crit_edge340
    i32 19003, label %entry.return_crit_edge341
    i32 19004, label %entry.return_crit_edge342
    i32 19005, label %entry.return_crit_edge343
    i32 19006, label %entry.return_crit_edge344
    i32 19007, label %entry.return_crit_edge345
    i32 19456, label %entry.return_crit_edge346
    i32 19457, label %entry.return_crit_edge347
    i32 19458, label %entry.return_crit_edge348
    i32 19459, label %entry.return_crit_edge349
    i32 19460, label %entry.return_crit_edge350
    i32 19461, label %entry.return_crit_edge351
    i32 19462, label %entry.return_crit_edge352
    i32 19463, label %entry.return_crit_edge353
    i32 19464, label %entry.return_crit_edge354
    i32 19465, label %entry.return_crit_edge355
    i32 19466, label %entry.return_crit_edge356
    i32 19467, label %entry.return_crit_edge357
    i32 19468, label %entry.return_crit_edge358
    i32 19469, label %entry.return_crit_edge359
    i32 19470, label %entry.return_crit_edge360
    i32 19471, label %entry.return_crit_edge361
    i32 19472, label %entry.return_crit_edge362
    i32 19473, label %entry.return_crit_edge363
    i32 19474, label %entry.return_crit_edge364
    i32 19475, label %entry.return_crit_edge365
    i32 19476, label %entry.return_crit_edge366
    i32 19477, label %entry.return_crit_edge367
    i32 19478, label %entry.return_crit_edge368
    i32 19479, label %entry.return_crit_edge369
    i32 19480, label %entry.return_crit_edge370
    i32 19481, label %entry.return_crit_edge371
    i32 19482, label %entry.return_crit_edge372
    i32 19483, label %entry.return_crit_edge373
    i32 19484, label %entry.return_crit_edge374
    i32 19485, label %entry.return_crit_edge375
    i32 19486, label %entry.return_crit_edge376
    i32 19487, label %entry.return_crit_edge377
    i32 19488, label %entry.return_crit_edge378
    i32 19489, label %entry.return_crit_edge379
    i32 19490, label %entry.return_crit_edge380
    i32 19491, label %entry.return_crit_edge381
    i32 19492, label %entry.return_crit_edge382
    i32 19493, label %entry.return_crit_edge383
    i32 19494, label %entry.return_crit_edge384
    i32 19495, label %entry.return_crit_edge385
    i32 19496, label %entry.return_crit_edge386
    i32 19497, label %entry.return_crit_edge387
    i32 19498, label %entry.return_crit_edge388
    i32 19499, label %entry.return_crit_edge389
    i32 19500, label %entry.return_crit_edge390
    i32 19501, label %entry.return_crit_edge391
    i32 19502, label %entry.return_crit_edge392
    i32 19503, label %entry.return_crit_edge393
    i32 19504, label %entry.return_crit_edge394
    i32 19505, label %entry.return_crit_edge395
    i32 19506, label %entry.return_crit_edge396
    i32 19507, label %entry.return_crit_edge397
    i32 19508, label %entry.return_crit_edge398
    i32 19509, label %entry.return_crit_edge399
    i32 19510, label %entry.return_crit_edge400
    i32 19511, label %entry.return_crit_edge401
    i32 19512, label %entry.return_crit_edge402
    i32 19513, label %entry.return_crit_edge403
    i32 19514, label %entry.return_crit_edge404
    i32 19515, label %entry.return_crit_edge405
    i32 19516, label %entry.return_crit_edge406
    i32 19517, label %entry.return_crit_edge407
    i32 19518, label %entry.return_crit_edge408
    i32 19519, label %entry.return_crit_edge409
    i32 19968, label %entry.return_crit_edge410
    i32 19969, label %entry.return_crit_edge411
    i32 19970, label %entry.return_crit_edge412
    i32 19971, label %entry.return_crit_edge413
    i32 20480, label %entry.return_crit_edge414
    i32 20481, label %entry.return_crit_edge415
    i32 20482, label %entry.return_crit_edge416
    i32 20483, label %entry.return_crit_edge417
    i32 20484, label %entry.return_crit_edge418
    i32 20485, label %entry.return_crit_edge419
    i32 20486, label %entry.return_crit_edge420
    i32 20487, label %entry.return_crit_edge421
    i32 20488, label %entry.return_crit_edge422
    i32 20489, label %entry.return_crit_edge423
    i32 20490, label %entry.return_crit_edge424
    i32 20491, label %entry.return_crit_edge425
    i32 20492, label %entry.return_crit_edge426
    i32 20493, label %entry.return_crit_edge427
    i32 20494, label %entry.return_crit_edge428
    i32 20495, label %entry.return_crit_edge429
    i32 20496, label %entry.return_crit_edge430
    i32 20497, label %entry.return_crit_edge431
    i32 20498, label %entry.return_crit_edge432
    i32 20499, label %entry.return_crit_edge433
    i32 20500, label %entry.return_crit_edge434
    i32 20501, label %entry.return_crit_edge435
    i32 20502, label %entry.return_crit_edge436
    i32 20503, label %entry.return_crit_edge437
    i32 20504, label %entry.return_crit_edge438
    i32 20505, label %entry.return_crit_edge439
    i32 20506, label %entry.return_crit_edge440
    i32 20507, label %entry.return_crit_edge441
    i32 20508, label %entry.return_crit_edge442
    i32 20509, label %entry.return_crit_edge443
    i32 20510, label %entry.return_crit_edge444
    i32 20511, label %entry.return_crit_edge445
    i32 20512, label %entry.return_crit_edge446
    i32 20513, label %entry.return_crit_edge447
    i32 20514, label %entry.return_crit_edge448
    i32 20515, label %entry.return_crit_edge449
    i32 20516, label %entry.return_crit_edge450
    i32 20517, label %entry.return_crit_edge451
    i32 20518, label %entry.return_crit_edge452
    i32 20519, label %entry.return_crit_edge453
    i32 20520, label %entry.return_crit_edge454
    i32 20521, label %entry.return_crit_edge455
    i32 20522, label %entry.return_crit_edge456
    i32 20523, label %entry.return_crit_edge457
    i32 20524, label %entry.return_crit_edge458
    i32 20525, label %entry.return_crit_edge459
    i32 20526, label %entry.return_crit_edge460
    i32 20527, label %entry.return_crit_edge461
    i32 20528, label %entry.return_crit_edge462
    i32 20529, label %entry.return_crit_edge463
    i32 20530, label %entry.return_crit_edge464
    i32 20531, label %entry.return_crit_edge465
    i32 20532, label %entry.return_crit_edge466
    i32 20533, label %entry.return_crit_edge467
    i32 20534, label %entry.return_crit_edge468
    i32 20535, label %entry.return_crit_edge469
    i32 20536, label %entry.return_crit_edge470
    i32 20537, label %entry.return_crit_edge471
    i32 20538, label %entry.return_crit_edge472
    i32 20539, label %entry.return_crit_edge473
    i32 20540, label %entry.return_crit_edge474
    i32 20541, label %entry.return_crit_edge475
    i32 20542, label %entry.return_crit_edge476
    i32 20543, label %entry.return_crit_edge477
    i32 20992, label %entry.return_crit_edge478
    i32 20993, label %entry.return_crit_edge479
    i32 20994, label %entry.return_crit_edge480
    i32 20995, label %entry.return_crit_edge481
    i32 20996, label %entry.return_crit_edge482
    i32 20997, label %entry.return_crit_edge483
    i32 20998, label %entry.return_crit_edge484
    i32 20999, label %entry.return_crit_edge485
    i32 21000, label %entry.return_crit_edge486
    i32 21001, label %entry.return_crit_edge487
    i32 21002, label %entry.return_crit_edge488
    i32 21003, label %entry.return_crit_edge489
    i32 21004, label %entry.return_crit_edge490
    i32 21005, label %entry.return_crit_edge491
    i32 21006, label %entry.return_crit_edge492
    i32 21007, label %entry.return_crit_edge493
    i32 21008, label %entry.return_crit_edge494
    i32 21009, label %entry.return_crit_edge495
    i32 21010, label %entry.return_crit_edge496
    i32 21011, label %entry.return_crit_edge497
    i32 21012, label %entry.return_crit_edge498
    i32 21013, label %entry.return_crit_edge499
    i32 21014, label %entry.return_crit_edge500
    i32 21015, label %entry.return_crit_edge501
    i32 21016, label %entry.return_crit_edge502
    i32 21017, label %entry.return_crit_edge503
    i32 21018, label %entry.return_crit_edge504
    i32 21019, label %entry.return_crit_edge505
    i32 21020, label %entry.return_crit_edge506
    i32 21021, label %entry.return_crit_edge507
    i32 21022, label %entry.return_crit_edge508
    i32 21023, label %entry.return_crit_edge509
    i32 21024, label %entry.return_crit_edge510
    i32 21025, label %entry.return_crit_edge511
    i32 21026, label %entry.return_crit_edge512
    i32 21027, label %entry.return_crit_edge513
    i32 21028, label %entry.return_crit_edge514
    i32 21029, label %entry.return_crit_edge515
    i32 21030, label %entry.return_crit_edge516
    i32 21031, label %entry.return_crit_edge517
    i32 21032, label %entry.return_crit_edge518
    i32 21033, label %entry.return_crit_edge519
    i32 21034, label %entry.return_crit_edge520
    i32 21035, label %entry.return_crit_edge521
    i32 21036, label %entry.return_crit_edge522
    i32 21037, label %entry.return_crit_edge523
    i32 21038, label %entry.return_crit_edge524
    i32 21039, label %entry.return_crit_edge525
    i32 21040, label %entry.return_crit_edge526
    i32 21041, label %entry.return_crit_edge527
    i32 21042, label %entry.return_crit_edge528
    i32 21043, label %entry.return_crit_edge529
    i32 21044, label %entry.return_crit_edge530
    i32 21045, label %entry.return_crit_edge531
    i32 21046, label %entry.return_crit_edge532
    i32 21047, label %entry.return_crit_edge533
    i32 21048, label %entry.return_crit_edge534
    i32 21049, label %entry.return_crit_edge535
    i32 21050, label %entry.return_crit_edge536
    i32 21051, label %entry.return_crit_edge537
    i32 21052, label %entry.return_crit_edge538
    i32 21053, label %entry.return_crit_edge539
    i32 21054, label %entry.return_crit_edge540
    i32 21055, label %entry.return_crit_edge541
    i32 21056, label %entry.return_crit_edge542
    i32 21057, label %entry.return_crit_edge543
    i32 21058, label %entry.return_crit_edge544
    i32 21059, label %entry.return_crit_edge545
    i32 21060, label %entry.return_crit_edge546
    i32 21061, label %entry.return_crit_edge547
    i32 21062, label %entry.return_crit_edge548
    i32 21063, label %entry.return_crit_edge549
    i32 21064, label %entry.return_crit_edge550
    i32 21065, label %entry.return_crit_edge551
    i32 21066, label %entry.return_crit_edge552
    i32 21067, label %entry.return_crit_edge553
    i32 21068, label %entry.return_crit_edge554
    i32 21069, label %entry.return_crit_edge555
    i32 21070, label %entry.return_crit_edge556
    i32 21071, label %entry.return_crit_edge557
    i32 21072, label %entry.return_crit_edge558
    i32 21073, label %entry.return_crit_edge559
    i32 21074, label %entry.return_crit_edge560
    i32 21075, label %entry.return_crit_edge561
    i32 21076, label %entry.return_crit_edge562
    i32 21077, label %entry.return_crit_edge563
    i32 21078, label %entry.return_crit_edge564
    i32 21079, label %entry.return_crit_edge565
    i32 21080, label %entry.return_crit_edge566
    i32 21081, label %entry.return_crit_edge567
    i32 21082, label %entry.return_crit_edge568
    i32 21083, label %entry.return_crit_edge569
    i32 21084, label %entry.return_crit_edge570
    i32 21085, label %entry.return_crit_edge571
    i32 21086, label %entry.return_crit_edge572
    i32 21087, label %entry.return_crit_edge573
    i32 21088, label %entry.return_crit_edge574
    i32 21089, label %entry.return_crit_edge575
    i32 21090, label %entry.return_crit_edge576
    i32 21091, label %entry.return_crit_edge577
    i32 21092, label %entry.return_crit_edge578
    i32 21093, label %entry.return_crit_edge579
    i32 21094, label %entry.return_crit_edge580
    i32 21095, label %entry.return_crit_edge581
    i32 21096, label %entry.return_crit_edge582
    i32 21097, label %entry.return_crit_edge583
    i32 21098, label %entry.return_crit_edge584
    i32 21099, label %entry.return_crit_edge585
    i32 21100, label %entry.return_crit_edge586
    i32 21101, label %entry.return_crit_edge587
    i32 21102, label %entry.return_crit_edge588
    i32 21103, label %entry.return_crit_edge589
    i32 21104, label %entry.return_crit_edge590
    i32 21105, label %entry.return_crit_edge591
    i32 21106, label %entry.return_crit_edge592
    i32 21107, label %entry.return_crit_edge593
    i32 21108, label %entry.return_crit_edge594
    i32 21109, label %entry.return_crit_edge595
    i32 21110, label %entry.return_crit_edge596
    i32 21111, label %entry.return_crit_edge597
    i32 21112, label %entry.return_crit_edge598
    i32 21113, label %entry.return_crit_edge599
    i32 21114, label %entry.return_crit_edge600
    i32 21115, label %entry.return_crit_edge601
    i32 21116, label %entry.return_crit_edge602
    i32 21117, label %entry.return_crit_edge603
    i32 21118, label %entry.return_crit_edge604
    i32 21119, label %entry.return_crit_edge605
    i32 21120, label %entry.return_crit_edge606
    i32 21121, label %entry.return_crit_edge607
    i32 21122, label %entry.return_crit_edge608
    i32 21123, label %entry.return_crit_edge609
    i32 21124, label %entry.return_crit_edge610
    i32 21125, label %entry.return_crit_edge611
    i32 21126, label %entry.return_crit_edge612
    i32 21127, label %entry.return_crit_edge613
    i32 21128, label %entry.return_crit_edge614
    i32 21129, label %entry.return_crit_edge615
    i32 21130, label %entry.return_crit_edge616
    i32 21131, label %entry.return_crit_edge617
    i32 21132, label %entry.return_crit_edge618
    i32 21133, label %entry.return_crit_edge619
    i32 21134, label %entry.return_crit_edge620
    i32 21135, label %entry.return_crit_edge621
    i32 21136, label %entry.return_crit_edge622
    i32 21137, label %entry.return_crit_edge623
    i32 21138, label %entry.return_crit_edge624
    i32 21139, label %entry.return_crit_edge625
  ]

entry.return_crit_edge625:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge624:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge623:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge622:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge621:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge620:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge619:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge618:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge617:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge616:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge615:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge614:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge613:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge612:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge611:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge610:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge609:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge608:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge607:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge606:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge605:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge604:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge603:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge602:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge601:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge600:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge599:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge598:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge597:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge596:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge595:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge594:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge593:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge592:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge591:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge590:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge589:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge588:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge587:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge586:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge585:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge584:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge583:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge582:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge581:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge580:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge579:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge578:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge577:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge576:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge575:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge574:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge573:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge572:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge571:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge570:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge569:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge568:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge567:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge566:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge565:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge564:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge563:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge562:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge561:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge560:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge559:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge558:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge557:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge556:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge555:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge554:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge553:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge552:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge551:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge550:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge549:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge548:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge547:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge546:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge545:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge544:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge543:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge542:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge541:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge540:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge539:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge538:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge537:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge536:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge535:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge534:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge533:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge532:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge531:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge530:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge529:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge528:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge527:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge526:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge525:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge524:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge523:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge522:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge521:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge520:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge519:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge518:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge517:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge516:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge515:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge514:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge513:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge512:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge511:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge510:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge509:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge508:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge507:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge506:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge505:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge504:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge503:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge502:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge501:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge500:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge499:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge498:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge497:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge496:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge495:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge494:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge493:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge492:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge491:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge490:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge489:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge488:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge487:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge486:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge485:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge484:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge483:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge482:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge481:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge480:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge479:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge478:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge477:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge476:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge475:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge474:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge473:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge472:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge471:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge470:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge469:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge468:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge467:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge466:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge465:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge464:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge463:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge462:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge461:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge460:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge459:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge458:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge457:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge456:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge455:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge454:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge453:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge452:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge451:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge450:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge449:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge448:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge447:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge446:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge445:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge444:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge443:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge442:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge441:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge440:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge439:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge438:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge437:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge436:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge435:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge434:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge433:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge432:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge431:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge430:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge429:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge428:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge427:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge426:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge425:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge424:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge423:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge422:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge421:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge420:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge419:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge418:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge417:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge416:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge415:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge414:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge413:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge412:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge411:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge410:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge409:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge408:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge407:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge406:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge405:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge404:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge403:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge402:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge401:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge400:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge399:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge398:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge397:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge396:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge395:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge394:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge393:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge392:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge391:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge390:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge389:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge388:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge387:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge386:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge384:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge383:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge382:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge381:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge380:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge379:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge378:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge377:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge376:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge375:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge374:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge373:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge372:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge371:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge370:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge369:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge368:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge367:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge366:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge365:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge364:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge363:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge362:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge361:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge360:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge359:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge358:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge357:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge356:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge355:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge354:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge353:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge352:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge351:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge350:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge349:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge348:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge347:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge346:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge345:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge344:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge343:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge342:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge338:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge337:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge336:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge335:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge334:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge333:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge332:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge331:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge330:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge329:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge328:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge327:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge326:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge325:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge324:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge323:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge322:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge321:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge320:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge319:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge318:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge317:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge316:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge315:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge314:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge313:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge312:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge311:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge310:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge309:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge308:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge307:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge306:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge305:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge304:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge303:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge302:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge301:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge300:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge299:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge298:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge297:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge296:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge295:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge294:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge293:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge292:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge291:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge290:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge289:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge288:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge287:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge286:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge285:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge284:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge283:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge282:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge281:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge280:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge279:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge278:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge277:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge276:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge275:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge274:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge273:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge272:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge271:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge270:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge269:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge268:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge267:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge266:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge265:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge264:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge263:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge262:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261, %entry.return_crit_edge262, %entry.return_crit_edge263, %entry.return_crit_edge264, %entry.return_crit_edge265, %entry.return_crit_edge266, %entry.return_crit_edge267, %entry.return_crit_edge268, %entry.return_crit_edge269, %entry.return_crit_edge270, %entry.return_crit_edge271, %entry.return_crit_edge272, %entry.return_crit_edge273, %entry.return_crit_edge274, %entry.return_crit_edge275, %entry.return_crit_edge276, %entry.return_crit_edge277, %entry.return_crit_edge278, %entry.return_crit_edge279, %entry.return_crit_edge280, %entry.return_crit_edge281, %entry.return_crit_edge282, %entry.return_crit_edge283, %entry.return_crit_edge284, %entry.return_crit_edge285, %entry.return_crit_edge286, %entry.return_crit_edge287, %entry.return_crit_edge288, %entry.return_crit_edge289, %entry.return_crit_edge290, %entry.return_crit_edge291, %entry.return_crit_edge292, %entry.return_crit_edge293, %entry.return_crit_edge294, %entry.return_crit_edge295, %entry.return_crit_edge296, %entry.return_crit_edge297, %entry.return_crit_edge298, %entry.return_crit_edge299, %entry.return_crit_edge300, %entry.return_crit_edge301, %entry.return_crit_edge302, %entry.return_crit_edge303, %entry.return_crit_edge304, %entry.return_crit_edge305, %entry.return_crit_edge306, %entry.return_crit_edge307, %entry.return_crit_edge308, %entry.return_crit_edge309, %entry.return_crit_edge310, %entry.return_crit_edge311, %entry.return_crit_edge312, %entry.return_crit_edge313, %entry.return_crit_edge314, %entry.return_crit_edge315, %entry.return_crit_edge316, %entry.return_crit_edge317, %entry.return_crit_edge318, %entry.return_crit_edge319, %entry.return_crit_edge320, %entry.return_crit_edge321, %entry.return_crit_edge322, %entry.return_crit_edge323, %entry.return_crit_edge324, %entry.return_crit_edge325, %entry.return_crit_edge326, %entry.return_crit_edge327, %entry.return_crit_edge328, %entry.return_crit_edge329, %entry.return_crit_edge330, %entry.return_crit_edge331, %entry.return_crit_edge332, %entry.return_crit_edge333, %entry.return_crit_edge334, %entry.return_crit_edge335, %entry.return_crit_edge336, %entry.return_crit_edge337, %entry.return_crit_edge338, %entry.return_crit_edge339, %entry.return_crit_edge340, %entry.return_crit_edge341, %entry.return_crit_edge342, %entry.return_crit_edge343, %entry.return_crit_edge344, %entry.return_crit_edge345, %entry.return_crit_edge346, %entry.return_crit_edge347, %entry.return_crit_edge348, %entry.return_crit_edge349, %entry.return_crit_edge350, %entry.return_crit_edge351, %entry.return_crit_edge352, %entry.return_crit_edge353, %entry.return_crit_edge354, %entry.return_crit_edge355, %entry.return_crit_edge356, %entry.return_crit_edge357, %entry.return_crit_edge358, %entry.return_crit_edge359, %entry.return_crit_edge360, %entry.return_crit_edge361, %entry.return_crit_edge362, %entry.return_crit_edge363, %entry.return_crit_edge364, %entry.return_crit_edge365, %entry.return_crit_edge366, %entry.return_crit_edge367, %entry.return_crit_edge368, %entry.return_crit_edge369, %entry.return_crit_edge370, %entry.return_crit_edge371, %entry.return_crit_edge372, %entry.return_crit_edge373, %entry.return_crit_edge374, %entry.return_crit_edge375, %entry.return_crit_edge376, %entry.return_crit_edge377, %entry.return_crit_edge378, %entry.return_crit_edge379, %entry.return_crit_edge380, %entry.return_crit_edge381, %entry.return_crit_edge382, %entry.return_crit_edge383, %entry.return_crit_edge384, %entry.return_crit_edge385, %entry.return_crit_edge386, %entry.return_crit_edge387, %entry.return_crit_edge388, %entry.return_crit_edge389, %entry.return_crit_edge390, %entry.return_crit_edge391, %entry.return_crit_edge392, %entry.return_crit_edge393, %entry.return_crit_edge394, %entry.return_crit_edge395, %entry.return_crit_edge396, %entry.return_crit_edge397, %entry.return_crit_edge398, %entry.return_crit_edge399, %entry.return_crit_edge400, %entry.return_crit_edge401, %entry.return_crit_edge402, %entry.return_crit_edge403, %entry.return_crit_edge404, %entry.return_crit_edge405, %entry.return_crit_edge406, %entry.return_crit_edge407, %entry.return_crit_edge408, %entry.return_crit_edge409, %entry.return_crit_edge410, %entry.return_crit_edge411, %entry.return_crit_edge412, %entry.return_crit_edge413, %entry.return_crit_edge414, %entry.return_crit_edge415, %entry.return_crit_edge416, %entry.return_crit_edge417, %entry.return_crit_edge418, %entry.return_crit_edge419, %entry.return_crit_edge420, %entry.return_crit_edge421, %entry.return_crit_edge422, %entry.return_crit_edge423, %entry.return_crit_edge424, %entry.return_crit_edge425, %entry.return_crit_edge426, %entry.return_crit_edge427, %entry.return_crit_edge428, %entry.return_crit_edge429, %entry.return_crit_edge430, %entry.return_crit_edge431, %entry.return_crit_edge432, %entry.return_crit_edge433, %entry.return_crit_edge434, %entry.return_crit_edge435, %entry.return_crit_edge436, %entry.return_crit_edge437, %entry.return_crit_edge438, %entry.return_crit_edge439, %entry.return_crit_edge440, %entry.return_crit_edge441, %entry.return_crit_edge442, %entry.return_crit_edge443, %entry.return_crit_edge444, %entry.return_crit_edge445, %entry.return_crit_edge446, %entry.return_crit_edge447, %entry.return_crit_edge448, %entry.return_crit_edge449, %entry.return_crit_edge450, %entry.return_crit_edge451, %entry.return_crit_edge452, %entry.return_crit_edge453, %entry.return_crit_edge454, %entry.return_crit_edge455, %entry.return_crit_edge456, %entry.return_crit_edge457, %entry.return_crit_edge458, %entry.return_crit_edge459, %entry.return_crit_edge460, %entry.return_crit_edge461, %entry.return_crit_edge462, %entry.return_crit_edge463, %entry.return_crit_edge464, %entry.return_crit_edge465, %entry.return_crit_edge466, %entry.return_crit_edge467, %entry.return_crit_edge468, %entry.return_crit_edge469, %entry.return_crit_edge470, %entry.return_crit_edge471, %entry.return_crit_edge472, %entry.return_crit_edge473, %entry.return_crit_edge474, %entry.return_crit_edge475, %entry.return_crit_edge476, %entry.return_crit_edge477, %entry.return_crit_edge478, %entry.return_crit_edge479, %entry.return_crit_edge480, %entry.return_crit_edge481, %entry.return_crit_edge482, %entry.return_crit_edge483, %entry.return_crit_edge484, %entry.return_crit_edge485, %entry.return_crit_edge486, %entry.return_crit_edge487, %entry.return_crit_edge488, %entry.return_crit_edge489, %entry.return_crit_edge490, %entry.return_crit_edge491, %entry.return_crit_edge492, %entry.return_crit_edge493, %entry.return_crit_edge494, %entry.return_crit_edge495, %entry.return_crit_edge496, %entry.return_crit_edge497, %entry.return_crit_edge498, %entry.return_crit_edge499, %entry.return_crit_edge500, %entry.return_crit_edge501, %entry.return_crit_edge502, %entry.return_crit_edge503, %entry.return_crit_edge504, %entry.return_crit_edge505, %entry.return_crit_edge506, %entry.return_crit_edge507, %entry.return_crit_edge508, %entry.return_crit_edge509, %entry.return_crit_edge510, %entry.return_crit_edge511, %entry.return_crit_edge512, %entry.return_crit_edge513, %entry.return_crit_edge514, %entry.return_crit_edge515, %entry.return_crit_edge516, %entry.return_crit_edge517, %entry.return_crit_edge518, %entry.return_crit_edge519, %entry.return_crit_edge520, %entry.return_crit_edge521, %entry.return_crit_edge522, %entry.return_crit_edge523, %entry.return_crit_edge524, %entry.return_crit_edge525, %entry.return_crit_edge526, %entry.return_crit_edge527, %entry.return_crit_edge528, %entry.return_crit_edge529, %entry.return_crit_edge530, %entry.return_crit_edge531, %entry.return_crit_edge532, %entry.return_crit_edge533, %entry.return_crit_edge534, %entry.return_crit_edge535, %entry.return_crit_edge536, %entry.return_crit_edge537, %entry.return_crit_edge538, %entry.return_crit_edge539, %entry.return_crit_edge540, %entry.return_crit_edge541, %entry.return_crit_edge542, %entry.return_crit_edge543, %entry.return_crit_edge544, %entry.return_crit_edge545, %entry.return_crit_edge546, %entry.return_crit_edge547, %entry.return_crit_edge548, %entry.return_crit_edge549, %entry.return_crit_edge550, %entry.return_crit_edge551, %entry.return_crit_edge552, %entry.return_crit_edge553, %entry.return_crit_edge554, %entry.return_crit_edge555, %entry.return_crit_edge556, %entry.return_crit_edge557, %entry.return_crit_edge558, %entry.return_crit_edge559, %entry.return_crit_edge560, %entry.return_crit_edge561, %entry.return_crit_edge562, %entry.return_crit_edge563, %entry.return_crit_edge564, %entry.return_crit_edge565, %entry.return_crit_edge566, %entry.return_crit_edge567, %entry.return_crit_edge568, %entry.return_crit_edge569, %entry.return_crit_edge570, %entry.return_crit_edge571, %entry.return_crit_edge572, %entry.return_crit_edge573, %entry.return_crit_edge574, %entry.return_crit_edge575, %entry.return_crit_edge576, %entry.return_crit_edge577, %entry.return_crit_edge578, %entry.return_crit_edge579, %entry.return_crit_edge580, %entry.return_crit_edge581, %entry.return_crit_edge582, %entry.return_crit_edge583, %entry.return_crit_edge584, %entry.return_crit_edge585, %entry.return_crit_edge586, %entry.return_crit_edge587, %entry.return_crit_edge588, %entry.return_crit_edge589, %entry.return_crit_edge590, %entry.return_crit_edge591, %entry.return_crit_edge592, %entry.return_crit_edge593, %entry.return_crit_edge594, %entry.return_crit_edge595, %entry.return_crit_edge596, %entry.return_crit_edge597, %entry.return_crit_edge598, %entry.return_crit_edge599, %entry.return_crit_edge600, %entry.return_crit_edge601, %entry.return_crit_edge602, %entry.return_crit_edge603, %entry.return_crit_edge604, %entry.return_crit_edge605, %entry.return_crit_edge606, %entry.return_crit_edge607, %entry.return_crit_edge608, %entry.return_crit_edge609, %entry.return_crit_edge610, %entry.return_crit_edge611, %entry.return_crit_edge612, %entry.return_crit_edge613, %entry.return_crit_edge614, %entry.return_crit_edge615, %entry.return_crit_edge616, %entry.return_crit_edge617, %entry.return_crit_edge618, %entry.return_crit_edge619, %entry.return_crit_edge620, %entry.return_crit_edge621, %entry.return_crit_edge622, %entry.return_crit_edge623, %entry.return_crit_edge624, %entry.return_crit_edge625
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ], [ true, %entry.return_crit_edge262 ], [ true, %entry.return_crit_edge263 ], [ true, %entry.return_crit_edge264 ], [ true, %entry.return_crit_edge265 ], [ true, %entry.return_crit_edge266 ], [ true, %entry.return_crit_edge267 ], [ true, %entry.return_crit_edge268 ], [ true, %entry.return_crit_edge269 ], [ true, %entry.return_crit_edge270 ], [ true, %entry.return_crit_edge271 ], [ true, %entry.return_crit_edge272 ], [ true, %entry.return_crit_edge273 ], [ true, %entry.return_crit_edge274 ], [ true, %entry.return_crit_edge275 ], [ true, %entry.return_crit_edge276 ], [ true, %entry.return_crit_edge277 ], [ true, %entry.return_crit_edge278 ], [ true, %entry.return_crit_edge279 ], [ true, %entry.return_crit_edge280 ], [ true, %entry.return_crit_edge281 ], [ true, %entry.return_crit_edge282 ], [ true, %entry.return_crit_edge283 ], [ true, %entry.return_crit_edge284 ], [ true, %entry.return_crit_edge285 ], [ true, %entry.return_crit_edge286 ], [ true, %entry.return_crit_edge287 ], [ true, %entry.return_crit_edge288 ], [ true, %entry.return_crit_edge289 ], [ true, %entry.return_crit_edge290 ], [ true, %entry.return_crit_edge291 ], [ true, %entry.return_crit_edge292 ], [ true, %entry.return_crit_edge293 ], [ true, %entry.return_crit_edge294 ], [ true, %entry.return_crit_edge295 ], [ true, %entry.return_crit_edge296 ], [ true, %entry.return_crit_edge297 ], [ true, %entry.return_crit_edge298 ], [ true, %entry.return_crit_edge299 ], [ true, %entry.return_crit_edge300 ], [ true, %entry.return_crit_edge301 ], [ true, %entry.return_crit_edge302 ], [ true, %entry.return_crit_edge303 ], [ true, %entry.return_crit_edge304 ], [ true, %entry.return_crit_edge305 ], [ true, %entry.return_crit_edge306 ], [ true, %entry.return_crit_edge307 ], [ true, %entry.return_crit_edge308 ], [ true, %entry.return_crit_edge309 ], [ true, %entry.return_crit_edge310 ], [ true, %entry.return_crit_edge311 ], [ true, %entry.return_crit_edge312 ], [ true, %entry.return_crit_edge313 ], [ true, %entry.return_crit_edge314 ], [ true, %entry.return_crit_edge315 ], [ true, %entry.return_crit_edge316 ], [ true, %entry.return_crit_edge317 ], [ true, %entry.return_crit_edge318 ], [ true, %entry.return_crit_edge319 ], [ true, %entry.return_crit_edge320 ], [ true, %entry.return_crit_edge321 ], [ true, %entry.return_crit_edge322 ], [ true, %entry.return_crit_edge323 ], [ true, %entry.return_crit_edge324 ], [ true, %entry.return_crit_edge325 ], [ true, %entry.return_crit_edge326 ], [ true, %entry.return_crit_edge327 ], [ true, %entry.return_crit_edge328 ], [ true, %entry.return_crit_edge329 ], [ true, %entry.return_crit_edge330 ], [ true, %entry.return_crit_edge331 ], [ true, %entry.return_crit_edge332 ], [ true, %entry.return_crit_edge333 ], [ true, %entry.return_crit_edge334 ], [ true, %entry.return_crit_edge335 ], [ true, %entry.return_crit_edge336 ], [ true, %entry.return_crit_edge337 ], [ true, %entry.return_crit_edge338 ], [ true, %entry.return_crit_edge339 ], [ true, %entry.return_crit_edge340 ], [ true, %entry.return_crit_edge341 ], [ true, %entry.return_crit_edge342 ], [ true, %entry.return_crit_edge343 ], [ true, %entry.return_crit_edge344 ], [ true, %entry.return_crit_edge345 ], [ true, %entry.return_crit_edge346 ], [ true, %entry.return_crit_edge347 ], [ true, %entry.return_crit_edge348 ], [ true, %entry.return_crit_edge349 ], [ true, %entry.return_crit_edge350 ], [ true, %entry.return_crit_edge351 ], [ true, %entry.return_crit_edge352 ], [ true, %entry.return_crit_edge353 ], [ true, %entry.return_crit_edge354 ], [ true, %entry.return_crit_edge355 ], [ true, %entry.return_crit_edge356 ], [ true, %entry.return_crit_edge357 ], [ true, %entry.return_crit_edge358 ], [ true, %entry.return_crit_edge359 ], [ true, %entry.return_crit_edge360 ], [ true, %entry.return_crit_edge361 ], [ true, %entry.return_crit_edge362 ], [ true, %entry.return_crit_edge363 ], [ true, %entry.return_crit_edge364 ], [ true, %entry.return_crit_edge365 ], [ true, %entry.return_crit_edge366 ], [ true, %entry.return_crit_edge367 ], [ true, %entry.return_crit_edge368 ], [ true, %entry.return_crit_edge369 ], [ true, %entry.return_crit_edge370 ], [ true, %entry.return_crit_edge371 ], [ true, %entry.return_crit_edge372 ], [ true, %entry.return_crit_edge373 ], [ true, %entry.return_crit_edge374 ], [ true, %entry.return_crit_edge375 ], [ true, %entry.return_crit_edge376 ], [ true, %entry.return_crit_edge377 ], [ true, %entry.return_crit_edge378 ], [ true, %entry.return_crit_edge379 ], [ true, %entry.return_crit_edge380 ], [ true, %entry.return_crit_edge381 ], [ true, %entry.return_crit_edge382 ], [ true, %entry.return_crit_edge383 ], [ true, %entry.return_crit_edge384 ], [ true, %entry.return_crit_edge385 ], [ true, %entry.return_crit_edge386 ], [ true, %entry.return_crit_edge387 ], [ true, %entry.return_crit_edge388 ], [ true, %entry.return_crit_edge389 ], [ true, %entry.return_crit_edge390 ], [ true, %entry.return_crit_edge391 ], [ true, %entry.return_crit_edge392 ], [ true, %entry.return_crit_edge393 ], [ true, %entry.return_crit_edge394 ], [ true, %entry.return_crit_edge395 ], [ true, %entry.return_crit_edge396 ], [ true, %entry.return_crit_edge397 ], [ true, %entry.return_crit_edge398 ], [ true, %entry.return_crit_edge399 ], [ true, %entry.return_crit_edge400 ], [ true, %entry.return_crit_edge401 ], [ true, %entry.return_crit_edge402 ], [ true, %entry.return_crit_edge403 ], [ true, %entry.return_crit_edge404 ], [ true, %entry.return_crit_edge405 ], [ true, %entry.return_crit_edge406 ], [ true, %entry.return_crit_edge407 ], [ true, %entry.return_crit_edge408 ], [ true, %entry.return_crit_edge409 ], [ true, %entry.return_crit_edge410 ], [ true, %entry.return_crit_edge411 ], [ true, %entry.return_crit_edge412 ], [ true, %entry.return_crit_edge413 ], [ true, %entry.return_crit_edge414 ], [ true, %entry.return_crit_edge415 ], [ true, %entry.return_crit_edge416 ], [ true, %entry.return_crit_edge417 ], [ true, %entry.return_crit_edge418 ], [ true, %entry.return_crit_edge419 ], [ true, %entry.return_crit_edge420 ], [ true, %entry.return_crit_edge421 ], [ true, %entry.return_crit_edge422 ], [ true, %entry.return_crit_edge423 ], [ true, %entry.return_crit_edge424 ], [ true, %entry.return_crit_edge425 ], [ true, %entry.return_crit_edge426 ], [ true, %entry.return_crit_edge427 ], [ true, %entry.return_crit_edge428 ], [ true, %entry.return_crit_edge429 ], [ true, %entry.return_crit_edge430 ], [ true, %entry.return_crit_edge431 ], [ true, %entry.return_crit_edge432 ], [ true, %entry.return_crit_edge433 ], [ true, %entry.return_crit_edge434 ], [ true, %entry.return_crit_edge435 ], [ true, %entry.return_crit_edge436 ], [ true, %entry.return_crit_edge437 ], [ true, %entry.return_crit_edge438 ], [ true, %entry.return_crit_edge439 ], [ true, %entry.return_crit_edge440 ], [ true, %entry.return_crit_edge441 ], [ true, %entry.return_crit_edge442 ], [ true, %entry.return_crit_edge443 ], [ true, %entry.return_crit_edge444 ], [ true, %entry.return_crit_edge445 ], [ true, %entry.return_crit_edge446 ], [ true, %entry.return_crit_edge447 ], [ true, %entry.return_crit_edge448 ], [ true, %entry.return_crit_edge449 ], [ true, %entry.return_crit_edge450 ], [ true, %entry.return_crit_edge451 ], [ true, %entry.return_crit_edge452 ], [ true, %entry.return_crit_edge453 ], [ true, %entry.return_crit_edge454 ], [ true, %entry.return_crit_edge455 ], [ true, %entry.return_crit_edge456 ], [ true, %entry.return_crit_edge457 ], [ true, %entry.return_crit_edge458 ], [ true, %entry.return_crit_edge459 ], [ true, %entry.return_crit_edge460 ], [ true, %entry.return_crit_edge461 ], [ true, %entry.return_crit_edge462 ], [ true, %entry.return_crit_edge463 ], [ true, %entry.return_crit_edge464 ], [ true, %entry.return_crit_edge465 ], [ true, %entry.return_crit_edge466 ], [ true, %entry.return_crit_edge467 ], [ true, %entry.return_crit_edge468 ], [ true, %entry.return_crit_edge469 ], [ true, %entry.return_crit_edge470 ], [ true, %entry.return_crit_edge471 ], [ true, %entry.return_crit_edge472 ], [ true, %entry.return_crit_edge473 ], [ true, %entry.return_crit_edge474 ], [ true, %entry.return_crit_edge475 ], [ true, %entry.return_crit_edge476 ], [ true, %entry.return_crit_edge477 ], [ true, %entry.return_crit_edge478 ], [ true, %entry.return_crit_edge479 ], [ true, %entry.return_crit_edge480 ], [ true, %entry.return_crit_edge481 ], [ true, %entry.return_crit_edge482 ], [ true, %entry.return_crit_edge483 ], [ true, %entry.return_crit_edge484 ], [ true, %entry.return_crit_edge485 ], [ true, %entry.return_crit_edge486 ], [ true, %entry.return_crit_edge487 ], [ true, %entry.return_crit_edge488 ], [ true, %entry.return_crit_edge489 ], [ true, %entry.return_crit_edge490 ], [ true, %entry.return_crit_edge491 ], [ true, %entry.return_crit_edge492 ], [ true, %entry.return_crit_edge493 ], [ true, %entry.return_crit_edge494 ], [ true, %entry.return_crit_edge495 ], [ true, %entry.return_crit_edge496 ], [ true, %entry.return_crit_edge497 ], [ true, %entry.return_crit_edge498 ], [ true, %entry.return_crit_edge499 ], [ true, %entry.return_crit_edge500 ], [ true, %entry.return_crit_edge501 ], [ true, %entry.return_crit_edge502 ], [ true, %entry.return_crit_edge503 ], [ true, %entry.return_crit_edge504 ], [ true, %entry.return_crit_edge505 ], [ true, %entry.return_crit_edge506 ], [ true, %entry.return_crit_edge507 ], [ true, %entry.return_crit_edge508 ], [ true, %entry.return_crit_edge509 ], [ true, %entry.return_crit_edge510 ], [ true, %entry.return_crit_edge511 ], [ true, %entry.return_crit_edge512 ], [ true, %entry.return_crit_edge513 ], [ true, %entry.return_crit_edge514 ], [ true, %entry.return_crit_edge515 ], [ true, %entry.return_crit_edge516 ], [ true, %entry.return_crit_edge517 ], [ true, %entry.return_crit_edge518 ], [ true, %entry.return_crit_edge519 ], [ true, %entry.return_crit_edge520 ], [ true, %entry.return_crit_edge521 ], [ true, %entry.return_crit_edge522 ], [ true, %entry.return_crit_edge523 ], [ true, %entry.return_crit_edge524 ], [ true, %entry.return_crit_edge525 ], [ true, %entry.return_crit_edge526 ], [ true, %entry.return_crit_edge527 ], [ true, %entry.return_crit_edge528 ], [ true, %entry.return_crit_edge529 ], [ true, %entry.return_crit_edge530 ], [ true, %entry.return_crit_edge531 ], [ true, %entry.return_crit_edge532 ], [ true, %entry.return_crit_edge533 ], [ true, %entry.return_crit_edge534 ], [ true, %entry.return_crit_edge535 ], [ true, %entry.return_crit_edge536 ], [ true, %entry.return_crit_edge537 ], [ true, %entry.return_crit_edge538 ], [ true, %entry.return_crit_edge539 ], [ true, %entry.return_crit_edge540 ], [ true, %entry.return_crit_edge541 ], [ true, %entry.return_crit_edge542 ], [ true, %entry.return_crit_edge543 ], [ true, %entry.return_crit_edge544 ], [ true, %entry.return_crit_edge545 ], [ true, %entry.return_crit_edge546 ], [ true, %entry.return_crit_edge547 ], [ true, %entry.return_crit_edge548 ], [ true, %entry.return_crit_edge549 ], [ true, %entry.return_crit_edge550 ], [ true, %entry.return_crit_edge551 ], [ true, %entry.return_crit_edge552 ], [ true, %entry.return_crit_edge553 ], [ true, %entry.return_crit_edge554 ], [ true, %entry.return_crit_edge555 ], [ true, %entry.return_crit_edge556 ], [ true, %entry.return_crit_edge557 ], [ true, %entry.return_crit_edge558 ], [ true, %entry.return_crit_edge559 ], [ true, %entry.return_crit_edge560 ], [ true, %entry.return_crit_edge561 ], [ true, %entry.return_crit_edge562 ], [ true, %entry.return_crit_edge563 ], [ true, %entry.return_crit_edge564 ], [ true, %entry.return_crit_edge565 ], [ true, %entry.return_crit_edge566 ], [ true, %entry.return_crit_edge567 ], [ true, %entry.return_crit_edge568 ], [ true, %entry.return_crit_edge569 ], [ true, %entry.return_crit_edge570 ], [ true, %entry.return_crit_edge571 ], [ true, %entry.return_crit_edge572 ], [ true, %entry.return_crit_edge573 ], [ true, %entry.return_crit_edge574 ], [ true, %entry.return_crit_edge575 ], [ true, %entry.return_crit_edge576 ], [ true, %entry.return_crit_edge577 ], [ true, %entry.return_crit_edge578 ], [ true, %entry.return_crit_edge579 ], [ true, %entry.return_crit_edge580 ], [ true, %entry.return_crit_edge581 ], [ true, %entry.return_crit_edge582 ], [ true, %entry.return_crit_edge583 ], [ true, %entry.return_crit_edge584 ], [ true, %entry.return_crit_edge585 ], [ true, %entry.return_crit_edge586 ], [ true, %entry.return_crit_edge587 ], [ true, %entry.return_crit_edge588 ], [ true, %entry.return_crit_edge589 ], [ true, %entry.return_crit_edge590 ], [ true, %entry.return_crit_edge591 ], [ true, %entry.return_crit_edge592 ], [ true, %entry.return_crit_edge593 ], [ true, %entry.return_crit_edge594 ], [ true, %entry.return_crit_edge595 ], [ true, %entry.return_crit_edge596 ], [ true, %entry.return_crit_edge597 ], [ true, %entry.return_crit_edge598 ], [ true, %entry.return_crit_edge599 ], [ true, %entry.return_crit_edge600 ], [ true, %entry.return_crit_edge601 ], [ true, %entry.return_crit_edge602 ], [ true, %entry.return_crit_edge603 ], [ true, %entry.return_crit_edge604 ], [ true, %entry.return_crit_edge605 ], [ true, %entry.return_crit_edge606 ], [ true, %entry.return_crit_edge607 ], [ true, %entry.return_crit_edge608 ], [ true, %entry.return_crit_edge609 ], [ true, %entry.return_crit_edge610 ], [ true, %entry.return_crit_edge611 ], [ true, %entry.return_crit_edge612 ], [ true, %entry.return_crit_edge613 ], [ true, %entry.return_crit_edge614 ], [ true, %entry.return_crit_edge615 ], [ true, %entry.return_crit_edge616 ], [ true, %entry.return_crit_edge617 ], [ true, %entry.return_crit_edge618 ], [ true, %entry.return_crit_edge619 ], [ true, %entry.return_crit_edge620 ], [ true, %entry.return_crit_edge621 ], [ true, %entry.return_crit_edge622 ], [ true, %entry.return_crit_edge623 ], [ true, %entry.return_crit_edge624 ], [ true, %entry.return_crit_edge625 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8962_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.455)
  switch i32 %reg, label %sw.default [
    i32 4, label %entry.return_crit_edge
    i32 15, label %entry.return_crit_edge1
    i32 47, label %entry.return_crit_edge2
    i32 48, label %entry.return_crit_edge3
    i32 66, label %entry.return_crit_edge4
    i32 560, label %entry.return_crit_edge5
    i32 561, label %entry.return_crit_edge6
    i32 1037, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !785
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #13, !srcloc !786
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !787
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_snd_soc_jack_irq(ptr noundef %name) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 1), ptr blockaddress(@trace_snd_soc_jack_irq, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !788

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !773) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !789

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.93, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !773) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !790
  %call42 = tail call i32 @__traceiter_snd_soc_jack_irq(ptr noundef null, ptr noundef %name) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !791
  %13 = tail call i32 @llvm.read_register.i32(metadata !773) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !773) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !789

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.93, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !773) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !792
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_snd_soc_jack_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_snd_soc_jack_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.91, i32 noundef 226, ptr noundef nonnull @.str.92) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !793
  %31 = tail call i32 @llvm.read_register.i32(metadata !773) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_jack_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %component2 = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %component2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %component2, align 4
  %disable_nb = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %disable_nb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @wm8962_regulator_event_0, ptr %disable_nb, align 4
  %arrayidx4 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wm8962_regulator_event_1, ptr %arrayidx4, align 4
  %arrayidx7 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wm8962_regulator_event_2, ptr %arrayidx7, align 4
  %arrayidx10 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16, i32 3
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @wm8962_regulator_event_3, ptr %arrayidx10, align 4
  %arrayidx13 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16, i32 4
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wm8962_regulator_event_4, ptr %arrayidx13, align 4
  %arrayidx16 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16, i32 5
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wm8962_regulator_event_5, ptr %arrayidx16, align 4
  %arrayidx19 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16, i32 6
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wm8962_regulator_event_6, ptr %arrayidx19, align 4
  %arrayidx22 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 16, i32 7
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wm8962_regulator_event_7, ptr %arrayidx22, align 4
  %consumer = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 0, i32 1
  %13 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %consumer, align 4
  %call27 = tail call i32 @devm_regulator_register_notifier(ptr noundef %14, ptr noundef %disable_nb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %entry.for.inc_crit_edge, label %do.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.94, i32 noundef %call27) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %consumer.1 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 1, i32 1
  %17 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumer.1, align 4
  %call27.1 = tail call i32 @devm_regulator_register_notifier(ptr noundef %18, ptr noundef %arrayidx4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.1)
  %cmp28.not.1 = icmp eq i32 %call27.1, 0
  br i1 %cmp28.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.94, i32 noundef %call27.1) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  %consumer.2 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 2, i32 1
  %21 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %consumer.2, align 4
  %call27.2 = tail call i32 @devm_regulator_register_notifier(ptr noundef %22, ptr noundef %arrayidx7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.2)
  %cmp28.not.2 = icmp eq i32 %call27.2, 0
  br i1 %cmp28.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.94, i32 noundef %call27.2) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %for.inc.1.for.inc.2_crit_edge
  %consumer.3 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 3, i32 1
  %25 = ptrtoint ptr %consumer.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %consumer.3, align 4
  %call27.3 = tail call i32 @devm_regulator_register_notifier(ptr noundef %26, ptr noundef %arrayidx10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.3)
  %cmp28.not.3 = icmp eq i32 %call27.3, 0
  br i1 %cmp28.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

do.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.94, i32 noundef %call27.3) #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.3, %for.inc.2.for.inc.3_crit_edge
  %consumer.4 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 4, i32 1
  %29 = ptrtoint ptr %consumer.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %consumer.4, align 4
  %call27.4 = tail call i32 @devm_regulator_register_notifier(ptr noundef %30, ptr noundef %arrayidx13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.4)
  %cmp28.not.4 = icmp eq i32 %call27.4, 0
  br i1 %cmp28.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

do.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.94, i32 noundef %call27.4) #16
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end.4, %for.inc.3.for.inc.4_crit_edge
  %consumer.5 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 5, i32 1
  %33 = ptrtoint ptr %consumer.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %consumer.5, align 4
  %call27.5 = tail call i32 @devm_regulator_register_notifier(ptr noundef %34, ptr noundef %arrayidx16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.5)
  %cmp28.not.5 = icmp eq i32 %call27.5, 0
  br i1 %cmp28.not.5, label %for.inc.4.for.inc.5_crit_edge, label %do.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

do.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.94, i32 noundef %call27.5) #16
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end.5, %for.inc.4.for.inc.5_crit_edge
  %consumer.6 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 6, i32 1
  %37 = ptrtoint ptr %consumer.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %consumer.6, align 4
  %call27.6 = tail call i32 @devm_regulator_register_notifier(ptr noundef %38, ptr noundef %arrayidx19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.6)
  %cmp28.not.6 = icmp eq i32 %call27.6, 0
  br i1 %cmp28.not.6, label %for.inc.5.for.inc.6_crit_edge, label %do.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

do.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.94, i32 noundef %call27.6) #16
  br label %for.inc.6

for.inc.6:                                        ; preds = %do.end.6, %for.inc.5.for.inc.6_crit_edge
  %consumer.7 = getelementptr %struct.wm8962_priv, ptr %3, i32 0, i32 15, i32 7, i32 1
  %41 = ptrtoint ptr %consumer.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %consumer.7, align 4
  %call27.7 = tail call i32 @devm_regulator_register_notifier(ptr noundef %42, ptr noundef %arrayidx22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.7)
  %cmp28.not.7 = icmp eq i32 %call27.7, 0
  br i1 %cmp28.not.7, label %for.inc.6.for.inc.7_crit_edge, label %do.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

do.end.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.94, i32 noundef %call27.7) #16
  br label %for.inc.7

for.inc.7:                                        ; preds = %do.end.7, %for.inc.6.for.inc.7_crit_edge
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i.i, align 4
  %call3.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8962_snd_controls, i32 noundef 62) #13
  %spk_mono.i = getelementptr inbounds %struct.wm8962_pdata, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %spk_mono.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %spk_mono.i, align 1, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8962_spk_mono_controls, i32 noundef 10) #13
  br label %if.end.i

if.else.i:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8962_spk_stereo_controls, i32 noundef 16) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call6.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @wm8962_dapm_widgets, i32 noundef 38) #13
  %51 = ptrtoint ptr %spk_mono.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %spk_mono.i, align 1, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool8.not.i = icmp eq i8 %52, 0
  br i1 %tobool8.not.i, label %if.else11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @wm8962_dapm_spk_mono_widgets, i32 noundef 4) #13
  br label %if.end13.i

if.else11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @wm8962_dapm_spk_stereo_widgets, i32 noundef 8) #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else11.i, %if.then9.i
  %call14.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @wm8962_intercon, i32 noundef 71) #13
  %53 = ptrtoint ptr %spk_mono.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %spk_mono.i, align 1, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool16.not.i = icmp eq i8 %54, 0
  br i1 %tobool16.not.i, label %if.else19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %call18.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @wm8962_spk_mono_intercon, i32 noundef 13) #13
  br label %if.end35

if.else19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %call20.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @wm8962_spk_stereo_intercon, i32 noundef 26) #13
  br label %if.end35

if.end35:                                         ; preds = %if.else19.i, %if.then17.i
  %call22.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.101) #13
  %call36 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 513) #13
  %and = and i32 %call36, 31
  %55 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.456)
  switch i32 %and, label %if.end35.if.end35.1_crit_edge [
    i32 19, label %sw.bb
    i32 20, label %sw.bb37
  ]

if.end35.if.end35.1_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.1

sw.bb:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.1

sw.bb37:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.1

if.end35.1:                                       ; preds = %sw.bb37, %sw.bb, %if.end35.if.end35.1_crit_edge
  %dmicclk.1.off0 = phi i1 [ false, %if.end35.if.end35.1_crit_edge ], [ false, %sw.bb37 ], [ true, %sw.bb ]
  %dmicdat.1.off0 = phi i1 [ false, %if.end35.if.end35.1_crit_edge ], [ true, %sw.bb37 ], [ false, %sw.bb ]
  %call36.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 514) #13
  %and.1 = and i32 %call36.1, 31
  %56 = zext i32 %and.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.457)
  switch i32 %and.1, label %if.end35.1.if.end35.3_crit_edge [
    i32 19, label %sw.bb.1
    i32 20, label %sw.bb37.1
  ]

if.end35.1.if.end35.3_crit_edge:                  ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.3

sw.bb37.1:                                        ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.3

sw.bb.1:                                          ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.3

if.end35.3:                                       ; preds = %sw.bb.1, %sw.bb37.1, %if.end35.1.if.end35.3_crit_edge
  %dmicclk.1.off0.1 = phi i1 [ %dmicclk.1.off0, %if.end35.1.if.end35.3_crit_edge ], [ %dmicclk.1.off0, %sw.bb37.1 ], [ true, %sw.bb.1 ]
  %dmicdat.1.off0.1 = phi i1 [ %dmicdat.1.off0, %if.end35.1.if.end35.3_crit_edge ], [ true, %sw.bb37.1 ], [ %dmicdat.1.off0, %sw.bb.1 ]
  %call36.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 516) #13
  %and.3 = and i32 %call36.3, 31
  %57 = zext i32 %and.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.458)
  switch i32 %and.3, label %if.end35.3.if.end35.4_crit_edge [
    i32 19, label %sw.bb.3
    i32 20, label %sw.bb37.3
  ]

if.end35.3.if.end35.4_crit_edge:                  ; preds = %if.end35.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.4

sw.bb37.3:                                        ; preds = %if.end35.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.4

sw.bb.3:                                          ; preds = %if.end35.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.4

if.end35.4:                                       ; preds = %sw.bb.3, %sw.bb37.3, %if.end35.3.if.end35.4_crit_edge
  %dmicclk.1.off0.3 = phi i1 [ %dmicclk.1.off0.1, %if.end35.3.if.end35.4_crit_edge ], [ %dmicclk.1.off0.1, %sw.bb37.3 ], [ true, %sw.bb.3 ]
  %dmicdat.1.off0.3 = phi i1 [ %dmicdat.1.off0.1, %if.end35.3.if.end35.4_crit_edge ], [ true, %sw.bb37.3 ], [ %dmicdat.1.off0.1, %sw.bb.3 ]
  %call36.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 517) #13
  %and.4 = and i32 %call36.4, 31
  %58 = zext i32 %and.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.459)
  switch i32 %and.4, label %if.end35.4.for.inc38.4_crit_edge [
    i32 19, label %sw.bb.4
    i32 20, label %sw.bb37.4
  ]

if.end35.4.for.inc38.4_crit_edge:                 ; preds = %if.end35.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38.4

sw.bb37.4:                                        ; preds = %if.end35.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38.4

sw.bb.4:                                          ; preds = %if.end35.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38.4

for.inc38.4:                                      ; preds = %sw.bb.4, %sw.bb37.4, %if.end35.4.for.inc38.4_crit_edge
  %dmicclk.1.off0.4 = phi i1 [ %dmicclk.1.off0.3, %if.end35.4.for.inc38.4_crit_edge ], [ %dmicclk.1.off0.3, %sw.bb37.4 ], [ true, %sw.bb.4 ]
  %dmicdat.1.off0.4 = phi i1 [ %dmicdat.1.off0.3, %if.end35.4.for.inc38.4_crit_edge ], [ true, %sw.bb37.4 ], [ %dmicdat.1.off0.3, %sw.bb.4 ]
  %59 = and i1 %dmicclk.1.off0.4, %dmicdat.1.off0.4
  br i1 %59, label %for.inc38.4.if.end54_crit_edge, label %do.body43

for.inc38.4.if.end54_crit_edge:                   ; preds = %for.inc38.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.body43:                                        ; preds = %for.inc38.4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_probe.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_probe, %if.then48)) #13
          to label %do.end52 [label %if.then48], !srcloc !788

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_probe.__UNIQUE_ID_ddebug342, ptr noundef %61, ptr noundef nonnull @.str.96) #13
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body43
  %call53 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.97) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %for.inc38.4.if.end54_crit_edge
  %62 = xor i1 %dmicclk.1.off0.4, %dmicdat.1.off0.4
  br i1 %62, label %do.end63, label %if.end54.if.end65_crit_edge

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

do.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.99) #16
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.end54.if.end65_crit_edge
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i102 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %driver_data.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i.i102, align 4
  %call1.i = tail call ptr @devm_input_allocate_device(ptr noundef %66) #13
  %beep.i = getelementptr inbounds %struct.wm8962_priv, ptr %68, i32 0, i32 17
  %69 = ptrtoint ptr %beep.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call1.i, ptr %beep.i, align 4
  %tobool.not.i103 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i103, label %do.end.i, label %do.body4.i

do.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.393) #16
  br label %wm8962_init_beep.exit

do.body4.i:                                       ; preds = %if.end65
  %beep_work.i = getelementptr inbounds %struct.wm8962_priv, ptr %68, i32 0, i32 18
  tail call void @__init_work(ptr noundef %beep_work.i, i32 noundef 0) #13
  %72 = ptrtoint ptr %beep_work.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -64, ptr %beep_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.wm8962_priv, ptr %68, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.395, ptr noundef nonnull @wm8962_init_beep.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry8.i = getelementptr inbounds %struct.wm8962_priv, ptr %68, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wm8962_priv, ptr %68, i32 0, i32 18, i32 1, i32 1
  %74 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.wm8962_priv, ptr %68, i32 0, i32 18, i32 2
  %75 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @wm8962_beep_work, ptr %func.i, align 4
  %beep_rate.i = getelementptr inbounds %struct.wm8962_priv, ptr %68, i32 0, i32 19
  %76 = ptrtoint ptr %beep_rate.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %beep_rate.i, align 4
  %77 = ptrtoint ptr %beep.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %beep.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.396, ptr %78, align 8
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body4.i.dev_name.exit.i_crit_edge

do.body4.i.dev_name.exit.i_crit_edge:             ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.body4.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %85, %if.end.i.i ], [ %83, %do.body4.i.dev_name.exit.i_crit_edge ]
  %86 = ptrtoint ptr %beep.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %beep.i, align 4
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %retval.0.i.i, ptr %phys.i, align 4
  %89 = load ptr, ptr %beep.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 24, ptr %id.i, align 4
  %91 = load ptr, ptr %beep.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 262144, ptr %evbit.i, align 8
  %93 = load ptr, ptr %beep.i, align 4
  %sndbit.i = getelementptr inbounds %struct.input_dev, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %sndbit.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 6, ptr %sndbit.i, align 8
  %95 = load ptr, ptr %beep.i, align 4
  %event.i = getelementptr inbounds %struct.input_dev, ptr %95, i32 0, i32 34
  %96 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @wm8962_beep_event, ptr %event.i, align 4
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  %99 = load ptr, ptr %beep.i, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %99, i32 0, i32 40, i32 1
  %100 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %98, ptr %parent.i, align 8
  %101 = load ptr, ptr %beep.i, align 4
  %driver_data.i.i71.i = getelementptr inbounds %struct.input_dev, ptr %101, i32 0, i32 40, i32 8
  %102 = ptrtoint ptr %driver_data.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %component, ptr %driver_data.i.i71.i, align 4
  %103 = load ptr, ptr %beep.i, align 4
  %call26.i = tail call i32 @input_register_device(ptr noundef %103) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp.not.i = icmp eq i32 %call26.i, 0
  br i1 %cmp.not.i, label %dev_name.exit.i.if.end33.i_crit_edge, label %if.then27.i

dev_name.exit.i.if.end33.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.then27.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %beep.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %beep.i, align 4
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.398) #16
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %dev_name.exit.i.if.end33.i_crit_edge
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  %call35.i = tail call i32 @device_create_file(ptr noundef %108, ptr noundef nonnull @dev_attr_beep) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.not.i = icmp eq i32 %call35.i, 0
  br i1 %cmp36.not.i, label %if.end33.i.wm8962_init_beep.exit_crit_edge, label %do.end40.i

if.end33.i.wm8962_init_beep.exit_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wm8962_init_beep.exit

do.end40.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.401, i32 noundef %call35.i) #16
  br label %wm8962_init_beep.exit

wm8962_init_beep.exit:                            ; preds = %do.end40.i, %if.end33.i.wm8962_init_beep.exit_crit_edge, %do.end.i
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i105 = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 8
  %113 = ptrtoint ptr %driver_data.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver_data.i.i.i105, align 4
  %gpio_chip.i = getelementptr inbounds %struct.wm8962_priv, ptr %114, i32 0, i32 20
  %115 = call ptr @memcpy(ptr %gpio_chip.i, ptr @wm8962_template_chip, i32 348)
  %ngpio.i = getelementptr inbounds %struct.wm8962_priv, ptr %114, i32 0, i32 20, i32 20
  %116 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 6, ptr %ngpio.i, align 4
  %117 = load ptr, ptr %dev.i, align 4
  %parent.i106 = getelementptr inbounds %struct.wm8962_priv, ptr %114, i32 0, i32 20, i32 2
  %118 = ptrtoint ptr %parent.i106 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %parent.i106, align 4
  %gpio_base.i = getelementptr inbounds %struct.wm8962_pdata, ptr %114, i32 0, i32 1
  %119 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %gpio_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i107 = icmp eq i32 %120, 0
  %spec.select.i = select i1 %tobool.not.i107, i32 -1, i32 %120
  %121 = getelementptr inbounds %struct.wm8962_priv, ptr %114, i32 0, i32 20, i32 19
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.select.i, ptr %121, align 4
  %call9.i = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip.i, ptr noundef %114, ptr noundef nonnull @wm8962_init_gpio.lock_key, ptr noundef nonnull @wm8962_init_gpio.request_key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.not.i108 = icmp eq i32 %call9.i, 0
  br i1 %cmp.not.i108, label %wm8962_init_beep.exit.wm8962_init_gpio.exit_crit_edge, label %do.end.i109

wm8962_init_beep.exit.wm8962_init_gpio.exit_crit_edge: ; preds = %wm8962_init_beep.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %wm8962_init_gpio.exit

do.end.i109:                                      ; preds = %wm8962_init_beep.exit
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.409, i32 noundef %call9.i) #16
  br label %wm8962_init_gpio.exit

wm8962_init_gpio.exit:                            ; preds = %do.end.i109, %wm8962_init_beep.exit.wm8962_init_gpio.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8962_remove(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mic_work = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 13
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mic_work) #13
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %gpio_chip.i = getelementptr inbounds %struct.wm8962_priv, ptr %7, i32 0, i32 20
  tail call void @gpiochip_remove(ptr noundef %gpio_chip.i) #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i5 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i5, align 4
  tail call void @device_remove_file(ptr noundef %9, ptr noundef nonnull @dev_attr_beep) #13
  %beep_work.i = getelementptr inbounds %struct.wm8962_priv, ptr %11, i32 0, i32 18
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %beep_work.i) #13
  %beep.i = getelementptr inbounds %struct.wm8962_priv, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %beep.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %beep.i, align 4
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 110, i32 noundef 1, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_set_fll(ptr noundef %component, i32 noundef %fll_id, i32 noundef %source, i32 noundef %Fref, i32 noundef %Fout) #0 align 64 {
entry:
  %fll_div = alloca %struct._fll_div, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fll_div) #13
  %4 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %5 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %6 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %7 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %8 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 5
  %fll_src = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 8
  %9 = call ptr @memset(ptr %fll_div, i32 255, i32 12)
  %10 = ptrtoint ptr %fll_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %source)
  %cmp = icmp eq i32 %11, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fll_fref = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %fll_fref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fll_fref, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %Fref)
  %cmp1 = icmp eq i32 %13, %Fref
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %fll_fout = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fll_fout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %Fout)
  %cmp3 = icmp eq i32 %15, %Fout
  br i1 %cmp3, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Fout)
  %cmp4 = icmp eq i32 %Fout, 0
  br i1 %cmp4, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_set_fll.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_set_fll, %if.then9)) #13
          to label %do.end [label %if.then9], !srcloc !788

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_set_fll.__UNIQUE_ID_ddebug335, ptr noundef %17, ptr noundef nonnull @.str.412) #13
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %fll_fref11 = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %fll_fref11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fll_fref11, align 4
  %fll_fout12 = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %fll_fout12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fll_fout12, align 4
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 155, i32 noundef 1, i32 noundef 0) #13
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = call fastcc i32 @fll_factors(ptr noundef nonnull %fll_div, i32 noundef %Fref, i32 noundef %Fout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 155, i32 noundef 1, i32 noundef 0) #13
  %22 = zext i32 %fll_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.460)
  switch i32 %fll_id, label %do.end27 [
    i32 1, label %if.end20.sw.bb_crit_edge
    i32 2, label %if.end20.sw.bb_crit_edge163
    i32 3, label %if.end20.sw.bb_crit_edge164
    i32 4, label %sw.bb22
  ]

if.end20.sw.bb_crit_edge164:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end20.sw.bb_crit_edge163:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end20.sw.bb_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end20.sw.bb_crit_edge, %if.end20.sw.bb_crit_edge163, %if.end20.sw.bb_crit_edge164
  %sub = shl nuw nsw i32 %fll_id, 5
  %shl = add nsw i32 %sub, -32
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 155, i32 noundef 2, i32 noundef 2) #13
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 159, i32 noundef 1, i32 noundef 1) #13
  br label %sw.epilog

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.413, i32 noundef 0) #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb
  %fll1.0 = phi i32 [ 0, %sw.bb22 ], [ %shl, %sw.bb ]
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %7, align 2
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 155, i32 noundef 1, i32 noundef 0) #13
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %4, align 2
  %conv = zext i16 %28 to i32
  %shl34 = shl nuw nsw i32 %conv, 3
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %5, align 2
  %conv35 = zext i16 %30 to i32
  %or36 = or i32 %shl34, %conv35
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 156, i32 noundef 507, i32 noundef %or36) #13
  %31 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fll_div, align 2
  %conv38 = zext i16 %32 to i32
  %call39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 157, i32 noundef 7, i32 noundef %conv38) #13
  %conv41 = zext i16 %26 to i32
  %call42 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 160, i32 noundef %conv41) #13
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %8, align 2
  %conv43 = zext i16 %34 to i32
  %call44 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 161, i32 noundef %conv43) #13
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %6, align 2
  %conv45 = zext i16 %36 to i32
  %call46 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 162, i32 noundef %conv45) #13
  %fll_lock = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 7
  %37 = ptrtoint ptr %fll_lock to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %fll_lock, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %call.i159 = tail call i32 @__pm_runtime_resume(ptr noundef %39, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp49 = icmp slt i32 %call.i159, 0
  br i1 %cmp49, label %if.then51, label %if.end57

if.then51:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %41)
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.415, i32 noundef %call.i159) #16
  br label %cleanup

if.end57:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool29.not = icmp eq i16 %26, 0
  %or31 = or i32 %fll1.0, 4
  %spec.select = select i1 %tobool29.not, i32 %fll1.0, i32 %or31
  %or58 = or i32 %spec.select, 1
  %call59 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 155, i32 noundef 101, i32 noundef %or58) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_set_fll.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_set_fll, %if.then72)) #13
          to label %do.end76 [label %if.then72], !srcloc !788

if.then72:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_set_fll.__UNIQUE_ID_ddebug336, ptr noundef %45, ptr noundef nonnull @.str.417, i32 noundef %Fref, i32 noundef %Fout) #13
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %if.end57
  %call83 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %land.lhs.true86, label %do.end76.if.end97_crit_edge

do.end76.if.end97_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

land.lhs.true86:                                  ; preds = %do.end76
  %irq = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 21
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool88.not = icmp eq i32 %47, 0
  br i1 %tobool88.not, label %land.lhs.true86.if.end97_crit_edge, label %do.end92

land.lhs.true86.if.end97_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

do.end92:                                         ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.419) #16
  %call94 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 155, i32 noundef 1, i32 noundef 0) #13
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %call.i160 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #13
  br label %cleanup

if.end97:                                         ; preds = %land.lhs.true86.if.end97_crit_edge, %do.end76.if.end97_crit_edge
  %fll_fref98 = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 9
  %52 = ptrtoint ptr %fll_fref98 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %Fref, ptr %fll_fref98, align 4
  %fll_fout99 = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 10
  %53 = ptrtoint ptr %fll_fout99 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %Fout, ptr %fll_fout99, align 4
  %54 = ptrtoint ptr %fll_src to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %source, ptr %fll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end92, %if.then51, %do.end27, %if.end16.cleanup_crit_edge, %do.end, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.end27 ], [ %call.i159, %if.then51 ], [ -110, %do.end92 ], [ 0, %if.end97 ], [ 0, %land.lhs.true2.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fll_div) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.461)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 384, i32 noundef 128) #13
  tail call fastcc void @wm8962_configure_bclk(ptr noundef %component)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 384, i32 noundef 256) #13
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %1 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 100) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_0(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -388
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_1(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -400
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_2(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -412
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_3(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -424
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_4(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -436
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_5(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -448
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_6(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -460
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_regulator_event_7(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr i8, ptr %nb, i32 -472
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_nc_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_put_hp_sw(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 26) #13
  %and = and i32 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %call2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink21 = phi i32 [ 2, %if.end.cleanup.sink.split_crit_edge ], [ 3, %if.end6.cleanup.sink.split_crit_edge ]
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %.sink21) #13
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %.sink21, i32 noundef %call10) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_put(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8962_dsp2_ena_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8962_dsp2_ena_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %dsp2_ena = getelementptr inbounds %struct.wm8962_priv, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %dsp2_ena to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dsp2_ena, align 4
  %conv = zext i16 %9 to i32
  %10 = lshr i32 %conv, %1
  %11 = and i32 %10, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_dsp2_ena_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %dsp2_ena = getelementptr inbounds %struct.wm8962_priv, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %dsp2_ena to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dsp2_ena, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 768) #13
  %dsp2_ena_lock = getelementptr inbounds %struct.wm8962_priv, ptr %7, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %dsp2_ena_lock, i32 noundef 0) #13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %shl6 = shl nuw i32 1, %1
  %12 = ptrtoint ptr %dsp2_ena to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dsp2_ena, align 4
  %14 = trunc i32 %shl6 to i16
  %15 = xor i16 %14, -1
  %conv10 = and i16 %13, %15
  %conv5 = or i16 %13, %14
  %storemerge = select i1 %tobool.not, i16 %conv10, i16 %conv5
  store i16 %storemerge, ptr %dsp2_ena, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %storemerge, i16 %9)
  %cmp = icmp eq i16 %storemerge, %9
  br i1 %cmp, label %entry.out_crit_edge, label %if.end15

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15:                                         ; preds = %entry
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.out_crit_edge, label %if.then17

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %storemerge)
  %tobool19.not = icmp eq i16 %storemerge, 0
  br i1 %tobool19.not, label %if.else23, label %if.then20

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @wm8962_dsp2_set_enable(ptr noundef %3, i16 noundef zeroext %storemerge)
  br label %out

if.else23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @wm8962_dsp2_set_enable(ptr noundef %3, i16 noundef zeroext 0) #13
  %call1.i = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 1037, i32 noundef 4) #13
  br label %out

out:                                              ; preds = %if.else23, %if.then20, %if.end15.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 1, %if.then20 ], [ 1, %if.else23 ], [ 1, %if.end15.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dsp2_ena_lock) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8962_dsp2_set_enable(ptr noundef %component, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 21) #13
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 22) #13
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 5) #13
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 21, i32 noundef 0) #13
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 22, i32 noundef 256) #13
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 8, i32 noundef 8) #13
  %conv8 = zext i16 %val to i32
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 16389, i32 noundef %conv8) #13
  %conv10 = and i32 %call, 65535
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 21, i32 noundef %conv10) #13
  %conv12 = and i32 %call1, 65535
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 22, i32 noundef %conv12) #13
  %conv14 = and i32 %call3, 65535
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 8, i32 noundef %conv14) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_put_spk_sw(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 26) #13
  %and = and i32 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %call2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink21 = phi i32 [ 40, %if.end.cleanup.sink.split_crit_edge ], [ 41, %if.end6.cleanup.sink.split_crit_edge ]
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %.sink21) #13
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %.sink21, i32 noundef %call10) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 5) #13
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1852, i32 noundef 9, ptr noundef nonnull @.str.308, i32 noundef %event) #13
  br label %return

return:                                           ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsp2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.462)
  switch i32 %event, label %do.end [
    i32 2, label %sw.bb
    i32 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %dsp2_ena = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %dsp2_ena to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dsp2_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %regmap.i.i = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = tail call i32 @regcache_sync_region(ptr noundef %10, i32 noundef 16896, i32 noundef 21139) #13
  %call2.i = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 1037, i32 noundef 2) #13
  %11 = ptrtoint ptr %dsp2_ena to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dsp2_ena, align 4
  tail call fastcc void @wm8962_dsp2_set_enable(ptr noundef %add.ptr.i, i16 noundef zeroext %12) #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %dsp2_ena4 = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 12
  %13 = ptrtoint ptr %dsp2_ena4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dsp2_ena4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool5.not = icmp eq i16 %14, 0
  br i1 %tobool5.not, label %sw.bb3.cleanup_crit_edge, label %if.then6

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @wm8962_dsp2_set_enable(ptr noundef %add.ptr.i, i16 noundef zeroext 0) #13
  %call1.i = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 1037, i32 noundef 4) #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2005, i32 noundef 9, ptr noundef nonnull @.str.308, i32 noundef %event) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then6, %sw.bb3.cleanup_crit_edge, %if.then, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @out_pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %switch.tableidx = add i8 %3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %3 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1973, i32 noundef 9, ptr noundef nonnull @.str.353, i32 noundef %conv) #13
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb20, label %do.end36

sw.bb20:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.out_pga_event, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call21 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %switch.load) #13
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %switch.load, i32 noundef %call21) #13
  br label %cleanup

do.end36:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1982, i32 noundef 9, ptr noundef nonnull @.str.308, i32 noundef %event) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %sw.bb20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call22, %sw.bb20 ], [ -22, %do.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.463)
  switch i32 %event, label %do.end61 [
    i32 2, label %sw.bb
    i32 4, label %sw.bb46
  ]

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef 17, i32 noundef 17) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 4294960) #13
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef 34, i32 noundef 34) #13
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 61, i32 noundef 204, i32 noundef 204) #13
  %dev11 = getelementptr i8, ptr %1, i32 -164
  br label %do.body

do.body:                                          ; preds = %do.cond15.do.body_crit_edge, %sw.bb
  %timeout.0 = phi i32 [ 0, %sw.bb ], [ %inc, %do.cond15.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #13
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %do.body6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.358, i32 noundef %call4) #16
  br label %do.cond15

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hp_event.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hp_event, %if.then10)) #13
          to label %do.cond15 [label %if.then10], !srcloc !788

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hp_event.__UNIQUE_ID_ddebug322, ptr noundef %7, ptr noundef nonnull @.str.360, i32 noundef %call4) #13
  br label %do.cond15

do.cond15:                                        ; preds = %if.then10, %do.body6, %do.end
  %inc = add nuw nsw i32 %timeout.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %timeout.0)
  %cmp16 = icmp ugt i32 %timeout.0, 198
  %and = and i32 %call4, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and)
  %cmp17.not = icmp eq i32 %and, 384
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp17.not
  br i1 %or.cond, label %do.end18, label %do.cond15.do.body_crit_edge

do.cond15.do.body_crit_edge:                      ; preds = %do.cond15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end18:                                         ; preds = %do.cond15
  br i1 %cmp17.not, label %do.body26, label %do.end24

do.end24:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.362) #16
  br label %if.end43

do.body26:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hp_event.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hp_event, %if.then38)) #13
          to label %if.end43 [label %if.then38], !srcloc !788

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hp_event.__UNIQUE_ID_ddebug323, ptr noundef %11, ptr noundef nonnull @.str.364, i32 noundef %inc) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %do.body26, %do.end24
  %call44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef 68, i32 noundef 68) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 4294960) #13
  %call45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef 136, i32 noundef 136) #13
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef 136, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 4294960) #13
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 61, i32 noundef 204, i32 noundef 0) #13
  %call49 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef 119, i32 noundef 0) #13
  br label %cleanup

do.end61:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1944, i32 noundef 9, ptr noundef nonnull @.str.308, i32 noundef %event) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %sw.bb46, %if.end43
  %retval.0 = phi i32 [ -22, %do.end61 ], [ 0, %sw.bb46 ], [ 0, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8962_beep_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr i8, ptr %work, i32 -484
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %beep_rate = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %beep_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body29, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %sub.1 = add i32 %3, -1000
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %sub9.1 = add i32 %3, -500
  %5 = tail call i32 @llvm.abs.i32(i32 %sub9.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp17.1 = icmp slt i32 %4, %5
  %best.1.1 = zext i1 %cmp17.1 to i32
  %sub.2 = add i32 %3, -2000
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  %arrayidx8.2 = getelementptr [4 x i32], ptr @beep_rates, i32 0, i32 %best.1.1
  %7 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8.2, align 4
  %sub9.2 = sub i32 %3, %8
  %9 = tail call i32 @llvm.abs.i32(i32 %sub9.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp17.2 = icmp slt i32 %6, %9
  %best.1.2 = select i1 %cmp17.2, i32 2, i32 %best.1.1
  %sub.3 = add i32 %3, -4000
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  %arrayidx8.3 = getelementptr [4 x i32], ptr @beep_rates, i32 0, i32 %best.1.2
  %11 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.3, align 4
  %sub9.3 = sub i32 %3, %12
  %13 = tail call i32 @llvm.abs.i32(i32 %sub9.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp17.3 = icmp slt i32 %10, %13
  %best.1.3 = select i1 %cmp17.3, i32 3, i32 %best.1.2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_beep_work.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_beep_work, %if.then24)) #13
          to label %do.end [label %if.then24], !srcloc !788

if.then24:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %arrayidx25 = getelementptr [4 x i32], ptr @beep_rates, i32 0, i32 %best.1.3
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx25, align 4
  %18 = ptrtoint ptr %beep_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %beep_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_beep_work.__UNIQUE_ID_ddebug339, ptr noundef %15, ptr noundef nonnull @.str.404, i32 noundef %17, i32 noundef %19) #13
  br label %do.end

do.end:                                           ; preds = %if.then24, %for.body.preheader
  %shl = shl nuw nsw i32 %best.1.3, 1
  %or = or i32 %shl, 1
  %call28 = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.101) #13
  br label %if.end47

do.body29:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_beep_work.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_beep_work, %if.then41)) #13
          to label %do.end45 [label %if.then41], !srcloc !788

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  %dev42 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_beep_work.__UNIQUE_ID_ddebug340, ptr noundef %21, ptr noundef nonnull @.str.405) #13
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %call46 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.101) #13
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %do.end
  %reg.0 = phi i32 [ %or, %do.end ], [ 0, %do.end45 ]
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 110, i32 noundef 7, i32 noundef %reg.0) #13
  %call49 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_beep_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %hz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i16 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_beep_event.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_beep_event, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !788

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_beep_event.__UNIQUE_ID_ddebug341, ptr noundef %7, ptr noundef nonnull @.str.407, i32 noundef %code, i32 noundef %hz) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.464)
  switch i32 %code, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz)
  %tobool6.not = icmp eq i32 %hz, 0
  %spec.store.select = select i1 %tobool6.not, i32 0, i32 1000
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  %hz.addr.0 = phi i32 [ %hz, %do.end.sw.epilog_crit_edge ], [ %spec.store.select, %sw.bb ]
  %beep_rate = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 19
  %9 = ptrtoint ptr %beep_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %hz.addr.0, ptr %beep_rate, align 4
  %beep_work = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %beep_work) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #13
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %time, align 4, !annotation !783
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %time) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %beep = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %beep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %beep, align 4
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %time, align 4
  call void @input_event(ptr noundef %4, i32 noundef 18, i32 noundef 2, i32 noundef %6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_gpio_request(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.465)
  switch i32 %offset, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.then.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %entry.cleanup.fold.split_crit_edge
    i32 5, label %entry.cleanup.fold.split_crit_edge3
  ]

entry.cleanup.fold.split_crit_edge3:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.fold.split

entry.cleanup.fold.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.fold.split

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb1.i, %entry.if.then.i_crit_edge
  %mask.0.ph.i = phi i32 [ 24, %sw.bb1.i ], [ 96, %entry.if.then.i_crit_edge ]
  %val.0.ph.i = phi i32 [ 8, %sw.bb1.i ], [ 32, %entry.if.then.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.wm8962_priv, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 124, i32 noundef %mask.0.ph.i, i32 noundef %val.0.ph.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry.cleanup.fold.split_crit_edge, %entry.cleanup.fold.split_crit_edge3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %cleanup.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_gpio_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %component1 = getelementptr inbounds %struct.wm8962_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %shl = shl i32 %value, 6
  %or = or i32 %shl, 1
  %add = add i32 %offset, 512
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add, i32 noundef 95, i32 noundef %or) #13
  %2 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8962_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %component1 = getelementptr inbounds %struct.wm8962_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %add = add i32 %offset, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl = select i1 %tobool.not, i32 0, i32 64
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add, i32 noundef 64, i32 noundef %shl) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fll_factors(ptr nocapture noundef %fll_div, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fll_refclk_div = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %0 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %fll_refclk_div, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %Fref)
  %cmp = icmp ugt i32 %Fref, 13500000
  br i1 %cmp, label %while.body, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4

while.body:                                       ; preds = %entry
  %1 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %fll_refclk_div, align 2
  %inc = add i16 %2, 1
  store i16 %inc, ptr %fll_refclk_div, align 2
  %div1.1215 = lshr i32 %Fref, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %Fref)
  %cmp.1 = icmp ugt i32 %Fref, 27000001
  br i1 %cmp.1, label %while.body.1, label %while.body.do.body4_crit_edge

while.body.do.body4_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4

while.body.1:                                     ; preds = %while.body
  %3 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fll_refclk_div, align 2
  %inc.1 = add i16 %4, 1
  store i16 %inc.1, ptr %fll_refclk_div, align 2
  %div1.2216 = lshr i32 %Fref, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000003, i32 %Fref)
  %cmp.2 = icmp ugt i32 %Fref, 54000003
  br i1 %cmp.2, label %while.body.2, label %while.body.1.do.body4_crit_edge

while.body.1.do.body4_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fll_refclk_div, align 2
  %inc.2 = add i16 %6, 1
  store i16 %inc.2, ptr %fll_refclk_div, align 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.421, i32 noundef %Fref) #16
  br label %cleanup

do.body4:                                         ; preds = %while.body.1.do.body4_crit_edge, %while.body.do.body4_crit_edge, %entry.do.body4_crit_edge
  %div1.lcssa = phi i32 [ %Fref, %entry.do.body4_crit_edge ], [ %div1.1215, %while.body.do.body4_crit_edge ], [ %div1.2216, %while.body.1.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then9)) #13
          to label %while.cond14 [label %if.then9], !srcloc !788

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.423, i32 noundef %Fref, i32 noundef %Fout) #13
  br label %while.cond14

while.cond14:                                     ; preds = %while.body17.while.cond14_crit_edge, %if.then9, %do.body4
  %div.1 = phi i32 [ %inc18, %while.body17.while.cond14_crit_edge ], [ 2, %do.body4 ], [ 2, %if.then9 ]
  %mul15 = mul i32 %div.1, %Fout
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %mul15)
  %cmp16 = icmp ult i32 %mul15, 90000000
  br i1 %cmp16, label %while.body17, label %while.end27

while.body17:                                     ; preds = %while.cond14
  %inc18 = add nuw nsw i32 %div.1, 1
  %exitcond = icmp eq i32 %inc18, 65
  br i1 %exitcond, label %do.end23, label %while.body17.while.cond14_crit_edge

while.body17.while.cond14_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond14

do.end23:                                         ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, i32 noundef %Fout) #16
  br label %cleanup

while.end27:                                      ; preds = %while.cond14
  %7 = trunc i32 %div.1 to i16
  %conv = add nsw i16 %7, -1
  %fll_outdiv = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %8 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %fll_outdiv, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then41)) #13
          to label %land.lhs.true [label %if.then41], !srcloc !788

if.then41:                                        ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.427, i32 noundef %mul15) #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then41, %while.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %div1.lcssa)
  %cmp50.not = icmp ugt i32 %div1.lcssa, 64000
  br i1 %cmp50.not, label %land.lhs.true.1, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %div1.lcssa)
  %cmp50.not.1 = icmp ugt i32 %div1.lcssa, 128000
  br i1 %cmp50.not.1, label %land.lhs.true.2, label %land.lhs.true.1.if.end66_crit_edge

land.lhs.true.1.if.end66_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %div1.lcssa)
  %cmp50.not.2 = icmp ugt i32 %div1.lcssa, 256000
  br i1 %cmp50.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.end66_crit_edge

land.lhs.true.2.if.end66_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div1.lcssa)
  %cmp50.not.3 = icmp ugt i32 %div1.lcssa, 1000000
  br i1 %cmp50.not.3, label %land.lhs.true.4, label %land.lhs.true.3.if.end66_crit_edge

land.lhs.true.3.if.end66_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %div1.lcssa)
  %cmp50.not.4 = icmp ugt i32 %div1.lcssa, 13500000
  br i1 %cmp50.not.4, label %do.end63, label %land.lhs.true.4.if.end66_crit_edge

land.lhs.true.4.if.end66_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

do.end63:                                         ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.429, i32 noundef %div1.lcssa) #16
  br label %cleanup

if.end66:                                         ; preds = %land.lhs.true.4.if.end66_crit_edge, %land.lhs.true.3.if.end66_crit_edge, %land.lhs.true.2.if.end66_crit_edge, %land.lhs.true.1.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge
  %i.0208.lcssa = phi i32 [ 0, %land.lhs.true.if.end66_crit_edge ], [ 1, %land.lhs.true.1.if.end66_crit_edge ], [ 2, %land.lhs.true.2.if.end66_crit_edge ], [ 3, %land.lhs.true.3.if.end66_crit_edge ], [ 4, %land.lhs.true.4.if.end66_crit_edge ]
  %fll_fratio = getelementptr [5 x %struct.anon.110], ptr @fll_fratios, i32 0, i32 %i.0208.lcssa, i32 2
  %9 = ptrtoint ptr %fll_fratio to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fll_fratio, align 4
  %11 = ptrtoint ptr %fll_div to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %fll_div, align 2
  %ratio = getelementptr [5 x %struct.anon.110], ptr @fll_fratios, i32 0, i32 %i.0208.lcssa, i32 3
  %12 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ratio, align 4
  %mul67 = mul i32 %13, %div1.lcssa
  %div68 = udiv i32 %mul15, %mul67
  %conv69 = trunc i32 %div68 to i16
  %n = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %14 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv69, ptr %n, align 2
  %rem = urem i32 %mul15, %div1.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp70 = icmp eq i32 %rem, 0
  br i1 %cmp70, label %if.end66.do.body88_crit_edge, label %if.else

if.end66.do.body88_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body88

if.else:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %call74 = tail call i32 @gcd(i32 noundef %mul15, i32 noundef %mul67) #17
  %conv76 = and i32 %div68, 65535
  %mul78 = mul i32 %mul67, %conv76
  %sub79 = sub i32 %mul15, %mul78
  %div80 = udiv i32 %sub79, %call74
  %conv81 = trunc i32 %div80 to i16
  %div84 = udiv i32 %mul67, %call74
  %conv85 = trunc i32 %div84 to i16
  br label %do.body88

do.body88:                                        ; preds = %if.else, %if.end66.do.body88_crit_edge
  %conv81.sink = phi i16 [ %conv81, %if.else ], [ 0, %if.end66.do.body88_crit_edge ]
  %conv85.sink = phi i16 [ %conv85, %if.else ], [ 1, %if.end66.do.body88_crit_edge ]
  %15 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv81.sink, ptr %15, align 2
  %17 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv85.sink, ptr %17, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then100)) #13
          to label %do.body110 [label %if.then100], !srcloc !788

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %n, align 2
  %conv102 = zext i16 %20 to i32
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %15, align 2
  %conv104 = zext i16 %22 to i32
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %17, align 2
  %conv106 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.431, i32 noundef %conv102, i32 noundef %conv104, i32 noundef %conv106) #13
  br label %do.body110

do.body110:                                       ; preds = %if.then100, %do.body88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then122)) #13
          to label %cleanup [label %if.then122], !srcloc !788

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fll_div, align 2
  %conv124 = zext i16 %26 to i32
  %27 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fll_outdiv, align 2
  %conv126 = zext i16 %28 to i32
  %29 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fll_refclk_div, align 2
  %conv128 = zext i16 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.432, i32 noundef %conv124, i32 noundef %conv126, i32 noundef %conv128) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %do.body110, %do.end63, %do.end23, %while.body.2
  %retval.0 = phi i32 [ -22, %while.body.2 ], [ -22, %do.end23 ], [ -22, %do.end63 ], [ 0, %if.then122 ], [ 0, %do.body110 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8962_configure_bclk(ptr noundef %component) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk_rate = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_configure_bclk, %if.then5)) #13
          to label %cleanup [label %if.then5], !srcloc !788

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_configure_bclk.__UNIQUE_ID_ddebug324, ptr noundef %7, ptr noundef nonnull @.str.434) #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  %bclk = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.end6.do.body10_crit_edge, label %lor.lhs.false

if.end6.do.body10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10

lor.lhs.false:                                    ; preds = %if.end6
  %lrclk = getelementptr inbounds %struct.wm8962_priv, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %lor.lhs.false.do.body10_crit_edge, label %for.cond.preheader

lor.lhs.false.do.body10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10

for.cond.preheader:                               ; preds = %lor.lhs.false
  %div = sdiv i32 %5, %11
  %12 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.466)
  switch i32 %div, label %do.end37 [
    i32 64, label %for.cond.preheader.do.body43_crit_edge
    i32 128, label %do.body43.fold.split
    i32 192, label %do.body43.fold.split280
    i32 256, label %do.body43.fold.split281
    i32 384, label %do.body43.fold.split282
    i32 512, label %do.body43.fold.split283
    i32 768, label %do.body43.fold.split284
    i32 1024, label %do.body43.fold.split285
    i32 1408, label %do.body43.fold.split286
    i32 1536, label %do.body43.fold.split287
    i32 3072, label %do.body43.fold.split288
    i32 6144, label %do.body43.fold.split289
  ]

for.cond.preheader.do.body43_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body10:                                        ; preds = %lor.lhs.false.do.body10_crit_edge, %if.end6.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_configure_bclk, %if.then22)) #13
          to label %cleanup [label %if.then22], !srcloc !788

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_configure_bclk.__UNIQUE_ID_ddebug325, ptr noundef %14, ptr noundef nonnull @.str.435) #13
  br label %cleanup

do.end37:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.436, i32 noundef %div) #16
  br label %cleanup

do.body43.fold.split:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split280:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split281:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split282:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split283:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split284:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split285:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split286:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split287:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split288:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43.fold.split289:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43:                                        ; preds = %do.body43.fold.split289, %do.body43.fold.split288, %do.body43.fold.split287, %do.body43.fold.split286, %do.body43.fold.split285, %do.body43.fold.split284, %do.body43.fold.split283, %do.body43.fold.split282, %do.body43.fold.split281, %do.body43.fold.split280, %do.body43.fold.split, %for.cond.preheader.do.body43_crit_edge
  %i.0274.lcssa = phi i32 [ 0, %for.cond.preheader.do.body43_crit_edge ], [ 1, %do.body43.fold.split ], [ 2, %do.body43.fold.split280 ], [ 3, %do.body43.fold.split281 ], [ 4, %do.body43.fold.split282 ], [ 5, %do.body43.fold.split283 ], [ 6, %do.body43.fold.split284 ], [ 7, %do.body43.fold.split285 ], [ 8, %do.body43.fold.split286 ], [ 9, %do.body43.fold.split287 ], [ 10, %do.body43.fold.split288 ], [ 11, %do.body43.fold.split289 ]
  %shl = shl nuw nsw i32 %i.0274.lcssa, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_configure_bclk, %if.then55)) #13
          to label %do.end60 [label %if.then55], !srcloc !788

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %arrayidx57 = getelementptr [12 x i32], ptr @sysclk_rates, i32 0, i32 %i.0274.lcssa
  %17 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_configure_bclk.__UNIQUE_ID_ddebug326, ptr noundef %16, ptr noundef nonnull @.str.437, i32 noundef %18) #13
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.body43
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 30, i32 noundef %shl) #13
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %19 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp63.not = icmp eq i32 %20, 3
  br i1 %cmp63.not, label %do.end60.if.end66_crit_edge, label %if.then64

do.end60.if.end66_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then64:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 8, i32 noundef 32, i32 noundef 32) #13
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %do.end60.if.end66_crit_edge
  %call67 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 4) #13
  %21 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp69.not = icmp eq i32 %22, 3
  br i1 %cmp69.not, label %if.end66.if.end72_crit_edge, label %if.then70

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %call71 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 8, i32 noundef 32, i32 noundef 0) #13
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp73 = icmp slt i32 %call67, 0
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.439, i32 noundef %call67) #16
  br label %cleanup

if.end79:                                         ; preds = %if.end72
  %and = lshr i32 %call67, 9
  %25 = and i32 %and, 3
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.467)
  switch i32 %25, label %do.end89 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb81
    i32 2, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sysclk_rate, align 4
  br label %do.body92

sw.bb81:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sysclk_rate, align 4
  %div83 = sdiv i32 %30, 2
  br label %do.body92

sw.bb84:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sysclk_rate, align 4
  %div86 = sdiv i32 %32, 4
  br label %do.body92

do.end89:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.442) #16
  %35 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sysclk_rate, align 4
  br label %do.body92

do.body92:                                        ; preds = %do.end89, %sw.bb84, %sw.bb81, %sw.bb
  %dspclk.0 = phi i32 [ %36, %do.end89 ], [ %div86, %sw.bb84 ], [ %div83, %sw.bb81 ], [ %28, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_configure_bclk, %if.then104)) #13
          to label %for.body112 [label %if.then104], !srcloc !788

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %39 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_configure_bclk.__UNIQUE_ID_ddebug327, ptr noundef %38, ptr noundef nonnull @.str.444, i32 noundef %dspclk.0, i32 noundef %40) #13
  br label %for.body112

for.body112:                                      ; preds = %for.inc126.for.body112_crit_edge, %if.then104, %do.body92
  %best.0278 = phi i32 [ %best.1, %for.inc126.for.body112_crit_edge ], [ 0, %do.body92 ], [ 0, %if.then104 ]
  %min_diff.0277 = phi i32 [ %min_diff.1, %for.inc126.for.body112_crit_edge ], [ 2147483647, %do.body92 ], [ 2147483647, %if.then104 ]
  %i.1275 = phi i32 [ %inc127, %for.inc126.for.body112_crit_edge ], [ 0, %do.body92 ], [ 0, %if.then104 ]
  %41 = lshr i32 4386, %i.1275
  %42 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp114.not = icmp eq i32 %42, 0
  br i1 %cmp114.not, label %if.end116, label %for.body112.for.inc126_crit_edge

for.body112.for.inc126_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc126

if.end116:                                        ; preds = %for.body112
  %arrayidx113 = getelementptr [16 x i32], ptr @bclk_divs, i32 0, i32 %i.1275
  %43 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx113, align 4
  %div118 = sdiv i32 %dspclk.0, %44
  %45 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bclk, align 4
  %sub = sub i32 %div118, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp120 = icmp slt i32 %sub, 0
  br i1 %cmp120, label %if.end116.for.end128_crit_edge, label %if.end122

if.end116.for.end128_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end128

if.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %min_diff.0277)
  %cmp123 = icmp slt i32 %sub, %min_diff.0277
  %47 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %min_diff.0277)
  %spec.select246 = select i1 %cmp123, i32 %i.1275, i32 %best.0278
  br label %for.inc126

for.inc126:                                       ; preds = %if.end122, %for.body112.for.inc126_crit_edge
  %min_diff.1 = phi i32 [ %min_diff.0277, %for.body112.for.inc126_crit_edge ], [ %47, %if.end122 ]
  %best.1 = phi i32 [ %best.0278, %for.body112.for.inc126_crit_edge ], [ %spec.select246, %if.end122 ]
  %inc127 = add nuw nsw i32 %i.1275, 1
  %exitcond.not = icmp eq i32 %inc127, 16
  br i1 %exitcond.not, label %for.inc126.for.end128_crit_edge, label %for.inc126.for.body112_crit_edge

for.inc126.for.body112_crit_edge:                 ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body112

for.inc126.for.end128_crit_edge:                  ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end128

for.end128:                                       ; preds = %for.inc126.for.end128_crit_edge, %if.end116.for.end128_crit_edge
  %best.0.lcssa = phi i32 [ %best.0278, %if.end116.for.end128_crit_edge ], [ %best.1, %for.inc126.for.end128_crit_edge ]
  %arrayidx129 = getelementptr [16 x i32], ptr @bclk_divs, i32 0, i32 %best.0.lcssa
  %48 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx129, align 4
  %div130 = sdiv i32 %dspclk.0, %49
  %50 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div130, ptr %bclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_configure_bclk, %if.then145)) #13
          to label %do.end151 [label %if.then145], !srcloc !788

if.then145:                                       ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %53 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_configure_bclk.__UNIQUE_ID_ddebug328, ptr noundef %52, ptr noundef nonnull @.str.445, i32 noundef %49, i32 noundef %54) #13
  br label %do.end151

do.end151:                                        ; preds = %if.then145, %for.end128
  %55 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bclk, align 4
  %57 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lrclk, align 4
  %div154 = sdiv i32 %56, %58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_configure_bclk, %if.then168)) #13
          to label %do.end176 [label %if.then168], !srcloc !788

if.then168:                                       ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %61 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bclk, align 4
  %63 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lrclk, align 4
  %div172 = sdiv i32 %62, %64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_configure_bclk.__UNIQUE_ID_ddebug329, ptr noundef %60, ptr noundef nonnull @.str.446, i32 noundef %div172, i32 noundef %64) #13
  br label %do.end176

do.end176:                                        ; preds = %if.then168, %do.end151
  %call177 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 8, i32 noundef 15, i32 noundef %best.0.lcssa) #13
  %call178 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 14, i32 noundef 2047, i32 noundef %div154) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end176, %do.end77, %do.end37, %if.then22, %do.body10, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.468)
  switch i32 %clk_id, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %src.0 = phi i32 [ 512, %sw.bb2 ], [ %clk_id, %entry.sw.epilog_crit_edge ]
  %sysclk3 = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %sysclk3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %clk_id, ptr %sysclk3, align 4
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 1536, i32 noundef %src.0) #13
  %sysclk_rate = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %sysclk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and = and i32 %fmt, 15
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.469)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 4, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.epilog11_crit_edge
    i32 3, label %sw.bb6
    i32 1, label %sw.bb8
  ]

entry.sw.epilog11_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog11

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %aif0.0 = phi i32 [ 3, %entry.sw.bb2_crit_edge ], [ 19, %sw.bb ]
  %and4 = and i32 %fmt, 3840
  %3 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.470)
  switch i32 %and4, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb2.sw.epilog11_crit_edge
    i32 768, label %sw.bb2.sw.epilog11_crit_edge38
  ]

sw.bb2.sw.epilog11_crit_edge38:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog11

sw.bb2.sw.epilog11_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog11

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog11

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb8, %sw.bb6, %sw.bb2.sw.epilog11_crit_edge, %sw.bb2.sw.epilog11_crit_edge38, %entry.sw.epilog11_crit_edge
  %aif0.1 = phi i32 [ 2, %sw.bb8 ], [ 1, %sw.bb6 ], [ 0, %entry.sw.epilog11_crit_edge ], [ %aif0.0, %sw.bb2.sw.epilog11_crit_edge ], [ %aif0.0, %sw.bb2.sw.epilog11_crit_edge38 ]
  %and12 = lshr i32 %fmt, 8
  %4 = and i32 %and12, 15
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.471)
  switch i32 %4, label %sw.epilog11.cleanup_crit_edge [
    i32 0, label %sw.epilog11.sw.epilog20_crit_edge
    i32 3, label %sw.bb13
    i32 2, label %sw.bb15
    i32 4, label %sw.bb17
  ]

sw.epilog11.sw.epilog20_crit_edge:                ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog20

sw.epilog11.cleanup_crit_edge:                    ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #15
  %or14 = or i32 %aif0.1, 128
  br label %sw.epilog20

sw.bb15:                                          ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #15
  %or16 = or i32 %aif0.1, 16
  br label %sw.epilog20

sw.bb17:                                          ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #15
  %or18 = or i32 %aif0.1, 144
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb17, %sw.bb15, %sw.bb13, %sw.epilog11.sw.epilog20_crit_edge
  %aif0.2 = phi i32 [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %aif0.1, %sw.epilog11.sw.epilog20_crit_edge ]
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.472)
  switch i16 %trunc, label %sw.epilog20.cleanup_crit_edge [
    i16 4096, label %sw.bb22
    i16 16384, label %sw.epilog20.sw.epilog25_crit_edge
  ]

sw.epilog20.sw.epilog25_crit_edge:                ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.epilog20.cleanup_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #15
  %or23 = or i32 %aif0.2, 64
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %sw.bb22, %sw.epilog20.sw.epilog25_crit_edge
  %aif0.3 = phi i32 [ %aif0.2, %sw.epilog20.sw.epilog25_crit_edge ], [ %or23, %sw.bb22 ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 211, i32 noundef %aif0.3) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog25, %sw.epilog20.cleanup_crit_edge, %sw.epilog11.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog25 ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog11.cleanup_crit_edge ], [ -22, %sw.epilog20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 24
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 49, i32 noundef 16, i32 noundef %.) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 8, i32 noundef %.) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %call2 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #13
  %bclk = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %bclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %call2, 1
  %9 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %bclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i73 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i73 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i73, align 4
  %lrclk = getelementptr inbounds %struct.wm8962_priv, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %lrclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lrclk, align 4
  %13 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.473)
  switch i32 %11, label %do.end [
    i32 48000, label %if.end.if.end15_crit_edge
    i32 44100, label %if.end15.fold.split
    i32 32000, label %if.end15.fold.split82
    i32 22050, label %if.end15.fold.split83
    i32 24000, label %if.end15.fold.split84
    i32 16000, label %if.end15.fold.split85
    i32 11025, label %if.end15.fold.split86
    i32 12000, label %if.end15.fold.split87
    i32 8000, label %if.end15.fold.split88
    i32 88200, label %if.end15.fold.split89
    i32 96000, label %if.end15.fold.split90
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.447, i32 noundef %11) #16
  br label %cleanup

if.end15.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split82:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split83:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split84:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split85:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split86:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split87:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split88:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split89:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.fold.split90:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.end15.fold.split90, %if.end15.fold.split89, %if.end15.fold.split88, %if.end15.fold.split87, %if.end15.fold.split86, %if.end15.fold.split85, %if.end15.fold.split84, %if.end15.fold.split83, %if.end15.fold.split82, %if.end15.fold.split, %if.end.if.end15_crit_edge
  %i.079.lcssa = phi i32 [ 0, %if.end.if.end15_crit_edge ], [ 1, %if.end15.fold.split ], [ 2, %if.end15.fold.split82 ], [ 3, %if.end15.fold.split83 ], [ 4, %if.end15.fold.split84 ], [ 5, %if.end15.fold.split85 ], [ 6, %if.end15.fold.split86 ], [ 7, %if.end15.fold.split87 ], [ 8, %if.end15.fold.split88 ], [ 9, %if.end15.fold.split89 ], [ 10, %if.end15.fold.split90 ]
  %reg = getelementptr [11 x %struct.anon.111], ptr @sr_vals, i32 0, i32 %i.079.lcssa, i32 1
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %rem81 = urem i32 %11, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem81)
  %cmp17 = icmp eq i32 %rem81, 0
  %or19 = or i32 %17, 16
  %spec.select = select i1 %cmp17, i32 %or19, i32 %17
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end15.if.then.i.i.i_crit_edge

if.end15.if.then.i.i.i_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end15.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end15.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %19, %if.end15.if.then.i.i.i_crit_edge ], [ %22, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #13, !range !794
  %add.i.i.i = or i32 %20, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end15
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.1.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #13
  %23 = add i32 %call1.i, -16
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %25 = icmp ult i32 %24, 5
  br i1 %25, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %24 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %26 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %switch.lobit.not = icmp eq i8 %26, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8962_hw_params, i32 0, i32 %24
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 12, i32 noundef %switch.load) #13
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 23, i32 noundef %spec.select) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8962_hw_params.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8962_hw_params, %if.then33)) #13
          to label %do.end39 [label %if.then33], !srcloc !788

if.then33:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bclk, align 4
  %32 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lrclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8962_hw_params.__UNIQUE_ID_ddebug330, ptr noundef %29, ptr noundef nonnull @.str.449, i32 noundef %31, i32 noundef %33) #13
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %switch.lookup
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp41 = icmp eq i32 %35, 3
  br i1 %cmp41, label %if.then42, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @wm8962_configure_bclk(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.end39.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %do.end39.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 25, i32 noundef 448, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 28, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #13
  %supplies = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 15
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 8, ptr noundef %supplies) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %9) #13
  tail call void @clk_unprepare(ptr noundef %9) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8962_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.450, i32 noundef %retval.0.i.ph) #16
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %supplies = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 15
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 8, ptr noundef %supplies) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call2) #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %5) #13
  tail call void @clk_unprepare(ptr noundef %5) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.wm8962_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i43 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 15, i32 noundef 25155) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.not.i = icmp eq i32 %call.i43, 0
  br i1 %cmp.not.i, label %if.end.i44, label %if.end7.wm8962_reset.exit_crit_edge

if.end7.wm8962_reset.exit_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %wm8962_reset.exit

if.end.i44:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 127, i32 noundef 0) #13
  br label %wm8962_reset.exit

wm8962_reset.exit:                                ; preds = %if.end.i44, %if.end7.wm8962_reset.exit_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %13) #13
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 8, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 129, i32 noundef 176, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call17 = tail call i32 @regcache_sync(ptr noundef %21) #13
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 28, i32 noundef 24, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 25, i32 noundef 448, i32 noundef 448, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  tail call void @msleep(i32 noundef 5) #13
  br label %cleanup

cleanup:                                          ; preds = %wm8962_reset.exit, %do.end6, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call2, %do.end6 ], [ 0, %wm8962_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 505)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 505)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !168, !170, !171, !173, !175, !176, !177, !178, !180, !181, !183, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !444, !446, !448, !450, !452, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !558, !559, !560, !562, !563, !565, !566, !567, !569, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !623, !624, !625, !627, !628, !630, !632, !633, !634, !636, !637, !638, !640, !641, !642, !644, !645, !647, !649, !650, !651, !653, !654, !656, !657, !659, !660, !661, !662, !664, !666, !667, !668, !670, !671, !672, !674, !675, !676, !678, !679, !681, !682, !683, !685, !686, !687, !688, !690, !691, !693, !694, !695, !697, !698, !700, !701, !702, !704, !705, !707, !708, !710, !712, !713, !714, !716, !717, !719, !720, !721, !723, !724, !726, !727, !728, !730, !731, !732, !734, !735, !737, !738, !740, !741, !743, !745, !747, !749, !751, !752, !753, !754, !756, !757, !759, !761, !763, !765, !766, !767, !768, !770, !771}
!llvm.named.register.sp = !{!773}
!llvm.module.flags = !{!774, !775, !776, !777, !778, !779, !780, !781}
!llvm.ident = !{!782}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8962.c", i32 3143, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8962.c", i32 3144, i32 48}
!4 = !{ptr @__ksymtab_wm8962_mic_detect, !5, !"__ksymtab_wm8962_mic_detect", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8962.c", i32 3154, i32 1}
!6 = !{ptr @__initcall__kmod_snd_soc_wm8962__343_3887_wm8962_i2c_driver_init6, !7, !"__initcall__kmod_snd_soc_wm8962__343_3887_wm8962_i2c_driver_init6", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8962.c", i32 3887, i32 1}
!8 = !{ptr @__exitcall_wm8962_i2c_driver_exit, !7, !"__exitcall_wm8962_i2c_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description344, !10, !"__UNIQUE_ID_description344", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/wm8962.c", i32 3889, i32 1}
!11 = !{ptr @__UNIQUE_ID_author345, !12, !"__UNIQUE_ID_author345", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/wm8962.c", i32 3890, i32 1}
!13 = !{ptr @__UNIQUE_ID_file346, !14, !"__UNIQUE_ID_file346", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/wm8962.c", i32 3891, i32 1}
!15 = !{ptr @__UNIQUE_ID_license347, !14, !"__UNIQUE_ID_license347", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/wm8962.c", i32 3878, i32 11}
!18 = !{ptr @wm8962_i2c_driver, !19, !"wm8962_i2c_driver", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wm8962.c", i32 3876, i32 26}
!20 = !{ptr @wm8962_i2c_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/wm8962.c", i32 3557, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wm8962_i2c_probe.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/wm8962.c", i32 3561, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wm8962_i2c_probe.__key.6, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm8962.c", i32 3580, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @wm8962_i2c_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @wm8962_i2c_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/wm8962.c", i32 3587, i32 3}
!38 = !{ptr @wm8962_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm8962_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @wm8962_i2c_probe._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/wm8962.c", i32 3591, i32 19}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8962.c", i32 3594, i32 3}
!45 = !{ptr @wm8962_i2c_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @wm8962_i2c_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8962.c", i32 3607, i32 3}
!49 = !{ptr @wm8962_i2c_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wm8962_i2c_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm8962.c", i32 3611, i32 3}
!53 = !{ptr @wm8962_i2c_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @wm8962_i2c_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm8962.c", i32 3619, i32 3}
!57 = !{ptr @wm8962_i2c_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @wm8962_i2c_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm8962.c", i32 3624, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @wm8962_i2c_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @wm8962_i2c_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8962.c", i32 3633, i32 3}
!66 = !{ptr @wm8962_i2c_probe._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wm8962_i2c_probe._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8962.c", i32 3713, i32 4}
!70 = !{ptr @wm8962_i2c_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wm8962_i2c_probe._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8962.c", i32 3735, i32 4}
!74 = !{ptr @wm8962_i2c_probe._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @wm8962_i2c_probe._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @init_completion.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/completion.h", i32 87, i32 2}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm8962.c", i32 3523, i32 32}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm8962.c", i32 3526, i32 31}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm8962.c", i32 3529, i32 37}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm8962.c", i32 40, i32 2}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm8962.c", i32 41, i32 2}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm8962.c", i32 42, i32 2}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm8962.c", i32 43, i32 2}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm8962.c", i32 44, i32 2}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8962.c", i32 45, i32 2}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8962.c", i32 46, i32 2}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8962.c", i32 47, i32 2}
!101 = distinct !{null, !102, !"wm8962_supply_names", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8962.c", i32 39, i32 20}
!103 = !{ptr @wm8962_regmap, !104, !"wm8962_regmap", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8962.c", i32 3504, i32 35}
!105 = !{ptr @wm8962_reg, !106, !"wm8962_reg", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8962.c", i32 112, i32 33}
!107 = !{ptr @wm8962_dc_measure, !108, !"wm8962_dc_measure", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8962.c", i32 3498, i32 34}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8962.c", i32 3023, i32 3}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @wm8962_irq._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @wm8962_irq._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8962.c", i32 3031, i32 3}
!116 = !{ptr @wm8962_irq._entry.56, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @wm8962_irq._entry_ptr.58, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8962.c", i32 3039, i32 3}
!120 = !{ptr @wm8962_irq._entry.59, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @wm8962_irq._entry_ptr.61, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8962.c", i32 3053, i32 3}
!124 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @wm8962_irq._entry.62, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @wm8962_irq._entry_ptr.65, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wm8962.c", i32 3056, i32 3}
!129 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @wm8962_irq.__UNIQUE_ID_ddebug337, !128, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wm8962.c", i32 3061, i32 3}
!133 = !{ptr @wm8962_irq._entry.68, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @wm8962_irq._entry_ptr.70, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm8962.c", i32 3064, i32 3}
!137 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @wm8962_irq._entry.71, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @wm8962_irq._entry_ptr.74, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8962.c", i32 3069, i32 4}
!142 = !{ptr @wm8962_irq._entry.75, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @wm8962_irq._entry_ptr.77, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8962.c", i32 3075, i32 4}
!146 = !{ptr @wm8962_irq._entry.78, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @wm8962_irq._entry_ptr.80, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8962.c", i32 3077, i32 4}
!150 = !{ptr @wm8962_irq._entry.81, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @wm8962_irq._entry_ptr.83, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8962.c", i32 3079, i32 4}
!154 = !{ptr @wm8962_irq._entry.84, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @wm8962_irq._entry_ptr.86, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8962.c", i32 3081, i32 4}
!158 = !{ptr @wm8962_irq._entry.87, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @wm8962_irq._entry_ptr.89, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.90, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8962.c", i32 3085, i32 3}
!162 = !{ptr @wm8962_irq.__UNIQUE_ID_ddebug338, !161, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../include/trace/events/asoc.h", i32 211, i32 1}
!165 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!167 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!170 = !{ptr @.str.93, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @soc_component_dev_wm8962, !172, !"soc_component_dev_wm8962", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/wm8962.c", i32 3487, i32 46}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/wm8962.c", i32 3434, i32 4}
!175 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @wm8962_probe._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @wm8962_probe._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8962.c", i32 3465, i32 3}
!180 = !{ptr @wm8962_probe.__UNIQUE_ID_ddebug342, !179, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!181 = !{ptr @.str.97, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/wm8962.c", i32 3466, i32 29}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/wm8962.c", i32 3469, i32 3}
!185 = !{ptr @wm8962_probe._entry.98, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @wm8962_probe._entry_ptr.100, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/wm8962.c", i32 2389, i32 33}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm8962.c", i32 1667, i32 1}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/wm8962.c", i32 1669, i32 1}
!193 = !{ptr @.str.105, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm8962.c", i32 1671, i32 1}
!195 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm8962.c", i32 1673, i32 1}
!197 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm8962.c", i32 1676, i32 1}
!199 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/wm8962.c", i32 1678, i32 1}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm8962.c", i32 1680, i32 1}
!203 = !{ptr @.str.115, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/wm8962.c", i32 1683, i32 1}
!205 = !{ptr @.str.117, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/wm8962.c", i32 1685, i32 1}
!207 = !{ptr @.str.119, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/wm8962.c", i32 1687, i32 1}
!209 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm8962.c", i32 1689, i32 1}
!211 = !{ptr @.str.123, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/wm8962.c", i32 1691, i32 1}
!213 = !{ptr @.str.125, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/wm8962.c", i32 1692, i32 1}
!215 = !{ptr @.str.126, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm8962.c", i32 1693, i32 1}
!217 = !{ptr @.str.128, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm8962.c", i32 1694, i32 1}
!219 = !{ptr @.str.130, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/wm8962.c", i32 1695, i32 1}
!221 = !{ptr @.str.131, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm8962.c", i32 1697, i32 1}
!223 = !{ptr @.str.133, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm8962.c", i32 1700, i32 1}
!225 = !{ptr @.str.135, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/wm8962.c", i32 1702, i32 1}
!227 = !{ptr @.str.137, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/wm8962.c", i32 1703, i32 1}
!229 = !{ptr @.str.139, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/wm8962.c", i32 1704, i32 1}
!231 = !{ptr @.str.141, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/wm8962.c", i32 1705, i32 1}
!233 = !{ptr @.str.143, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/wm8962.c", i32 1706, i32 1}
!235 = !{ptr @.str.145, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm8962.c", i32 1708, i32 1}
!237 = !{ptr @.str.147, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm8962.c", i32 1711, i32 1}
!239 = !{ptr @.str.149, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wm8962.c", i32 1713, i32 1}
!241 = !{ptr @.str.151, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wm8962.c", i32 1715, i32 1}
!243 = !{ptr @.str.153, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/wm8962.c", i32 1717, i32 1}
!245 = !{ptr @.str.155, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm8962.c", i32 1719, i32 1}
!247 = !{ptr @.str.157, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wm8962.c", i32 1722, i32 1}
!249 = !{ptr @.str.159, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm8962.c", i32 1725, i32 1}
!251 = !{ptr @.str.161, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/wm8962.c", i32 1727, i32 1}
!253 = !{ptr @.str.163, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/wm8962.c", i32 1729, i32 1}
!255 = !{ptr @.str.165, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/wm8962.c", i32 1731, i32 1}
!257 = !{ptr @.str.167, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/wm8962.c", i32 1734, i32 1}
!259 = !{ptr @.str.169, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/wm8962.c", i32 1736, i32 1}
!261 = !{ptr @.str.171, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/wm8962.c", i32 1738, i32 1}
!263 = !{ptr @.str.173, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/wm8962.c", i32 1740, i32 1}
!265 = !{ptr @.str.175, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/wm8962.c", i32 1743, i32 1}
!267 = !{ptr @.str.177, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/wm8962.c", i32 1746, i32 1}
!269 = !{ptr @.str.179, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/wm8962.c", i32 1747, i32 1}
!271 = !{ptr @.str.181, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/wm8962.c", i32 1749, i32 1}
!273 = !{ptr @.str.183, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/wm8962.c", i32 1751, i32 1}
!275 = !{ptr @.str.185, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/wm8962.c", i32 1753, i32 1}
!277 = !{ptr @.str.187, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/wm8962.c", i32 1755, i32 1}
!279 = !{ptr @.str.189, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/wm8962.c", i32 1757, i32 1}
!281 = !{ptr @.str.191, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/wm8962.c", i32 1758, i32 1}
!283 = !{ptr @.str.193, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/wm8962.c", i32 1761, i32 1}
!285 = !{ptr @.str.195, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/wm8962.c", i32 1762, i32 1}
!287 = !{ptr @.str.197, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/wm8962.c", i32 1764, i32 1}
!289 = !{ptr @.str.199, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/wm8962.c", i32 1765, i32 1}
!291 = !{ptr @.str.201, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/wm8962.c", i32 1767, i32 1}
!293 = !{ptr @.str.203, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/wm8962.c", i32 1768, i32 1}
!295 = !{ptr @.str.205, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/wm8962.c", i32 1770, i32 1}
!297 = !{ptr @.str.206, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/wm8962.c", i32 1771, i32 1}
!299 = !{ptr @.str.208, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/wm8962.c", i32 1772, i32 1}
!301 = !{ptr @.str.209, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/wm8962.c", i32 1773, i32 1}
!303 = !{ptr @.str.210, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/wm8962.c", i32 1774, i32 1}
!305 = !{ptr @.str.212, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/wm8962.c", i32 1775, i32 1}
!307 = !{ptr @.str.213, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/wm8962.c", i32 1776, i32 1}
!309 = !{ptr @.str.215, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/wm8962.c", i32 1778, i32 1}
!311 = !{ptr @.str.217, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/wm8962.c", i32 1780, i32 1}
!313 = !{ptr @wm8962_snd_controls, !314, !"wm8962_snd_controls", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/wm8962.c", i32 1666, i32 38}
!315 = !{ptr @mixin_tlv, !316, !"mixin_tlv", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/wm8962.c", i32 1451, i32 14}
!317 = !{ptr @mixinpga_tlv, !318, !"mixinpga_tlv", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/wm8962.c", i32 1452, i32 14}
!319 = !{ptr @digital_tlv, !320, !"digital_tlv", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/wm8962.c", i32 1460, i32 14}
!321 = !{ptr @inpga_tlv, !322, !"inpga_tlv", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/wm8962.c", i32 1450, i32 14}
!323 = !{ptr @cap_hpf_mode, !324, !"cap_hpf_mode", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/wm8962.c", i32 1655, i32 8}
!325 = !{ptr @.str.219, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/wm8962.c", i32 1652, i32 2}
!327 = !{ptr @.str.220, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/wm8962.c", i32 1652, i32 11}
!329 = !{ptr @cap_hpf_mode_text, !330, !"cap_hpf_mode_text", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/wm8962.c", i32 1651, i32 20}
!331 = !{ptr @cap_lhpf_mode, !332, !"cap_lhpf_mode", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/wm8962.c", i32 1663, i32 8}
!333 = !{ptr @.str.221, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/wm8962.c", i32 1660, i32 2}
!335 = !{ptr @.str.222, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/wm8962.c", i32 1660, i32 9}
!337 = !{ptr @cap_lhpf_mode_text, !338, !"cap_lhpf_mode_text", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/wm8962.c", i32 1659, i32 20}
!339 = !{ptr @st_tlv, !340, !"st_tlv", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/wm8962.c", i32 1461, i32 14}
!341 = !{ptr @beep_tlv, !342, !"beep_tlv", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/wm8962.c", i32 1459, i32 14}
!343 = !{ptr @out_tlv, !344, !"out_tlv", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/wm8962.c", i32 1464, i32 14}
!345 = !{ptr @hp_tlv, !346, !"hp_tlv", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/wm8962.c", i32 1465, i32 14}
!347 = !{ptr @bypass_tlv, !348, !"bypass_tlv", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/wm8962.c", i32 1463, i32 14}
!349 = !{ptr @inmix_tlv, !350, !"inmix_tlv", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/wm8962.c", i32 1462, i32 14}
!351 = !{ptr @classd_tlv, !352, !"classd_tlv", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/wm8962.c", i32 1466, i32 14}
!353 = !{ptr @eq_tlv, !354, !"eq_tlv", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/wm8962.c", i32 1470, i32 14}
!355 = !{ptr @.str.223, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/wm8962.c", i32 1785, i32 1}
!357 = !{ptr @.str.225, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/wm8962.c", i32 1786, i32 1}
!359 = !{ptr @.str.227, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/wm8962.c", i32 1788, i32 1}
!361 = !{ptr @.str.229, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/wm8962.c", i32 1790, i32 1}
!363 = !{ptr @.str.231, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/wm8962.c", i32 1791, i32 1}
!365 = !{ptr @.str.233, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/wm8962.c", i32 1793, i32 1}
!367 = !{ptr @.str.235, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/wm8962.c", i32 1795, i32 1}
!369 = !{ptr @.str.237, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/wm8962.c", i32 1797, i32 1}
!371 = !{ptr @.str.239, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/wm8962.c", i32 1799, i32 1}
!373 = !{ptr @.str.241, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/wm8962.c", i32 1801, i32 1}
!375 = !{ptr @wm8962_spk_mono_controls, !376, !"wm8962_spk_mono_controls", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/wm8962.c", i32 1784, i32 38}
!377 = !{ptr @.str.247, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/wm8962.c", i32 1816, i32 1}
!379 = !{ptr @.str.249, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/wm8962.c", i32 1818, i32 1}
!381 = !{ptr @.str.251, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/wm8962.c", i32 1820, i32 1}
!383 = !{ptr @.str.253, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/wm8962.c", i32 1822, i32 1}
!385 = !{ptr @.str.255, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/wm8962.c", i32 1824, i32 1}
!387 = !{ptr @.str.257, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/wm8962.c", i32 1826, i32 1}
!389 = !{ptr @.str.259, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/wm8962.c", i32 1829, i32 1}
!391 = !{ptr @.str.261, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/wm8962.c", i32 1831, i32 1}
!393 = !{ptr @.str.263, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/wm8962.c", i32 1833, i32 1}
!395 = !{ptr @.str.265, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/wm8962.c", i32 1835, i32 1}
!397 = !{ptr @.str.267, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/wm8962.c", i32 1837, i32 1}
!399 = !{ptr @.str.269, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/wm8962.c", i32 1839, i32 1}
!401 = !{ptr @wm8962_spk_stereo_controls, !402, !"wm8962_spk_stereo_controls", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/wm8962.c", i32 1805, i32 38}
!403 = !{ptr @.str.271, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/wm8962.c", i32 2115, i32 1}
!405 = !{ptr @.str.272, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/wm8962.c", i32 2116, i32 1}
!407 = !{ptr @.str.273, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/wm8962.c", i32 2117, i32 1}
!409 = !{ptr @.str.274, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/wm8962.c", i32 2118, i32 1}
!411 = !{ptr @.str.275, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/wm8962.c", i32 2119, i32 1}
!413 = !{ptr @.str.276, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/wm8962.c", i32 2120, i32 1}
!415 = !{ptr @.str.277, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/wm8962.c", i32 2121, i32 1}
!417 = !{ptr @.str.278, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/wm8962.c", i32 2122, i32 1}
!419 = !{ptr @.str.279, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/wm8962.c", i32 2128, i32 1}
!421 = !{ptr @.str.280, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/wm8962.c", i32 2130, i32 1}
!423 = !{ptr @.str.281, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/wm8962.c", i32 2132, i32 1}
!425 = !{ptr @.str.282, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/wm8962.c", i32 2133, i32 1}
!427 = !{ptr @.str.283, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/wm8962.c", i32 2136, i32 1}
!429 = !{ptr @.str.284, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/wm8962.c", i32 2137, i32 1}
!431 = !{ptr @.str.285, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/wm8962.c", i32 2139, i32 1}
!433 = !{ptr @.str.286, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/wm8962.c", i32 2141, i32 1}
!435 = !{ptr @.str.287, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/wm8962.c", i32 2143, i32 1}
!437 = !{ptr @.str.288, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/wm8962.c", i32 2145, i32 1}
!439 = !{ptr @.str.289, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/wm8962.c", i32 2148, i32 1}
!441 = !{ptr @.str.290, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/wm8962.c", i32 2150, i32 1}
!443 = !{ptr @.str.291, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @.str.292, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/wm8962.c", i32 2151, i32 1}
!446 = !{ptr @.str.293, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/wm8962.c", i32 2153, i32 1}
!448 = !{ptr @.str.294, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/wm8962.c", i32 2154, i32 1}
!450 = !{ptr @.str.295, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/wm8962.c", i32 2156, i32 1}
!452 = !{ptr @.str.296, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.297, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/wm8962.c", i32 2157, i32 1}
!455 = !{ptr @.str.298, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/wm8962.c", i32 2159, i32 1}
!457 = !{ptr @.str.299, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/wm8962.c", i32 2160, i32 1}
!459 = !{ptr @.str.300, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/wm8962.c", i32 2162, i32 1}
!461 = !{ptr @.str.301, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/wm8962.c", i32 2164, i32 1}
!463 = !{ptr @.str.302, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/wm8962.c", i32 2167, i32 1}
!465 = !{ptr @.str.303, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/wm8962.c", i32 2169, i32 1}
!467 = !{ptr @.str.304, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/wm8962.c", i32 2172, i32 1}
!469 = !{ptr @.str.305, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/wm8962.c", i32 2175, i32 1}
!471 = !{ptr @.str.306, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/wm8962.c", i32 2176, i32 1}
!473 = !{ptr @wm8962_dapm_widgets, !474, !"wm8962_dapm_widgets", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/wm8962.c", i32 2114, i32 41}
!475 = !{ptr @.str.308, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/wm8962.c", i32 1852, i32 3}
!477 = !{ptr @.str.309, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/wm8962.c", i32 2053, i32 1}
!479 = !{ptr @.str.311, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/wm8962.c", i32 2054, i32 1}
!481 = !{ptr @.str.313, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/wm8962.c", i32 2055, i32 1}
!483 = !{ptr @.str.315, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/wm8962.c", i32 2056, i32 1}
!485 = !{ptr @inpgal, !486, !"inpgal", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/wm8962.c", i32 2052, i32 38}
!487 = !{ptr @.str.317, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/wm8962.c", i32 2060, i32 1}
!489 = !{ptr @.str.319, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/wm8962.c", i32 2061, i32 1}
!491 = !{ptr @.str.321, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/wm8962.c", i32 2062, i32 1}
!493 = !{ptr @.str.323, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/wm8962.c", i32 2063, i32 1}
!495 = !{ptr @inpgar, !496, !"inpgar", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/wm8962.c", i32 2059, i32 38}
!497 = !{ptr @.str.327, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/wm8962.c", i32 2069, i32 1}
!499 = !{ptr @mixinl, !500, !"mixinl", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/wm8962.c", i32 2066, i32 38}
!501 = !{ptr @mixinr, !502, !"mixinr", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/wm8962.c", i32 2072, i32 38}
!503 = !{ptr @.str.332, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/wm8962.c", i32 2024, i32 2}
!505 = !{ptr @stl_mux, !506, !"stl_mux", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/wm8962.c", i32 2023, i32 38}
!507 = !{ptr @stl_enum, !508, !"stl_enum", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/wm8962.c", i32 2020, i32 8}
!509 = !{ptr @.str.333, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/wm8962.c", i32 2012, i32 34}
!511 = !{ptr @.str.334, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/wm8962.c", i32 2012, i32 42}
!513 = !{ptr @.str.335, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/wm8962.c", i32 2012, i32 50}
!515 = !{ptr @st_text, !516, !"st_text", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/wm8962.c", i32 2012, i32 20}
!517 = !{ptr @.str.336, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/wm8962.c", i32 2018, i32 2}
!519 = !{ptr @str_mux, !520, !"str_mux", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/wm8962.c", i32 2017, i32 38}
!521 = !{ptr @str_enum, !522, !"str_enum", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/wm8962.c", i32 2014, i32 8}
!523 = !{ptr @.str.337, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/wm8962.c", i32 2079, i32 1}
!525 = !{ptr @.str.339, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/wm8962.c", i32 2080, i32 1}
!527 = !{ptr @.str.341, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/wm8962.c", i32 2081, i32 1}
!529 = !{ptr @.str.343, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/wm8962.c", i32 2082, i32 1}
!531 = !{ptr @hpmixl, !532, !"hpmixl", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/wm8962.c", i32 2078, i32 38}
!533 = !{ptr @hpmixr, !534, !"hpmixr", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/wm8962.c", i32 2087, i32 38}
!535 = !{ptr @.str.353, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/wm8962.c", i32 1973, i32 3}
!537 = !{ptr @.str.354, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/wm8962.c", i32 2050, i32 2}
!539 = !{ptr @hpoutl_mux, !540, !"hpoutl_mux", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/wm8962.c", i32 2049, i32 38}
!541 = !{ptr @hpoutl_enum, !542, !"hpoutl_enum", i1 false, i1 false}
!542 = !{!"../sound/soc/codecs/wm8962.c", i32 2046, i32 8}
!543 = !{ptr @.str.355, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/wm8962.c", i32 2026, i32 38}
!545 = !{ptr @.str.356, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/wm8962.c", i32 2026, i32 45}
!547 = !{ptr @outmux_text, !548, !"outmux_text", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/wm8962.c", i32 2026, i32 20}
!549 = !{ptr @.str.357, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/wm8962.c", i32 2044, i32 2}
!551 = !{ptr @hpoutr_mux, !552, !"hpoutr_mux", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/wm8962.c", i32 2043, i32 38}
!553 = !{ptr @hpoutr_enum, !554, !"hpoutr_enum", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/wm8962.c", i32 2040, i32 8}
!555 = !{ptr @.str.358, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/wm8962.c", i32 1894, i32 5}
!557 = !{ptr @.str.359, !556, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @hp_event._entry, !556, !"_entry", i1 false, i1 false}
!559 = !{ptr @hp_event._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.360, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/wm8962.c", i32 1899, i32 4}
!562 = !{ptr @hp_event.__UNIQUE_ID_ddebug322, !561, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!563 = !{ptr @.str.362, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/wm8962.c", i32 1903, i32 4}
!565 = !{ptr @hp_event._entry.361, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @hp_event._entry_ptr.363, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.364, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/wm8962.c", i32 1905, i32 4}
!569 = !{ptr @hp_event.__UNIQUE_ID_ddebug323, !568, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!570 = !{ptr @.str.365, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/wm8962.c", i32 2180, i32 1}
!572 = !{ptr @.str.366, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/wm8962.c", i32 2182, i32 1}
!574 = !{ptr @.str.367, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/wm8962.c", i32 2184, i32 1}
!576 = !{ptr @.str.368, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/wm8962.c", i32 2185, i32 1}
!578 = !{ptr @wm8962_dapm_spk_mono_widgets, !579, !"wm8962_dapm_spk_mono_widgets", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/wm8962.c", i32 2179, i32 41}
!580 = !{ptr @spkmixl, !581, !"spkmixl", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/wm8962.c", i32 2096, i32 38}
!582 = !{ptr @.str.376, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/wm8962.c", i32 2038, i32 2}
!584 = !{ptr @spkoutl_mux, !585, !"spkoutl_mux", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/wm8962.c", i32 2037, i32 38}
!586 = !{ptr @spkoutl_enum, !587, !"spkoutl_enum", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/wm8962.c", i32 2034, i32 8}
!588 = !{ptr @.str.377, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/wm8962.c", i32 2189, i32 1}
!590 = !{ptr @.str.378, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/wm8962.c", i32 2191, i32 1}
!592 = !{ptr @.str.379, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/wm8962.c", i32 2194, i32 1}
!594 = !{ptr @.str.380, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/wm8962.c", i32 2196, i32 1}
!596 = !{ptr @.str.381, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/wm8962.c", i32 2199, i32 1}
!598 = !{ptr @.str.382, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/soc/codecs/wm8962.c", i32 2200, i32 1}
!600 = !{ptr @.str.383, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../sound/soc/codecs/wm8962.c", i32 2202, i32 1}
!602 = !{ptr @.str.384, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/soc/codecs/wm8962.c", i32 2203, i32 1}
!604 = !{ptr @wm8962_dapm_spk_stereo_widgets, !605, !"wm8962_dapm_spk_stereo_widgets", i1 false, i1 false}
!605 = !{!"../sound/soc/codecs/wm8962.c", i32 2188, i32 41}
!606 = !{ptr @spkmixr, !607, !"spkmixr", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/wm8962.c", i32 2105, i32 38}
!608 = !{ptr @.str.392, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/wm8962.c", i32 2032, i32 2}
!610 = !{ptr @spkoutr_mux, !611, !"spkoutr_mux", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/wm8962.c", i32 2031, i32 38}
!612 = !{ptr @spkoutr_enum, !613, !"spkoutr_enum", i1 false, i1 false}
!613 = !{!"../sound/soc/codecs/wm8962.c", i32 2028, i32 8}
!614 = !{ptr @wm8962_intercon, !615, !"wm8962_intercon", i1 false, i1 false}
!615 = !{!"../sound/soc/codecs/wm8962.c", i32 2206, i32 40}
!616 = !{ptr @wm8962_spk_mono_intercon, !617, !"wm8962_spk_mono_intercon", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/wm8962.c", i32 2300, i32 40}
!618 = !{ptr @wm8962_spk_stereo_intercon, !619, !"wm8962_spk_stereo_intercon", i1 false, i1 false}
!619 = !{!"../sound/soc/codecs/wm8962.c", i32 2319, i32 40}
!620 = !{ptr @.str.393, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/wm8962.c", i32 3247, i32 3}
!622 = !{ptr @.str.394, !621, !"<string literal>", i1 false, i1 false}
!623 = !{ptr @wm8962_init_beep._entry, !621, !"_entry", i1 false, i1 false}
!624 = !{ptr @wm8962_init_beep._entry_ptr, !621, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @wm8962_init_beep.__key, !626, !"__key", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/wm8962.c", i32 3251, i32 2}
!627 = !{ptr @.str.395, !626, !"<string literal>", i1 false, i1 false}
!628 = !{ptr @.str.396, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/wm8962.c", i32 3254, i32 23}
!630 = !{ptr @.str.398, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/wm8962.c", i32 3267, i32 3}
!632 = !{ptr @wm8962_init_beep._entry.397, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @wm8962_init_beep._entry_ptr.399, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.401, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/wm8962.c", i32 3272, i32 3}
!636 = !{ptr @wm8962_init_beep._entry.400, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @wm8962_init_beep._entry_ptr.402, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.403, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../sound/soc/codecs/wm8962.c", i32 3177, i32 3}
!640 = !{ptr @.str.404, !639, !"<string literal>", i1 false, i1 false}
!641 = !{ptr @wm8962_beep_work.__UNIQUE_ID_ddebug339, !639, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!642 = !{ptr @.str.405, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../sound/soc/codecs/wm8962.c", i32 3184, i32 3}
!644 = !{ptr @wm8962_beep_work.__UNIQUE_ID_ddebug340, !643, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!645 = !{ptr @beep_rates, !646, !"beep_rates", i1 false, i1 false}
!646 = !{!"../sound/soc/codecs/wm8962.c", i32 3156, i32 12}
!647 = !{ptr @.str.406, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../sound/soc/codecs/wm8962.c", i32 3203, i32 2}
!649 = !{ptr @.str.407, !648, !"<string literal>", i1 false, i1 false}
!650 = !{ptr @wm8962_beep_event.__UNIQUE_ID_ddebug341, !648, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!651 = !{ptr @.str.408, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../sound/soc/codecs/wm8962.c", i32 3238, i32 8}
!653 = !{ptr @dev_attr_beep, !652, !"dev_attr_beep", i1 false, i1 false}
!654 = !{ptr @wm8962_init_gpio.lock_key, !655, !"lock_key", i1 false, i1 false}
!655 = !{!"../sound/soc/codecs/wm8962.c", i32 3388, i32 8}
!656 = !{ptr @wm8962_init_gpio.request_key, !655, !"request_key", i1 false, i1 false}
!657 = !{ptr @.str.409, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../sound/soc/codecs/wm8962.c", i32 3390, i32 3}
!659 = !{ptr @.str.410, !658, !"<string literal>", i1 false, i1 false}
!660 = !{ptr @wm8962_init_gpio._entry, !658, !"_entry", i1 false, i1 false}
!661 = !{ptr @wm8962_init_gpio._entry_ptr, !658, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @wm8962_template_chip, !663, !"wm8962_template_chip", i1 false, i1 false}
!663 = !{!"../sound/soc/codecs/wm8962.c", i32 3364, i32 31}
!664 = !{ptr @.str.411, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../sound/soc/codecs/wm8962.c", i32 2828, i32 3}
!666 = !{ptr @.str.412, !665, !"<string literal>", i1 false, i1 false}
!667 = !{ptr @wm8962_set_fll.__UNIQUE_ID_ddebug335, !665, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!668 = !{ptr @.str.413, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../sound/soc/codecs/wm8962.c", i32 2861, i32 3}
!670 = !{ptr @wm8962_set_fll._entry, !669, !"_entry", i1 false, i1 false}
!671 = !{ptr @wm8962_set_fll._entry_ptr, !669, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @.str.415, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../sound/soc/codecs/wm8962.c", i32 2889, i32 3}
!674 = !{ptr @wm8962_set_fll._entry.414, !673, !"_entry", i1 false, i1 false}
!675 = !{ptr @wm8962_set_fll._entry_ptr.416, !673, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.417, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/soc/codecs/wm8962.c", i32 2897, i32 2}
!678 = !{ptr @wm8962_set_fll.__UNIQUE_ID_ddebug336, !677, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!679 = !{ptr @.str.419, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../sound/soc/codecs/wm8962.c", i32 2911, i32 3}
!681 = !{ptr @wm8962_set_fll._entry.418, !680, !"_entry", i1 false, i1 false}
!682 = !{ptr @wm8962_set_fll._entry_ptr.420, !680, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @.str.421, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../sound/soc/codecs/wm8962.c", i32 2752, i32 4}
!685 = !{ptr @.str.422, !684, !"<string literal>", i1 false, i1 false}
!686 = !{ptr @fll_factors._entry, !684, !"_entry", i1 false, i1 false}
!687 = !{ptr @fll_factors._entry_ptr, !684, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.423, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../sound/soc/codecs/wm8962.c", i32 2758, i32 2}
!690 = !{ptr @fll_factors.__UNIQUE_ID_ddebug331, !689, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!691 = !{ptr @.str.425, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../sound/soc/codecs/wm8962.c", i32 2768, i32 4}
!693 = !{ptr @fll_factors._entry.424, !692, !"_entry", i1 false, i1 false}
!694 = !{ptr @fll_factors._entry_ptr.426, !692, !"_entry_ptr", i1 false, i1 false}
!695 = !{ptr @.str.427, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../sound/soc/codecs/wm8962.c", i32 2776, i32 2}
!697 = !{ptr @fll_factors.__UNIQUE_ID_ddebug332, !696, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!698 = !{ptr @.str.429, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../sound/soc/codecs/wm8962.c", i32 2787, i32 3}
!700 = !{ptr @fll_factors._entry.428, !699, !"_entry", i1 false, i1 false}
!701 = !{ptr @fll_factors._entry_ptr.430, !699, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @.str.431, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../sound/soc/codecs/wm8962.c", i32 2804, i32 2}
!704 = !{ptr @fll_factors.__UNIQUE_ID_ddebug333, !703, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!705 = !{ptr @.str.432, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../sound/soc/codecs/wm8962.c", i32 2806, i32 2}
!707 = !{ptr @fll_factors.__UNIQUE_ID_ddebug334, !706, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!708 = !{ptr @fll_fratios, !709, !"fll_fratios", i1 false, i1 false}
!709 = !{!"../sound/soc/codecs/wm8962.c", i32 2728, i32 3}
!710 = !{ptr @.str.433, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../sound/soc/codecs/wm8962.c", i32 2413, i32 3}
!712 = !{ptr @.str.434, !711, !"<string literal>", i1 false, i1 false}
!713 = !{ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug324, !711, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!714 = !{ptr @.str.435, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../sound/soc/codecs/wm8962.c", i32 2418, i32 3}
!716 = !{ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug325, !715, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!717 = !{ptr @.str.436, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../sound/soc/codecs/wm8962.c", i32 2430, i32 3}
!719 = !{ptr @wm8962_configure_bclk._entry, !718, !"_entry", i1 false, i1 false}
!720 = !{ptr @wm8962_configure_bclk._entry_ptr, !718, !"_entry_ptr", i1 false, i1 false}
!721 = !{ptr @.str.437, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../sound/soc/codecs/wm8962.c", i32 2435, i32 2}
!723 = !{ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug326, !722, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!724 = !{ptr @.str.439, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../sound/soc/codecs/wm8962.c", i32 2455, i32 3}
!726 = !{ptr @wm8962_configure_bclk._entry.438, !725, !"_entry", i1 false, i1 false}
!727 = !{ptr @wm8962_configure_bclk._entry_ptr.440, !725, !"_entry_ptr", i1 false, i1 false}
!728 = !{ptr @.str.442, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../sound/soc/codecs/wm8962.c", i32 2471, i32 3}
!730 = !{ptr @wm8962_configure_bclk._entry.441, !729, !"_entry", i1 false, i1 false}
!731 = !{ptr @wm8962_configure_bclk._entry_ptr.443, !729, !"_entry_ptr", i1 false, i1 false}
!732 = !{ptr @.str.444, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../sound/soc/codecs/wm8962.c", i32 2475, i32 2}
!734 = !{ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug327, !733, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!735 = !{ptr @.str.445, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../sound/soc/codecs/wm8962.c", i32 2494, i32 2}
!737 = !{ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug328, !736, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!738 = !{ptr @.str.446, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../sound/soc/codecs/wm8962.c", i32 2498, i32 2}
!740 = !{ptr @wm8962_configure_bclk.__UNIQUE_ID_ddebug329, !739, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!741 = !{ptr @sysclk_rates, !742, !"sysclk_rates", i1 false, i1 false}
!742 = !{!"../sound/soc/codecs/wm8962.c", i32 2399, i32 18}
!743 = !{ptr @bclk_divs, !744, !"bclk_divs", i1 false, i1 false}
!744 = !{!"../sound/soc/codecs/wm8962.c", i32 2395, i32 18}
!745 = !{ptr @wm8962_dai, !746, !"wm8962_dai", i1 false, i1 false}
!746 = !{!"../sound/soc/codecs/wm8962.c", i32 2962, i32 34}
!747 = !{ptr @wm8962_dai_ops, !748, !"wm8962_dai_ops", i1 false, i1 false}
!748 = !{!"../sound/soc/codecs/wm8962.c", i32 2954, i32 37}
!749 = !{ptr @.str.447, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../sound/soc/codecs/wm8962.c", i32 2578, i32 3}
!751 = !{ptr @.str.448, !750, !"<string literal>", i1 false, i1 false}
!752 = !{ptr @wm8962_hw_params._entry, !750, !"_entry", i1 false, i1 false}
!753 = !{ptr @wm8962_hw_params._entry_ptr, !750, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @.str.449, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../sound/soc/codecs/wm8962.c", i32 2607, i32 2}
!756 = !{ptr @wm8962_hw_params.__UNIQUE_ID_ddebug330, !755, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!757 = !{ptr @sr_vals, !758, !"sr_vals", i1 false, i1 false}
!758 = !{!"../sound/soc/codecs/wm8962.c", i32 2541, i32 3}
!759 = !{ptr @wm8962_of_match, !760, !"wm8962_of_match", i1 false, i1 false}
!760 = !{!"../sound/soc/codecs/wm8962.c", i32 3870, i32 34}
!761 = !{ptr @wm8962_pm, !762, !"wm8962_pm", i1 false, i1 false}
!762 = !{!"../sound/soc/codecs/wm8962.c", i32 3860, i32 32}
!763 = !{ptr @.str.450, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../sound/soc/codecs/wm8962.c", i32 3786, i32 3}
!765 = !{ptr @.str.451, !764, !"<string literal>", i1 false, i1 false}
!766 = !{ptr @wm8962_runtime_resume._entry, !764, !"_entry", i1 false, i1 false}
!767 = !{ptr @wm8962_runtime_resume._entry_ptr, !764, !"_entry_ptr", i1 false, i1 false}
!768 = !{ptr @wm8962_runtime_resume._entry.452, !769, !"_entry", i1 false, i1 false}
!769 = !{!"../sound/soc/codecs/wm8962.c", i32 3793, i32 3}
!770 = !{ptr @wm8962_runtime_resume._entry_ptr.453, !769, !"_entry_ptr", i1 false, i1 false}
!771 = !{ptr @wm8962_i2c_id, !772, !"wm8962_i2c_id", i1 false, i1 false}
!772 = !{!"../sound/soc/codecs/wm8962.c", i32 3864, i32 35}
!773 = !{!"sp"}
!774 = !{i32 1, !"wchar_size", i32 2}
!775 = !{i32 1, !"min_enum_size", i32 4}
!776 = !{i32 8, !"branch-target-enforcement", i32 0}
!777 = !{i32 8, !"sign-return-address", i32 0}
!778 = !{i32 8, !"sign-return-address-all", i32 0}
!779 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!780 = !{i32 7, !"uwtable", i32 1}
!781 = !{i32 7, !"frame-pointer", i32 2}
!782 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!783 = !{!"auto-init"}
!784 = !{i8 0, i8 2}
!785 = !{i64 2148461452}
!786 = !{i64 947072, i64 947097, i64 947119, i64 947135, i64 947147, i64 947167, i64 947191, i64 947207, i64 947219}
!787 = !{i64 2148461640}
!788 = !{i64 2149075410, i64 2149075415, i64 2149075428, i64 2149075472, i64 2149075506, i64 2149075527}
!789 = !{!"branch_weights", i32 2000, i32 1}
!790 = !{i64 2156713108}
!791 = !{i64 2156713311}
!792 = !{i64 2149486751}
!793 = !{i64 2149487787}
!794 = !{i32 0, i32 33}
