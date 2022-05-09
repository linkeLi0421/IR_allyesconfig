; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8903.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8903.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8903_mic_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8903_mic_detect\09\09\09\09"
module asm "\09.long\09__crc_wm8903_mic_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8903_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8903_mic_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8903_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.105, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.105 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.109 = type { i32, i32 }
%struct.anon.110 = type { i32, i32, i32, i32 }
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
%struct.wm8903_priv = type { ptr, ptr, ptr, [4 x %struct.regulator_bulk_data], i32, i32, %struct.mutex, i32, i32, i32, [4 x i32], i32, ptr, i32, i32, i32, i32, %struct.gpio_chip }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wm8903_platform_data = type { i8, i16, i32, i32, [5 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@wm8903_mic_detect.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8903\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8903_mic_detect\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8903.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Enabling microphone detection: %x %x\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_wm8903_mic_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8903_mic_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8903_mic_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8903_mic_detect to i32), ptr @__kstrtab_wm8903_mic_detect, ptr @__kstrtabns_wm8903_mic_detect }, section "___ksymtab_gpl+wm8903_mic_detect", align 4
@__initcall__kmod_snd_soc_wm8903__338_2222_wm8903_i2c_driver_init6 = internal global ptr @wm8903_i2c_driver_init, section ".initcall6.init", align 4
@wm8903_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8903_i2c_probe, ptr @wm8903_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8903_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8903_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8903_i2c_driver_exit = internal global ptr @wm8903_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description339 = internal constant [46 x i8] c"snd_soc_wm8903.description=ASoC WM8903 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author340 = internal constant [70 x i8] c"snd_soc_wm8903.author=Mark Brown <broonie@opensource.wolfsonmicro.cm>\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [52 x i8] c"snd_soc_wm8903.file=sound/soc/codecs/snd-soc-wm8903\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [27 x i8] c"snd_soc_wm8903.license=GPL\00", section ".modinfo", align 1
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8903\00", [25 x i8] zeroinitializer }, align 32
@wm8903_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8903\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wm8903_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8903\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wm8903->lock\00", [18 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8903_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm8903_readable_register, ptr @wm8903_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 172, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_reg_defaults, i32 72, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8903:2001:(&wm8903_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 2005, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8903_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr = internal global ptr @wm8903_i2c_probe._entry, section ".printk_index", align 4
@wm8903_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 2041, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr.13 = internal global ptr @wm8903_i2c_probe._entry.11, section ".printk_index", align 4
@wm8903_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 2048, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr.16 = internal global ptr @wm8903_i2c_probe._entry.14, section ".printk_index", align 4
@wm8903_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 2054, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read chip ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr.19 = internal global ptr @wm8903_i2c_probe._entry.17, section ".printk_index", align 4
@wm8903_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.2, i32 2058, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device with ID %x is not a WM8903\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr.22 = internal global ptr @wm8903_i2c_probe._entry.20, section ".printk_index", align 4
@wm8903_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.2, i32 2065, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read chip revision: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr.25 = internal global ptr @wm8903_i2c_probe._entry.23, section ".printk_index", align 4
@wm8903_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.2, i32 2069, ptr @.str.28, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WM8903 revision %c\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr.29 = internal global ptr @wm8903_i2c_probe._entry.26, section ".printk_index", align 4
@wm8903_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.2, i32 2134, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8903_i2c_probe._entry_ptr.32 = internal global ptr @wm8903_i2c_probe._entry.30, section ".printk_index", align 4
@soc_component_dev_wm8903 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8903_snd_controls, i32 49, ptr @wm8903_dapm_widgets, i32 74, ptr @wm8903_intercon, i32 117, ptr null, ptr null, ptr null, ptr @wm8903_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_seq_notifier, ptr null, ptr @wm8903_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8903_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.314, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.315, i64 68719476804, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.316, i64 68719476804, i32 1790, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8903_reg_defaults = internal constant { [72 x %struct.reg_default], [128 x i8] } { [72 x %struct.reg_default] [%struct.reg_default { i32 4, i32 24 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 8, i32 1 }, %struct.reg_default { i32 10, i32 1 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 20, i32 1024 }, %struct.reg_default { i32 21, i32 3335 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 24, i32 80 }, %struct.reg_default { i32 25, i32 578 }, %struct.reg_default { i32 26, i32 8 }, %struct.reg_default { i32 27, i32 34 }, %struct.reg_default { i32 30, i32 192 }, %struct.reg_default { i32 31, i32 192 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 36, i32 192 }, %struct.reg_default { i32 37, i32 192 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 115 }, %struct.reg_default { i32 40, i32 2495 }, %struct.reg_default { i32 41, i32 12865 }, %struct.reg_default { i32 42, i32 32 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 133 }, %struct.reg_default { i32 45, i32 133 }, %struct.reg_default { i32 46, i32 68 }, %struct.reg_default { i32 47, i32 68 }, %struct.reg_default { i32 50, i32 8 }, %struct.reg_default { i32 51, i32 4 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 57, i32 45 }, %struct.reg_default { i32 58, i32 45 }, %struct.reg_default { i32 59, i32 57 }, %struct.reg_default { i32 60, i32 57 }, %struct.reg_default { i32 62, i32 313 }, %struct.reg_default { i32 63, i32 313 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 67, i32 16 }, %struct.reg_default { i32 69, i32 164 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 116, i32 168 }, %struct.reg_default { i32 117, i32 168 }, %struct.reg_default { i32 118, i32 168 }, %struct.reg_default { i32 119, i32 544 }, %struct.reg_default { i32 120, i32 416 }, %struct.reg_default { i32 122, i32 65535 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 149, i32 26640 }, %struct.reg_default { i32 164, i32 40 }, %struct.reg_default { i32 172, i32 0 }], [128 x i8] zeroinitializer }, align 32
@wm8903_set_pdata_irq_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1918, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid IRQ: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wm8903_set_pdata_irq_trigger\00", [35 x i8] zeroinitializer }, align 32
@wm8903_set_pdata_irq_trigger._entry_ptr = internal global ptr @wm8903_set_pdata_irq_trigger._entry, section ".printk_index", align 4
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"micdet-cfg\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"micdet-delay\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-cfg\00", [23 x i8] zeroinitializer }, align 32
@wm8903_set_pdata_from_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1975, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid gpio-cfg[%d] %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wm8903_set_pdata_from_of\00", [39 x i8] zeroinitializer }, align 32
@wm8903_set_pdata_from_of._entry_ptr = internal global ptr @wm8903_set_pdata_from_of._entry, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@wm8903_template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_gpio_request, ptr null, ptr null, ptr @wm8903_gpio_direction_in, ptr @wm8903_gpio_direction_out, ptr @wm8903_gpio_get, ptr null, ptr @wm8903_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@wm8903_init_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8903_init_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8903_init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1865, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add GPIOs: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8903_init_gpio\00", [47 x i8] zeroinitializer }, align 32
@wm8903_init_gpio._entry_ptr = internal global ptr @wm8903_init_gpio._entry, section ".printk_index", align 4
@wm8903_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1650, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read IRQ mask: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8903_irq\00", [21 x i8] zeroinitializer }, align 32
@wm8903_irq._entry_ptr = internal global ptr @wm8903_irq._entry, section ".printk_index", align 4
@wm8903_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1656, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read IRQ status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8903_irq._entry_ptr.50 = internal global ptr @wm8903_irq._entry.48, section ".printk_index", align 4
@wm8903_irq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 1663, ptr @.str.53, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Write sequencer done\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8903_irq._entry_ptr.54 = internal global ptr @wm8903_irq._entry.51, section ".printk_index", align 4
@wm8903_irq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.47, ptr @.str.2, i32 1678, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read interrupt polarity: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@wm8903_irq._entry_ptr.57 = internal global ptr @wm8903_irq._entry.55, section ".printk_index", align 4
@wm8903_irq.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.58, i8 1, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microphone short (pol=%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8903_irq.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.59, i8 1, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Microphone detect (pol=%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_snd_soc_jack_irq = external dso_local global %struct.tracepoint, align 4
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/asoc.h\00", [36 x i8] zeroinitializer }, align 32
@trace_snd_soc_jack_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@wm8903_snd_controls = internal constant { [49 x %struct.snd_kcontrol_new], [592 x i8] } { [49 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adc_osr to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @drc_slope_r0 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @drc_slope_r1 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @drc_tlv_thresh }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @drc_tlv_amp }, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @drc_tlv_min }, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @drc_tlv_max }, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @drc_attack to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @drc_decay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @drc_ff_delay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @drc_tlv_max }, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @drc_qr_decay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @drc_smoothing to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @drc_tlv_startup }, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adc_companding to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_osr to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @soft_mute to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @mute_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_companding to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @dac_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8903_get_deemph, ptr @wm8903_put_deemph, %union.anon.94 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }], [592 x i8] zeroinitializer }, align 32
@wm8903_intercon = internal constant { [117 x %struct.snd_soc_dapm_route], [1532 x i8] } { [117 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.191, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.193, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.195, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.191, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.193, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.195, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.192, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.194, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.196, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.192, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.194, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.196, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.271, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.272, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.272, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.273, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.273, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.271, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.272, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.272, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.273, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.273, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.276, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.277, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.276, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.277, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.278, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.279, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.278, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.279, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr @.str.278, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr @.str.279, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr @.str.278, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr @.str.279, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.278, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.279, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.278, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.279, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr @.str.287, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr @.str.289, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr @.str.283, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr @.str.285, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr @.str.287, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr @.str.289, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr @.str.283, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr @.str.285, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.287, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.289, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.283, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.285, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.287, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.289, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.283, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.285, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr null, ptr @.str.237, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr null, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr null, ptr @.str.242, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr null, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.257, ptr null, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr null, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr null, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr null, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.243, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr null, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr null, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr null, ptr @.str.265, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.265, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1532 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left Input PGA Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left Input PGA Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Left Input PGA Common Mode Switch\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right Input PGA Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right Input PGA Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Right Input PGA Common Mode Switch\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC OSR\00", [24 x i8] zeroinitializer }, align 32
@adc_osr = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 0, i8 0, i32 2, i32 1, ptr @osr_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPF Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPF Mode\00", [23 x i8] zeroinitializer }, align 32
@hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 5, i8 5, i32 4, i32 3, ptr @hpf_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 15, i32 15, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRC Compressor Slope R0\00", [40 x i8] zeroinitializer }, align 32
@drc_slope_r0 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 3, i8 3, i32 6, i32 7, ptr @drc_slope_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRC Compressor Slope R1\00", [40 x i8] zeroinitializer }, align 32
@drc_slope_r1 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 0, i8 0, i32 6, i32 7, ptr @drc_slope_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DRC Compressor Threshold Volume\00", [32 x i8] zeroinitializer }, align 32
@drc_tlv_thresh = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 124, i32 124, i32 43, i32 43, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Volume\00", [21 x i8] zeroinitializer }, align 32
@drc_tlv_amp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2250, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 30, i32 30, i32 43, i32 43, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRC Minimum Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@drc_tlv_min = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 41, i32 41, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRC Maximum Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@drc_tlv_max = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 1200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRC Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@drc_attack = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 12, i8 12, i32 11, i32 15, ptr @drc_attack_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DRC Decay Rate\00", [17 x i8] zeroinitializer }, align 32
@drc_decay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 8, i8 8, i32 9, i32 15, ptr @drc_decay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DRC FF Delay\00", [19 x i8] zeroinitializer }, align 32
@drc_ff_delay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 5, i8 5, i32 2, i32 1, ptr @drc_ff_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DRC Anticlip Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DRC QR Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRC QR Threshold Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRC QR Decay Rate\00", [46 x i8] zeroinitializer }, align 32
@drc_qr_decay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 4, i8 4, i32 3, i32 3, ptr @drc_qr_decay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRC Smoothing Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DRC Smoothing Hysteresis Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRC Smoothing Threshold\00", [40 x i8] zeroinitializer }, align 32
@drc_smoothing = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 11, i8 11, i32 3, i32 3, ptr @drc_smoothing_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Startup Volume\00", [45 x i8] zeroinitializer }, align 32
@drc_tlv_startup = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -300, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 120, i32 120, i32 36, i32 37, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC Companding Mode\00", [44 x i8] zeroinitializer }, align 32
@adc_companding = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 2, i8 2, i32 2, i32 1, ptr @companding_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Companding Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Sidetone Volume\00", [40 x i8] zeroinitializer }, align 32
@digital_sidetone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 32, i32 32, i32 4, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC OSR\00", [24 x i8] zeroinitializer }, align 32
@dac_osr = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 0, i8 0, i32 2, i32 1, ptr @osr_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 120, i32 120, i32 30, i32 31, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Soft Mute Rate\00", [45 x i8] zeroinitializer }, align 32
@soft_mute = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 10, i8 10, i32 2, i32 1, ptr @soft_mute_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC Mute Mode\00", [18 x i8] zeroinitializer }, align 32
@mute_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 9, i8 9, i32 2, i32 1, ptr @mute_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Mono Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Companding Mode\00", [44 x i8] zeroinitializer }, align 32
@dac_companding = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 0, i8 0, i32 2, i32 1, ptr @companding_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Companding Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@dac_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 24, i32 24, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Playback Deemphasis Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 57, i32 58, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Line Out Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line Out ZC Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Line Out Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 59, i32 60, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 63, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 63, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 62, i32 63, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@osr_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.145, ptr @.str.146], [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Low power\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"High performance\00", [47 x i8] zeroinitializer }, align 32
@hpf_mode_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150], [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Hi-fi\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 1\00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 2\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 3\00", [24 x i8] zeroinitializer }, align 32
@drc_slope_text = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/2\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/8\00", [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/16\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@drc_attack_text = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167], [52 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"instantaneous\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"363us\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"762us\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.45ms\00", [25 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.9ms\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.8ms\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"11.6ms\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"23.2ms\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"46.4ms\00", [25 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"92.8ms\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"185.6ms\00", [24 x i8] zeroinitializer }, align 32
@drc_decay_text = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], [60 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"186ms\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"372ms\00", [26 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"743ms\00", [26 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.49s\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.97s\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.94s\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"11.89s\00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"23.87s\00", [25 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"47.56s\00", [25 x i8] zeroinitializer }, align 32
@drc_ff_delay_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.177, ptr @.str.178], [24 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"5 samples\00", [22 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"9 samples\00", [22 x i8] zeroinitializer }, align 32
@drc_qr_decay_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.179, ptr @.str.160, ptr @.str.162], [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.725ms\00", [24 x i8] zeroinitializer }, align 32
@drc_smoothing_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.180, ptr @.str.181, ptr @.str.182], [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Low\00", [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Medium\00", [25 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"High\00", [27 x i8] zeroinitializer }, align 32
@companding_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.183, ptr @.str.184], [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulaw\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alaw\00", [27 x i8] zeroinitializer }, align 32
@soft_mute_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.185, ptr @.str.186], [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Fast (fs/2)\00", [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Slow (fs/32)\00", [19 x i8] zeroinitializer }, align 32
@mute_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.187, ptr @.str.188], [24 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hard\00", [27 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Soft\00", [27 x i8] zeroinitializer }, align 32
@wm8903_deemph = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 32000, i32 44100, i32 48000], [16 x i8] zeroinitializer }, align 32
@wm8903_set_deemph.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.189, ptr @.str.2, ptr @.str.190, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8903_set_deemph\00", [46 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set deemphasis %d (%dHz)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1L\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1R\00", [27 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2L\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2R\00", [27 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3L\00", [27 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3R\00", [27 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMICDAT\00", [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTL\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTR\00", [25 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINEOUTL\00", [23 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINEOUTR\00", [23 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOP\00", [28 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LON\00", [28 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ROP\00", [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RON\00", [28 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left Input Mux\00", [17 x i8] zeroinitializer }, align 32
@linput_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @linput_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Left Input Inverting Mux\00", [39 x i8] zeroinitializer }, align 32
@linput_inv_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @linput_inv_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Input Mode Mux\00", [44 x i8] zeroinitializer }, align 32
@linput_mode_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @linput_mode_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right Input Mux\00", [16 x i8] zeroinitializer }, align 32
@rinput_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rinput_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Right Input Inverting Mux\00", [38 x i8] zeroinitializer }, align 32
@rinput_inv_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.274, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rinput_inv_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Input Mode Mux\00", [43 x i8] zeroinitializer }, align 32
@rinput_mode_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rinput_mode_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left Input PGA\00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right Input PGA\00", [16 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left ADC Input\00", [17 x i8] zeroinitializer }, align 32
@adcinput_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adcinput_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right ADC Input\00", [16 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Capture Mux\00", [47 x i8] zeroinitializer }, align 32
@lcapture_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lcapture_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Capture Mux\00", [46 x i8] zeroinitializer }, align 32
@rcapture_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rcapture_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFTXL\00", [25 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left HiFi Capture\00", [46 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFTXR\00", [25 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right HiFi Capture\00", [45 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DACL Sidetone\00", [18 x i8] zeroinitializer }, align 32
@lsidetone_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lsidetone_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DACR Sidetone\00", [18 x i8] zeroinitializer }, align 32
@rsidetone_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.282, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rsidetone_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFRXL\00", [25 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFRXR\00", [25 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Playback Mux\00", [46 x i8] zeroinitializer }, align 32
@lplay_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lplay_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Playback Mux\00", [45 x i8] zeroinitializer }, align 32
@rplay_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rplay_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Output Mixer\00", [46 x i8] zeroinitializer }, align 32
@left_output_mixer = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Output Mixer\00", [45 x i8] zeroinitializer }, align 32
@right_output_mixer = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Speaker Mixer\00", [45 x i8] zeroinitializer }, align 32
@left_speaker_mixer = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.300 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Speaker Mixer\00", [44 x i8] zeroinitializer }, align 32
@right_speaker_mixer = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.303 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.304 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.305 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.306 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Left Headphone Output PGA\00", [38 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Right Headphone Output PGA\00", [37 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Line Output PGA\00", [43 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Line Output PGA\00", [42 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HPL_RMV_SHORT\00", [18 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HPL_ENA_OUTP\00", [19 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPL_ENA_DLY\00", [20 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPL_ENA\00", [24 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HPR_RMV_SHORT\00", [18 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HPR_ENA_OUTP\00", [19 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPR_ENA_DLY\00", [20 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPR_ENA\00", [24 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LINEOUTL_RMV_SHORT\00", [45 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LINEOUTL_ENA_OUTP\00", [46 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LINEOUTL_ENA_DLY\00", [47 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEOUTL_ENA\00", [19 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LINEOUTR_RMV_SHORT\00", [45 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LINEOUTR_ENA_OUTP\00", [46 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LINEOUTR_ENA_DLY\00", [47 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEOUTR_ENA\00", [19 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DCS Master\00", [21 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPL_DCS\00", [24 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPR_DCS\00", [24 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEOUTL_DCS\00", [19 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEOUTR_DCS\00", [19 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Speaker PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Speaker PGA\00", [46 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_DSP\00", [24 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_SYS\00", [24 x i8] zeroinitializer }, align 32
@wm8903_dapm_widgets = internal constant { [74 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [3352 x i8] } { [74 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linput_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linput_mode_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rinput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rinput_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rinput_mode_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcinput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcinput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lcapture_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rcapture_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.221, ptr @.str.222, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.223, ptr @.str.224, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lsidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rsidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.227, ptr @.str.228, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.229, ptr @.str.230, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lplay_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rplay_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.234, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.235, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @left_output_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.236, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @right_output_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @left_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @right_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.239, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.240, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.242, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.244, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.245, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.246, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.247, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.258, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.259, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.260, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.261, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.262, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.263, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.264, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.265, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.266, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @wm8903_cp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.267, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.268, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [3352 x i8] zeroinitializer }, align 32
@linput_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 2, i8 2, i32 3, i32 3, ptr @linput_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@linput_mux_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.191, ptr @.str.193, ptr @.str.195], [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Left Inverting Input Mux\00", [39 x i8] zeroinitializer }, align 32
@linput_inv_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 4, i8 4, i32 3, i32 3, ptr @linput_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@linput_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@input_mode_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.271, ptr @.str.272, ptr @.str.273], [20 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Single-Ended\00", [19 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Differential Line\00", [46 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Differential Mic\00", [47 x i8] zeroinitializer }, align 32
@rinput_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 2, i8 2, i32 3, i32 3, ptr @rinput_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rinput_mux_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.192, ptr @.str.194, ptr @.str.196], [20 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Right Inverting Input Mux\00", [38 x i8] zeroinitializer }, align 32
@rinput_inv_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 4, i8 4, i32 3, i32 3, ptr @rinput_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rinput_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Input\00", [22 x i8] zeroinitializer }, align 32
@adcinput_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 164, i8 9, i8 9, i32 2, i32 1, ptr @adcinput_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adcinput_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.276, ptr @.str.277], [24 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@lcapture_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 7, i8 7, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aif_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.278, ptr @.str.279], [24 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@rcapture_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 6, i8 6, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DACL Sidetone Mux\00", [46 x i8] zeroinitializer }, align 32
@lsidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 2, i8 2, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sidetone_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.281, ptr @.str.278, ptr @.str.279], [20 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DACR Sidetone Mux\00", [46 x i8] zeroinitializer }, align 32
@rsidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 0, i8 0, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lplay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 5, i8 5, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rplay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 4, i8 4, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACL Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACR Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Bypass Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Bypass Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8903_class_w_put.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.291, ptr @.str.2, ptr @.str.292, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.291 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8903_class_w_put\00", [45 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Disabling Class W\0A\00", [45 x i8] zeroinitializer }, align 32
@wm8903_class_w_put.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.291, ptr @.str.2, ptr @.str.293, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.293 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enabling Class W\0A\00", [46 x i8] zeroinitializer }, align 32
@wm8903_class_w_put.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.291, ptr @.str.2, ptr @.str.294, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.294 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bypass use count now %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.304 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.305 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.306 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wm8903_seq_notifier.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.307, ptr @.str.2, ptr @.str.308, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.307 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm8903_seq_notifier\00", [44 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Starting DC servo for %x\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8903_seq_notifier.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.307, ptr @.str.2, ptr @.str.309, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.309 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Restore DC servo %d value %x\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8903_seq_notifier.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.307, ptr @.str.2, ptr @.str.310, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.310 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Calibrate DC servo %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8903_seq_notifier.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.307, ptr @.str.2, ptr @.str.311, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.311 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DC servo %d: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@wm8903_seq_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.307, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014DCS mode %d delay not set\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8903_seq_notifier._entry_ptr = internal global ptr @wm8903_seq_notifier._entry, section ".printk_index", align 4
@wm8903_set_bias_level.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.313, ptr @.str.2, ptr @.str.293, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.313 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8903_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8903-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8903_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8903_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @wm8903_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_mute, ptr null, ptr null, ptr @wm8903_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@sample_rates = internal constant { [12 x %struct.anon.109], [32 x i8] } { [12 x %struct.anon.109] [%struct.anon.109 { i32 8000, i32 0 }, %struct.anon.109 { i32 11025, i32 1 }, %struct.anon.109 { i32 12000, i32 2 }, %struct.anon.109 { i32 16000, i32 3 }, %struct.anon.109 { i32 22050, i32 4 }, %struct.anon.109 { i32 24000, i32 5 }, %struct.anon.109 { i32 32000, i32 6 }, %struct.anon.109 { i32 44100, i32 7 }, %struct.anon.109 { i32 48000, i32 8 }, %struct.anon.109 { i32 88200, i32 9 }, %struct.anon.109 { i32 96000, i32 10 }, %struct.anon.109 zeroinitializer], [32 x i8] zeroinitializer }, align 32
@wm8903_hw_params.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.317, ptr @.str.2, ptr @.str.318, i8 1, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.317 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8903_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSP fs = %dHz\0A\00", [17 x i8] zeroinitializer }, align 32
@wm8903_hw_params.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.317, ptr @.str.2, ptr @.str.319, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.319 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MCLK = %dHz, target sample rate = %dHz\0A\00", [56 x i8] zeroinitializer }, align 32
@clk_sys_ratios = internal constant { [54 x %struct.anon.110], [192 x i8] } { [54 x %struct.anon.110] [%struct.anon.110 { i32 64, i32 0, i32 0, i32 1 }, %struct.anon.110 { i32 68, i32 0, i32 1, i32 1 }, %struct.anon.110 { i32 125, i32 0, i32 2, i32 1 }, %struct.anon.110 { i32 128, i32 1, i32 0, i32 1 }, %struct.anon.110 { i32 136, i32 1, i32 1, i32 1 }, %struct.anon.110 { i32 192, i32 2, i32 0, i32 1 }, %struct.anon.110 { i32 204, i32 2, i32 1, i32 1 }, %struct.anon.110 { i32 64, i32 0, i32 0, i32 2 }, %struct.anon.110 { i32 68, i32 0, i32 1, i32 2 }, %struct.anon.110 { i32 125, i32 0, i32 2, i32 2 }, %struct.anon.110 { i32 128, i32 1, i32 0, i32 2 }, %struct.anon.110 { i32 136, i32 1, i32 1, i32 2 }, %struct.anon.110 { i32 192, i32 2, i32 0, i32 2 }, %struct.anon.110 { i32 204, i32 2, i32 1, i32 2 }, %struct.anon.110 { i32 250, i32 2, i32 2, i32 1 }, %struct.anon.110 { i32 256, i32 3, i32 0, i32 1 }, %struct.anon.110 { i32 272, i32 3, i32 1, i32 1 }, %struct.anon.110 { i32 384, i32 4, i32 0, i32 1 }, %struct.anon.110 { i32 408, i32 4, i32 1, i32 1 }, %struct.anon.110 { i32 375, i32 4, i32 2, i32 1 }, %struct.anon.110 { i32 512, i32 5, i32 0, i32 1 }, %struct.anon.110 { i32 544, i32 5, i32 1, i32 1 }, %struct.anon.110 { i32 500, i32 5, i32 2, i32 1 }, %struct.anon.110 { i32 768, i32 6, i32 0, i32 1 }, %struct.anon.110 { i32 816, i32 6, i32 1, i32 1 }, %struct.anon.110 { i32 750, i32 6, i32 2, i32 1 }, %struct.anon.110 { i32 1024, i32 7, i32 0, i32 1 }, %struct.anon.110 { i32 1088, i32 7, i32 1, i32 1 }, %struct.anon.110 { i32 1000, i32 7, i32 2, i32 1 }, %struct.anon.110 { i32 1408, i32 8, i32 0, i32 1 }, %struct.anon.110 { i32 1496, i32 8, i32 1, i32 1 }, %struct.anon.110 { i32 1536, i32 9, i32 0, i32 1 }, %struct.anon.110 { i32 1632, i32 9, i32 1, i32 1 }, %struct.anon.110 { i32 1500, i32 9, i32 2, i32 1 }, %struct.anon.110 { i32 250, i32 2, i32 2, i32 2 }, %struct.anon.110 { i32 256, i32 3, i32 0, i32 2 }, %struct.anon.110 { i32 272, i32 3, i32 1, i32 2 }, %struct.anon.110 { i32 384, i32 4, i32 0, i32 2 }, %struct.anon.110 { i32 408, i32 4, i32 1, i32 2 }, %struct.anon.110 { i32 375, i32 4, i32 2, i32 2 }, %struct.anon.110 { i32 512, i32 5, i32 0, i32 2 }, %struct.anon.110 { i32 544, i32 5, i32 1, i32 2 }, %struct.anon.110 { i32 500, i32 5, i32 2, i32 2 }, %struct.anon.110 { i32 768, i32 6, i32 0, i32 2 }, %struct.anon.110 { i32 816, i32 6, i32 1, i32 2 }, %struct.anon.110 { i32 750, i32 6, i32 2, i32 2 }, %struct.anon.110 { i32 1024, i32 7, i32 0, i32 2 }, %struct.anon.110 { i32 1088, i32 7, i32 1, i32 2 }, %struct.anon.110 { i32 1000, i32 7, i32 2, i32 2 }, %struct.anon.110 { i32 1408, i32 8, i32 0, i32 2 }, %struct.anon.110 { i32 1496, i32 8, i32 1, i32 2 }, %struct.anon.110 { i32 1536, i32 9, i32 0, i32 2 }, %struct.anon.110 { i32 1632, i32 9, i32 1, i32 2 }, %struct.anon.110 { i32 1500, i32 9, i32 2, i32 2 }], [192 x i8] zeroinitializer }, align 32
@wm8903_hw_params.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.317, ptr @.str.2, ptr @.str.320, i8 1, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.320 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CLK_SYS_RATE=%x, CLK_SYS_MODE=%x div=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@wm8903_hw_params.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.317, ptr @.str.2, ptr @.str.321, i8 1, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.321 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Actual CLK_SYS = %dHz\0A\00", [41 x i8] zeroinitializer }, align 32
@bclk_divs = internal constant { [17 x %struct.anon.111], [56 x i8] } { [17 x %struct.anon.111] [%struct.anon.111 { i32 10, i32 0 }, %struct.anon.111 { i32 20, i32 2 }, %struct.anon.111 { i32 30, i32 3 }, %struct.anon.111 { i32 40, i32 4 }, %struct.anon.111 { i32 50, i32 5 }, %struct.anon.111 { i32 60, i32 7 }, %struct.anon.111 { i32 80, i32 8 }, %struct.anon.111 { i32 100, i32 9 }, %struct.anon.111 { i32 120, i32 11 }, %struct.anon.111 { i32 160, i32 12 }, %struct.anon.111 { i32 200, i32 13 }, %struct.anon.111 { i32 220, i32 14 }, %struct.anon.111 { i32 240, i32 15 }, %struct.anon.111 { i32 300, i32 17 }, %struct.anon.111 { i32 320, i32 18 }, %struct.anon.111 { i32 440, i32 19 }, %struct.anon.111 { i32 480, i32 20 }], [56 x i8] zeroinitializer }, align 32
@wm8903_hw_params.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.317, ptr @.str.2, ptr @.str.322, i8 1, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.322 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BCLK ratio %d for %dHz - actual BCLK = %dHz\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.323 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.324 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.325 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.326 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.327 = internal global [79 x i64] [i64 77, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 8, i64 10, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27, i64 30, i64 31, i64 32, i64 33, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 57, i64 58, i64 59, i64 60, i64 62, i64 63, i64 65, i64 67, i64 69, i64 81, i64 82, i64 83, i64 84, i64 90, i64 94, i64 98, i64 104, i64 108, i64 109, i64 110, i64 111, i64 112, i64 114, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 126, i64 164, i64 172]
@__sancov_gen_cov_switch_values.328 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 81, i64 82, i64 83, i64 84, i64 112, i64 121]
@__sancov_gen_cov_switch_values.329 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.330 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.331 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.332 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.333 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.334 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.335 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.336 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1607, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [18 x i8] c"wm8903_i2c_driver\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2212, i32 26 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2214, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant [16 x i8] c"wm8903_of_match\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2200, i32 34 }
@___asan_gen_.358 = private unnamed_addr constant [14 x i8] c"wm8903_i2c_id\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2206, i32 35 }
@___asan_gen_.361 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1998, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [14 x i8] c"wm8903_regmap\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1899, i32 35 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2001, i32 19 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2004, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2041, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2048, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2054, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2058, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2065, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2068, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 2133, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8903\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1882, i32 46 }
@___asan_gen_.439 = private unnamed_addr constant [11 x i8] c"wm8903_dai\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1744, i32 34 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c"wm8903_reg_defaults\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 41, i32 33 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1917, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1948, i32 31 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1951, i32 31 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1954, i32 37 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1974, i32 5 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 118, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 119, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 120, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 121, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [21 x i8] c"wm8903_template_chip\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1838, i32 31 }
@___asan_gen_.487 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1863, i32 8 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1865, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1650, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1656, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1663, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1677, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1688, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1695, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant [31 x i8] c"../include/trace/events/asoc.h\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 211, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 108, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [20 x i8] c"wm8903_snd_controls\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 647, i32 38 }
@___asan_gen_.550 = private unnamed_addr constant [16 x i8] c"wm8903_intercon\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 936, i32 40 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 650, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 652, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 654, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 657, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 659, i32 1 }
@___asan_gen_.572 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 661, i32 1 }
@___asan_gen_.576 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 665, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant [8 x i8] c"adc_osr\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 505, i32 8 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 666, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 667, i32 1 }
@___asan_gen_.590 = private unnamed_addr constant [9 x i8] c"hpf_mode\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 498, i32 8 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 668, i32 1 }
@___asan_gen_.596 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 669, i32 1 }
@___asan_gen_.600 = private unnamed_addr constant [13 x i8] c"drc_slope_r0\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 515, i32 8 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 670, i32 1 }
@___asan_gen_.606 = private unnamed_addr constant [13 x i8] c"drc_slope_r1\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 518, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 671, i32 1 }
@___asan_gen_.612 = private unnamed_addr constant [15 x i8] c"drc_tlv_thresh\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 488, i32 14 }
@___asan_gen_.615 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 673, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant [12 x i8] c"drc_tlv_amp\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 489, i32 14 }
@___asan_gen_.622 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 674, i32 1 }
@___asan_gen_.626 = private unnamed_addr constant [12 x i8] c"drc_tlv_min\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 490, i32 14 }
@___asan_gen_.629 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 675, i32 1 }
@___asan_gen_.633 = private unnamed_addr constant [12 x i8] c"drc_tlv_max\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 491, i32 14 }
@___asan_gen_.636 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 676, i32 1 }
@___asan_gen_.640 = private unnamed_addr constant [11 x i8] c"drc_attack\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 527, i32 8 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 677, i32 1 }
@___asan_gen_.646 = private unnamed_addr constant [10 x i8] c"drc_decay\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 535, i32 8 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 678, i32 1 }
@___asan_gen_.652 = private unnamed_addr constant [13 x i8] c"drc_ff_delay\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 542, i32 8 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 679, i32 1 }
@___asan_gen_.658 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 680, i32 1 }
@___asan_gen_.662 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 681, i32 1 }
@___asan_gen_.666 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 682, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant [13 x i8] c"drc_qr_decay\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 549, i32 8 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 683, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 684, i32 1 }
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 685, i32 1 }
@___asan_gen_.684 = private unnamed_addr constant [14 x i8] c"drc_smoothing\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 556, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 686, i32 1 }
@___asan_gen_.690 = private unnamed_addr constant [16 x i8] c"drc_tlv_startup\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 492, i32 14 }
@___asan_gen_.693 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 688, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 481, i32 14 }
@___asan_gen_.700 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 690, i32 1 }
@___asan_gen_.704 = private unnamed_addr constant [15 x i8] c"adc_companding\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 580, i32 8 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 691, i32 1 }
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 693, i32 1 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"digital_sidetone_tlv\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 485, i32 14 }
@___asan_gen_.717 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 697, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant [8 x i8] c"dac_osr\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 508, i32 8 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 698, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 700, i32 1 }
@___asan_gen_.731 = private unnamed_addr constant [10 x i8] c"soft_mute\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 563, i32 8 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 701, i32 1 }
@___asan_gen_.737 = private unnamed_addr constant [10 x i8] c"mute_mode\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 570, i32 8 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 702, i32 1 }
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 703, i32 1 }
@___asan_gen_.747 = private unnamed_addr constant [15 x i8] c"dac_companding\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 577, i32 8 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 704, i32 1 }
@___asan_gen_.753 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 705, i32 1 }
@___asan_gen_.757 = private unnamed_addr constant [14 x i8] c"dac_boost_tlv\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 483, i32 14 }
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 707, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 711, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 714, i32 1 }
@___asan_gen_.771 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 717, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 486, i32 14 }
@___asan_gen_.778 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 722, i32 1 }
@___asan_gen_.782 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 725, i32 1 }
@___asan_gen_.786 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 728, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 733, i32 1 }
@___asan_gen_.794 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 735, i32 1 }
@___asan_gen_.798 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 737, i32 1 }
@___asan_gen_.802 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.803 = private unnamed_addr constant [9 x i8] c"osr_text\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 501, i32 20 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 502, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 502, i32 15 }
@___asan_gen_.812 = private unnamed_addr constant [14 x i8] c"hpf_mode_text\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 494, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 495, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 495, i32 11 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 495, i32 22 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 495, i32 33 }
@___asan_gen_.827 = private unnamed_addr constant [15 x i8] c"drc_slope_text\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 511, i32 20 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 512, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 512, i32 7 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 512, i32 14 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 512, i32 21 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 512, i32 28 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 512, i32 36 }
@___asan_gen_.848 = private unnamed_addr constant [16 x i8] c"drc_attack_text\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 521, i32 20 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 522, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 523, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 523, i32 11 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 523, i32 20 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 523, i32 30 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 523, i32 39 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 523, i32 48 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 523, i32 58 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 524, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 524, i32 12 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 524, i32 22 }
@___asan_gen_.884 = private unnamed_addr constant [15 x i8] c"drc_decay_text\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 530, i32 20 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 531, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 531, i32 11 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 531, i32 20 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 531, i32 29 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 531, i32 38 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 531, i32 47 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 531, i32 56 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 532, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 532, i32 12 }
@___asan_gen_.914 = private unnamed_addr constant [18 x i8] c"drc_ff_delay_text\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 538, i32 20 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 539, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 539, i32 15 }
@___asan_gen_.923 = private unnamed_addr constant [18 x i8] c"drc_qr_decay_text\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 545, i32 20 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 546, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant [19 x i8] c"drc_smoothing_text\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 552, i32 20 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 553, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 553, i32 9 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 553, i32 19 }
@___asan_gen_.941 = private unnamed_addr constant [16 x i8] c"companding_text\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 573, i32 20 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 574, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 574, i32 10 }
@___asan_gen_.950 = private unnamed_addr constant [15 x i8] c"soft_mute_text\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 559, i32 20 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 560, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 560, i32 17 }
@___asan_gen_.959 = private unnamed_addr constant [15 x i8] c"mute_mode_text\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 566, i32 20 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 567, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 567, i32 10 }
@___asan_gen_.968 = private unnamed_addr constant [14 x i8] c"wm8903_deemph\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 414, i32 12 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 438, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 813, i32 1 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 814, i32 1 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 815, i32 1 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 816, i32 1 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 817, i32 1 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 818, i32 1 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 819, i32 1 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 821, i32 1 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 822, i32 1 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 823, i32 1 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 824, i32 1 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 825, i32 1 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 826, i32 1 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 827, i32 1 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 828, i32 1 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 830, i32 1 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 832, i32 1 }
@___asan_gen_.1028 = private unnamed_addr constant [11 x i8] c"linput_mux\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 748, i32 38 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 833, i32 1 }
@___asan_gen_.1034 = private unnamed_addr constant [15 x i8] c"linput_inv_mux\00", align 1
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 751, i32 38 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 835, i32 1 }
@___asan_gen_.1040 = private unnamed_addr constant [16 x i8] c"linput_mode_mux\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 742, i32 38 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 837, i32 1 }
@___asan_gen_.1046 = private unnamed_addr constant [11 x i8] c"rinput_mux\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 754, i32 38 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 838, i32 1 }
@___asan_gen_.1052 = private unnamed_addr constant [15 x i8] c"rinput_inv_mux\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 757, i32 38 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 840, i32 1 }
@___asan_gen_.1058 = private unnamed_addr constant [16 x i8] c"rinput_mode_mux\00", align 1
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 745, i32 38 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 842, i32 1 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 843, i32 1 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 845, i32 1 }
@___asan_gen_.1070 = private unnamed_addr constant [13 x i8] c"adcinput_mux\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 766, i32 38 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 846, i32 1 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 848, i32 1 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 849, i32 1 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 851, i32 1 }
@___asan_gen_.1085 = private unnamed_addr constant [13 x i8] c"lcapture_mux\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 769, i32 38 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 852, i32 1 }
@___asan_gen_.1091 = private unnamed_addr constant [13 x i8] c"rcapture_mux\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 772, i32 38 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 854, i32 1 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 855, i32 1 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 857, i32 1 }
@___asan_gen_.1109 = private unnamed_addr constant [14 x i8] c"lsidetone_mux\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 760, i32 38 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 858, i32 1 }
@___asan_gen_.1115 = private unnamed_addr constant [14 x i8] c"rsidetone_mux\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 763, i32 38 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 860, i32 1 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 861, i32 1 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 863, i32 1 }
@___asan_gen_.1133 = private unnamed_addr constant [10 x i8] c"lplay_mux\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 775, i32 38 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 864, i32 1 }
@___asan_gen_.1139 = private unnamed_addr constant [10 x i8] c"rplay_mux\00", align 1
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 778, i32 38 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 866, i32 1 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 867, i32 1 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 869, i32 1 }
@___asan_gen_.1151 = private unnamed_addr constant [18 x i8] c"left_output_mixer\00", align 1
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 781, i32 38 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 871, i32 1 }
@___asan_gen_.1157 = private unnamed_addr constant [19 x i8] c"right_output_mixer\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 788, i32 38 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 874, i32 1 }
@___asan_gen_.1163 = private unnamed_addr constant [19 x i8] c"left_speaker_mixer\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 795, i32 38 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 876, i32 1 }
@___asan_gen_.1169 = private unnamed_addr constant [20 x i8] c"right_speaker_mixer\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 803, i32 38 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 879, i32 1 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 881, i32 1 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 884, i32 1 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 886, i32 1 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 889, i32 1 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 890, i32 1 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 891, i32 1 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 892, i32 1 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 893, i32 1 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 894, i32 1 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 895, i32 1 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 896, i32 1 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 898, i32 1 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 900, i32 1 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 902, i32 1 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 904, i32 1 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 906, i32 1 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 908, i32 1 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 910, i32 1 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 912, i32 1 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 915, i32 1 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 916, i32 1 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 918, i32 1 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 920, i32 1 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 922, i32 1 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 925, i32 1 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 927, i32 1 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 930, i32 1 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 932, i32 1 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 933, i32 1 }
@___asan_gen_.1262 = private unnamed_addr constant [20 x i8] c"wm8903_dapm_widgets\00", align 1
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 812, i32 41 }
@___asan_gen_.1265 = private unnamed_addr constant [12 x i8] c"linput_enum\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 597, i32 8 }
@___asan_gen_.1268 = private unnamed_addr constant [16 x i8] c"linput_mux_text\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 593, i32 20 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 752, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant [16 x i8] c"linput_inv_enum\00", align 1
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 600, i32 8 }
@___asan_gen_.1277 = private unnamed_addr constant [17 x i8] c"linput_mode_enum\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 587, i32 8 }
@___asan_gen_.1280 = private unnamed_addr constant [16 x i8] c"input_mode_text\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 583, i32 20 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 584, i32 2 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 584, i32 18 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 584, i32 39 }
@___asan_gen_.1292 = private unnamed_addr constant [12 x i8] c"rinput_enum\00", align 1
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 607, i32 8 }
@___asan_gen_.1295 = private unnamed_addr constant [16 x i8] c"rinput_mux_text\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 603, i32 20 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 758, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant [16 x i8] c"rinput_inv_enum\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 610, i32 8 }
@___asan_gen_.1304 = private unnamed_addr constant [17 x i8] c"rinput_mode_enum\00", align 1
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 590, i32 8 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 767, i32 2 }
@___asan_gen_.1310 = private unnamed_addr constant [14 x i8] c"adcinput_enum\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 628, i32 8 }
@___asan_gen_.1313 = private unnamed_addr constant [14 x i8] c"adcinput_text\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 624, i32 20 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 625, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 625, i32 9 }
@___asan_gen_.1322 = private unnamed_addr constant [14 x i8] c"lcapture_enum\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 635, i32 8 }
@___asan_gen_.1325 = private unnamed_addr constant [9 x i8] c"aif_text\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 631, i32 20 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 632, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 632, i32 10 }
@___asan_gen_.1334 = private unnamed_addr constant [14 x i8] c"rcapture_enum\00", align 1
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 638, i32 8 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 761, i32 2 }
@___asan_gen_.1340 = private unnamed_addr constant [15 x i8] c"lsidetone_enum\00", align 1
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 618, i32 8 }
@___asan_gen_.1343 = private unnamed_addr constant [14 x i8] c"sidetone_text\00", align 1
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 614, i32 20 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 615, i32 2 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 764, i32 2 }
@___asan_gen_.1352 = private unnamed_addr constant [15 x i8] c"rsidetone_enum\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 621, i32 8 }
@___asan_gen_.1355 = private unnamed_addr constant [11 x i8] c"lplay_enum\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 641, i32 8 }
@___asan_gen_.1358 = private unnamed_addr constant [11 x i8] c"rplay_enum\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 644, i32 8 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 782, i32 1 }
@___asan_gen_.1364 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 783, i32 1 }
@___asan_gen_.1368 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 784, i32 1 }
@___asan_gen_.1372 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 785, i32 1 }
@___asan_gen_.1376 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 383, i32 4 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 396, i32 4 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 403, i32 2 }
@___asan_gen_.1389 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1391 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1392 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1396 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.304\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant [21 x i8] c".compoundliteral.305\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant [21 x i8] c".compoundliteral.306\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 298, i32 3 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 307, i32 5 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 314, i32 5 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 347, i32 5 }
@___asan_gen_.1416 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 354, i32 4 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1172, i32 4 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1745, i32 10 }
@___asan_gen_.1428 = private unnamed_addr constant [15 x i8] c"wm8903_dai_ops\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1736, i32 37 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1754, i32 19 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1747, i32 18 }
@___asan_gen_.1437 = private unnamed_addr constant [13 x i8] c"sample_rates\00", align 1
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1423, i32 3 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1478, i32 2 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1504, i32 2 }
@___asan_gen_.1449 = private unnamed_addr constant [15 x i8] c"clk_sys_ratios\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1335, i32 3 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1539, i32 2 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1544, i32 2 }
@___asan_gen_.1458 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1399, i32 3 }
@___asan_gen_.1461 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1462 = private constant [29 x i8] c"../sound/soc/codecs/wm8903.c\00", align 1
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1462, i32 1564, i32 2 }
@llvm.compiler.used = appending global [433 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_wm8903_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8903__338_2222_wm8903_i2c_driver_init6, ptr @__ksymtab_wm8903_mic_detect, ptr @wm8903_i2c_driver_exit, ptr @wm8903_i2c_probe._entry, ptr @wm8903_i2c_probe._entry.11, ptr @wm8903_i2c_probe._entry.14, ptr @wm8903_i2c_probe._entry.17, ptr @wm8903_i2c_probe._entry.20, ptr @wm8903_i2c_probe._entry.23, ptr @wm8903_i2c_probe._entry.26, ptr @wm8903_i2c_probe._entry.30, ptr @wm8903_i2c_probe._entry_ptr, ptr @wm8903_i2c_probe._entry_ptr.13, ptr @wm8903_i2c_probe._entry_ptr.16, ptr @wm8903_i2c_probe._entry_ptr.19, ptr @wm8903_i2c_probe._entry_ptr.22, ptr @wm8903_i2c_probe._entry_ptr.25, ptr @wm8903_i2c_probe._entry_ptr.29, ptr @wm8903_i2c_probe._entry_ptr.32, ptr @wm8903_init_gpio._entry, ptr @wm8903_init_gpio._entry_ptr, ptr @wm8903_irq._entry, ptr @wm8903_irq._entry.48, ptr @wm8903_irq._entry.51, ptr @wm8903_irq._entry.55, ptr @wm8903_irq._entry_ptr, ptr @wm8903_irq._entry_ptr.50, ptr @wm8903_irq._entry_ptr.54, ptr @wm8903_irq._entry_ptr.57, ptr @wm8903_seq_notifier._entry, ptr @wm8903_seq_notifier._entry_ptr, ptr @wm8903_set_pdata_from_of._entry, ptr @wm8903_set_pdata_from_of._entry_ptr, ptr @wm8903_set_pdata_irq_trigger._entry, ptr @wm8903_set_pdata_irq_trigger._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wm8903_i2c_driver, ptr @.str.4, ptr @wm8903_of_match, ptr @wm8903_i2c_id, ptr @wm8903_i2c_probe.__key, ptr @.str.5, ptr @wm8903_i2c_probe._key, ptr @wm8903_regmap, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @soc_component_dev_wm8903, ptr @wm8903_dai, ptr @wm8903_reg_defaults, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @wm8903_template_chip, ptr @wm8903_init_gpio.lock_key, ptr @wm8903_init_gpio.request_key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @wm8903_snd_controls, ptr @wm8903_intercon, ptr @.str.63, ptr @.compoundliteral, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @adc_osr, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @hpf_mode, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @drc_slope_r0, ptr @.str.81, ptr @drc_slope_r1, ptr @.str.82, ptr @drc_tlv_thresh, ptr @.compoundliteral.83, ptr @.str.84, ptr @drc_tlv_amp, ptr @.compoundliteral.85, ptr @.str.86, ptr @drc_tlv_min, ptr @.compoundliteral.87, ptr @.str.88, ptr @drc_tlv_max, ptr @.compoundliteral.89, ptr @.str.90, ptr @drc_attack, ptr @.str.91, ptr @drc_decay, ptr @.str.92, ptr @drc_ff_delay, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @drc_qr_decay, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @drc_smoothing, ptr @.str.105, ptr @drc_tlv_startup, ptr @.compoundliteral.106, ptr @.str.107, ptr @digital_tlv, ptr @.compoundliteral.108, ptr @.str.109, ptr @adc_companding, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @digital_sidetone_tlv, ptr @.compoundliteral.113, ptr @.str.114, ptr @dac_osr, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @soft_mute, ptr @.str.118, ptr @mute_mode, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @dac_companding, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @dac_boost_tlv, ptr @.compoundliteral.125, ptr @.str.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @out_tlv, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @osr_text, ptr @.str.145, ptr @.str.146, ptr @hpf_mode_text, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @drc_slope_text, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @drc_attack_text, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @drc_decay_text, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @drc_ff_delay_text, ptr @.str.177, ptr @.str.178, ptr @drc_qr_decay_text, ptr @.str.179, ptr @drc_smoothing_text, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @companding_text, ptr @.str.183, ptr @.str.184, ptr @soft_mute_text, ptr @.str.185, ptr @.str.186, ptr @mute_mode_text, ptr @.str.187, ptr @.str.188, ptr @wm8903_deemph, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @linput_mux, ptr @.str.208, ptr @linput_inv_mux, ptr @.str.209, ptr @linput_mode_mux, ptr @.str.210, ptr @rinput_mux, ptr @.str.211, ptr @rinput_inv_mux, ptr @.str.212, ptr @rinput_mode_mux, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @adcinput_mux, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @lcapture_mux, ptr @.str.220, ptr @rcapture_mux, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @lsidetone_mux, ptr @.str.226, ptr @rsidetone_mux, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @lplay_mux, ptr @.str.232, ptr @rplay_mux, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @left_output_mixer, ptr @.str.236, ptr @right_output_mixer, ptr @.str.237, ptr @left_speaker_mixer, ptr @.str.238, ptr @right_speaker_mixer, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @wm8903_dapm_widgets, ptr @linput_enum, ptr @linput_mux_text, ptr @.str.270, ptr @linput_inv_enum, ptr @linput_mode_enum, ptr @input_mode_text, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @rinput_enum, ptr @rinput_mux_text, ptr @.str.274, ptr @rinput_inv_enum, ptr @rinput_mode_enum, ptr @.str.275, ptr @adcinput_enum, ptr @adcinput_text, ptr @.str.276, ptr @.str.277, ptr @lcapture_enum, ptr @aif_text, ptr @.str.278, ptr @.str.279, ptr @rcapture_enum, ptr @.str.280, ptr @lsidetone_enum, ptr @sidetone_text, ptr @.str.281, ptr @.str.282, ptr @rsidetone_enum, ptr @lplay_enum, ptr @rplay_enum, ptr @.str.283, ptr @.compoundliteral.284, ptr @.str.285, ptr @.compoundliteral.286, ptr @.str.287, ptr @.compoundliteral.288, ptr @.str.289, ptr @.compoundliteral.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.compoundliteral.295, ptr @.compoundliteral.296, ptr @.compoundliteral.297, ptr @.compoundliteral.298, ptr @.compoundliteral.299, ptr @.compoundliteral.300, ptr @.compoundliteral.301, ptr @.compoundliteral.302, ptr @.compoundliteral.303, ptr @.compoundliteral.304, ptr @.compoundliteral.305, ptr @.compoundliteral.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @wm8903_dai_ops, ptr @.str.315, ptr @.str.316, ptr @sample_rates, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @clk_sys_ratios, ptr @.str.320, ptr @.str.321, ptr @bclk_divs, ptr @.str.322], section "llvm.metadata"
@0 = internal global [409 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8903 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_reg_defaults to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_set_pdata_irq_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_set_pdata_from_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_init_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_init_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_irq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_irq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_snd_controls to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_intercon to i32), i32 6084, i32 7616, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_osr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_slope_r0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_slope_r1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_tlv_thresh to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_tlv_amp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_tlv_min to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_tlv_max to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_attack to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_decay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_ff_delay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_decay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_smoothing to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_tlv_startup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_companding to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_sidetone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_osr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_mute to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mute_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_companding to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_mode_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_slope_text to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_attack_text to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_decay_text to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_ff_delay_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_decay_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_smoothing_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @companding_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_mute_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mute_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_deemph to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linput_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linput_inv_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linput_mode_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rinput_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rinput_inv_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rinput_mode_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcinput_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcapture_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcapture_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsidetone_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsidetone_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lplay_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rplay_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_output_mixer to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_output_mixer to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_speaker_mixer to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_speaker_mixer to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_dapm_widgets to i32), i32 13320, i32 16672, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linput_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linput_mux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linput_inv_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linput_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_mode_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rinput_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rinput_mux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rinput_inv_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rinput_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcinput_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcinput_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcapture_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcapture_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lplay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rplay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.304 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.305 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.306 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_seq_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8903_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_rates to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sys_ratios to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8903_mic_detect(ptr noundef %component, ptr noundef %jack, i32 noundef %det, i32 noundef %shrt) #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_mic_detect.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_mic_detect, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !738

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_mic_detect.__UNIQUE_ID_ddebug335, ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %det, i32 noundef %shrt) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mic_jack = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %mic_jack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jack, ptr %mic_jack, align 4
  %mic_det = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %mic_det to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %det, ptr %mic_det, align 4
  %mic_short = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %mic_short to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shrt, ptr %mic_short, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %det)
  %tobool4.not = icmp eq i32 %det, 0
  %spec.select = select i1 %tobool4.not, i32 49152, i32 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shrt)
  %tobool7.not = icmp eq i32 %shrt, 0
  %and9 = and i32 %spec.select, 16384
  %irq_mask.1 = select i1 %tobool7.not, i32 %spec.select, i32 %and9
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 122, i32 noundef 49152, i32 noundef %irq_mask.1) #10
  %9 = or i32 %shrt, %det
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %do.end.if.end18_crit_edge, label %if.then14

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 108, i32 noundef 256, i32 noundef 256) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %do.end.if.end18_crit_edge
  %.sink = phi i32 [ 2, %if.then14 ], [ 0, %do.end.if.end18_crit_edge ]
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 6, i32 noundef 2, i32 noundef %.sink) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_i2c_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8903_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8903_i2c_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8903_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %val32.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !739
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 560, i32 noundef 3520) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.wm8903_priv, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @wm8903_i2c_probe.__key) #10
  %dev4 = getelementptr inbounds %struct.wm8903_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev4, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8903_regmap, ptr noundef nonnull @wm8903_i2c_probe._key, ptr noundef nonnull @.str.6) #10
  %regmap = getelementptr inbounds %struct.wm8903_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end15

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %5) #13
  br label %cleanup

if.end15:                                         ; preds = %do.body
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %call.i, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end15
  %call.i322 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i322, ptr %call.i, align 4
  %tobool22.not = icmp eq ptr %call.i322, null
  br i1 %tobool22.not, label %if.else.cleanup_crit_edge, label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not = icmp eq i32 %10, 0
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %if.then26

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  %call.i323 = tail call ptr @irq_get_irq_data(i32 noundef %10) #10
  %tobool.not.i = icmp eq ptr %call.i323, null
  br i1 %tobool.not.i, label %wm8903_set_pdata_irq_trigger.exit, label %wm8903_set_pdata_irq_trigger.exit.thread

wm8903_set_pdata_irq_trigger.exit.thread:         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i323, i32 0, i32 3
  %11 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i.i)
  %cond.i = icmp eq i32 %and.i.i, 8
  %..i = zext i1 %cond.i to i8
  %15 = ptrtoint ptr %call.i322 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %..i, ptr %call.i322, align 4
  br label %if.end32

wm8903_set_pdata_irq_trigger.exit:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %17) #13
  br label %cleanup

if.end32:                                         ; preds = %wm8903_set_pdata_irq_trigger.exit.thread, %if.end24.if.end32_crit_edge
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool34.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %if.end32.if.end42_crit_edge, label %if.then35

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then35:                                        ; preds = %if.end32
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #10
  %22 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val32.i, align 4, !annotation !739
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.35, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #10
  %23 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i325 = icmp sgt i32 %23, -1
  br i1 %cmp.i325, label %if.then.i, label %if.then35.if.end.i326_crit_edge

if.then35.if.end.i326_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i326

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val32.i, align 4
  %conv.i = trunc i32 %25 to i16
  %micdet_cfg.i = getelementptr inbounds %struct.wm8903_platform_data, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %micdet_cfg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %micdet_cfg.i, align 2
  br label %if.end.i326

if.end.i326:                                      ; preds = %if.then.i, %if.then35.if.end.i326_crit_edge
  %call.i.i59.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.36, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #10
  %27 = call i32 @llvm.smin.i32(i32 %call.i.i59.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp2.i = icmp sgt i32 %27, -1
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i326.if.end5.i_crit_edge

if.end.i326.if.end5.i_crit_edge:                  ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val32.i, align 4
  %micdet_delay.i = getelementptr inbounds %struct.wm8903_platform_data, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %micdet_delay.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %micdet_delay.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i326.if.end5.i_crit_edge
  %gpio_cfg.i = getelementptr %struct.wm8903_platform_data, ptr %21, i32 0, i32 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.37, ptr noundef %gpio_cfg.i, i32 noundef 5, i32 noundef 0) #10
  %31 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp7.i = icmp sgt i32 %31, -1
  br i1 %cmp7.i, label %for.body.preheader.i, label %if.end5.i.wm8903_set_pdata_from_of.exit.thread_crit_edge

if.end5.i.wm8903_set_pdata_from_of.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit.thread

for.body.preheader.i:                             ; preds = %if.end5.i
  %32 = ptrtoint ptr %gpio_cfg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio_cfg.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %if.else25.i [
    i32 0, label %for.body.preheader.i.for.inc.sink.split.i_crit_edge
    i32 -1, label %if.then22.i
  ]

for.body.preheader.i.for.inc.sink.split.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

if.then22.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

if.else25.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %33)
  %cmp28.i = icmp ugt i32 %33, 32767
  br i1 %cmp28.i, label %if.else25.i.wm8903_set_pdata_from_of.exit_crit_edge, label %if.else25.i.for.inc.i_crit_edge

if.else25.i.for.inc.i_crit_edge:                  ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else25.i.wm8903_set_pdata_from_of.exit_crit_edge: ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit

for.inc.sink.split.i:                             ; preds = %if.then22.i, %for.body.preheader.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then22.i ], [ 32768, %for.body.preheader.i.for.inc.sink.split.i_crit_edge ]
  %35 = ptrtoint ptr %gpio_cfg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %gpio_cfg.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else25.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.wm8903_platform_data, ptr %21, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.1.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.323)
  switch i32 %37, label %if.else25.1.i [
    i32 0, label %if.then15.1.i
    i32 -1, label %for.inc.i.for.inc.1.sink.split.i_crit_edge
  ]

for.inc.i.for.inc.1.sink.split.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.sink.split.i

if.then15.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.sink.split.i

if.else25.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %37)
  %cmp28.1.i = icmp ugt i32 %37, 32767
  br i1 %cmp28.1.i, label %if.else25.1.i.wm8903_set_pdata_from_of.exit_crit_edge, label %if.else25.1.i.for.inc.1.i_crit_edge

if.else25.1.i.for.inc.1.i_crit_edge:              ; preds = %if.else25.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.else25.1.i.wm8903_set_pdata_from_of.exit_crit_edge: ; preds = %if.else25.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit

for.inc.1.sink.split.i:                           ; preds = %if.then15.1.i, %for.inc.i.for.inc.1.sink.split.i_crit_edge
  %.sink65.i = phi i32 [ 32768, %if.then15.1.i ], [ 0, %for.inc.i.for.inc.1.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink65.i, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.sink.split.i, %if.else25.1.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.wm8903_platform_data, ptr %21, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.2.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %41, label %if.else25.2.i [
    i32 0, label %if.then15.2.i
    i32 -1, label %for.inc.1.i.for.inc.2.sink.split.i_crit_edge
  ]

for.inc.1.i.for.inc.2.sink.split.i_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.sink.split.i

if.then15.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.sink.split.i

if.else25.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %41)
  %cmp28.2.i = icmp ugt i32 %41, 32767
  br i1 %cmp28.2.i, label %if.else25.2.i.wm8903_set_pdata_from_of.exit_crit_edge, label %if.else25.2.i.for.inc.2.i_crit_edge

if.else25.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else25.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.else25.2.i.wm8903_set_pdata_from_of.exit_crit_edge: ; preds = %if.else25.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit

for.inc.2.sink.split.i:                           ; preds = %if.then15.2.i, %for.inc.1.i.for.inc.2.sink.split.i_crit_edge
  %.sink66.i = phi i32 [ 32768, %if.then15.2.i ], [ 0, %for.inc.1.i.for.inc.2.sink.split.i_crit_edge ]
  %43 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink66.i, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.2.sink.split.i, %if.else25.2.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.wm8903_platform_data, ptr %21, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.3.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %45, label %if.else25.3.i [
    i32 0, label %if.then15.3.i
    i32 -1, label %for.inc.2.i.for.inc.3.sink.split.i_crit_edge
  ]

for.inc.2.i.for.inc.3.sink.split.i_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.sink.split.i

if.then15.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.sink.split.i

if.else25.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %45)
  %cmp28.3.i = icmp ugt i32 %45, 32767
  br i1 %cmp28.3.i, label %if.else25.3.i.wm8903_set_pdata_from_of.exit_crit_edge, label %if.else25.3.i.for.inc.3.i_crit_edge

if.else25.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else25.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

if.else25.3.i.wm8903_set_pdata_from_of.exit_crit_edge: ; preds = %if.else25.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit

for.inc.3.sink.split.i:                           ; preds = %if.then15.3.i, %for.inc.2.i.for.inc.3.sink.split.i_crit_edge
  %.sink67.i = phi i32 [ 32768, %if.then15.3.i ], [ 0, %for.inc.2.i.for.inc.3.sink.split.i_crit_edge ]
  %47 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink67.i, ptr %arrayidx.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %for.inc.3.sink.split.i, %if.else25.3.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.wm8903_platform_data, ptr %21, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.4.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.326)
  switch i32 %49, label %if.else25.4.i [
    i32 0, label %if.then15.4.i
    i32 -1, label %for.inc.3.i.wm8903_set_pdata_from_of.exit.thread.sink.split_crit_edge
  ]

for.inc.3.i.wm8903_set_pdata_from_of.exit.thread.sink.split_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit.thread.sink.split

if.then15.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit.thread.sink.split

if.else25.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %49)
  %cmp28.4.i = icmp ugt i32 %49, 32767
  br i1 %cmp28.4.i, label %if.else25.4.i.wm8903_set_pdata_from_of.exit_crit_edge, label %if.else25.4.i.wm8903_set_pdata_from_of.exit.thread_crit_edge

if.else25.4.i.wm8903_set_pdata_from_of.exit.thread_crit_edge: ; preds = %if.else25.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit.thread

if.else25.4.i.wm8903_set_pdata_from_of.exit_crit_edge: ; preds = %if.else25.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm8903_set_pdata_from_of.exit

wm8903_set_pdata_from_of.exit.thread.sink.split:  ; preds = %if.then15.4.i, %for.inc.3.i.wm8903_set_pdata_from_of.exit.thread.sink.split_crit_edge
  %.sink = phi i32 [ 32768, %if.then15.4.i ], [ 0, %for.inc.3.i.wm8903_set_pdata_from_of.exit.thread.sink.split_crit_edge ]
  %51 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %arrayidx.4.i, align 4
  br label %wm8903_set_pdata_from_of.exit.thread

wm8903_set_pdata_from_of.exit.thread:             ; preds = %wm8903_set_pdata_from_of.exit.thread.sink.split, %if.else25.4.i.wm8903_set_pdata_from_of.exit.thread_crit_edge, %if.end5.i.wm8903_set_pdata_from_of.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #10
  br label %if.end42

wm8903_set_pdata_from_of.exit:                    ; preds = %if.else25.4.i.wm8903_set_pdata_from_of.exit_crit_edge, %if.else25.3.i.wm8903_set_pdata_from_of.exit_crit_edge, %if.else25.2.i.wm8903_set_pdata_from_of.exit_crit_edge, %if.else25.1.i.wm8903_set_pdata_from_of.exit_crit_edge, %if.else25.i.wm8903_set_pdata_from_of.exit_crit_edge
  %i.061.lcssa.i = phi i32 [ 0, %if.else25.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ 1, %if.else25.1.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ 2, %if.else25.2.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ 3, %if.else25.3.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ 4, %if.else25.4.i.wm8903_set_pdata_from_of.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %33, %if.else25.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ %37, %if.else25.1.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ %41, %if.else25.2.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ %45, %if.else25.3.i.wm8903_set_pdata_from_of.exit_crit_edge ], [ %49, %if.else25.4.i.wm8903_set_pdata_from_of.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %i.061.lcssa.i, i32 noundef %.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #10
  br label %cleanup

if.end42:                                         ; preds = %wm8903_set_pdata_from_of.exit.thread, %if.end32.if.end42_crit_edge, %if.then16
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %arrayidx45 = getelementptr %struct.wm8903_priv, ptr %call.i, i32 0, i32 3, i32 0
  %54 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.40, ptr %arrayidx45, align 4
  %arrayidx45.1 = getelementptr %struct.wm8903_priv, ptr %call.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.41, ptr %arrayidx45.1, align 4
  %arrayidx45.2 = getelementptr %struct.wm8903_priv, ptr %call.i, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.42, ptr %arrayidx45.2, align 4
  %arrayidx45.3 = getelementptr %struct.wm8903_priv, ptr %call.i, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.43, ptr %arrayidx45.3, align 4
  %call48 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 4, ptr noundef %arrayidx45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call48) #13
  br label %cleanup

if.end55:                                         ; preds = %if.end42
  %call58 = call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %arrayidx45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call58) #13
  br label %cleanup

if.end65:                                         ; preds = %if.end55
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call67 = call i32 @regmap_read(ptr noundef %59, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call67) #13
  br label %err

if.end74:                                         ; preds = %if.end65
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35075, i32 %61)
  %cmp75.not = icmp eq i32 %61, 35075
  br i1 %cmp75.not, label %if.end81, label %do.end79

do.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %61) #13
  br label %err

if.end81:                                         ; preds = %if.end74
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call83 = call i32 @regmap_read(ptr noundef %63, i32 noundef 1, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  br i1 %cmp84.not, label %do.end93, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call83) #13
  br label %err

do.end93:                                         ; preds = %if.end81
  %64 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val, align 4
  %and = and i32 %65, 15
  %add = add nuw nsw i32 %and, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %add) #13
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call96 = call i32 @regmap_write(ptr noundef %67, i32 noundef 0, i32 noundef 35075) #10
  call fastcc void @wm8903_init_gpio(ptr noundef nonnull %call.i)
  %arrayidx100 = getelementptr %struct.wm8903_platform_data, ptr %53, i32 0, i32 4, i32 0
  %68 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx100, align 4
  %70 = add i32 %69, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %70)
  %71 = icmp ult i32 %70, -32768
  br i1 %71, label %do.end93.for.inc116_crit_edge, label %if.end106

do.end93.for.inc116_crit_edge:                    ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

if.end106:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %and111 = and i32 %69, 32767
  %call112 = call i32 @regmap_write(ptr noundef %73, i32 noundef 116, i32 noundef %and111) #10
  %74 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx100, align 4
  %and115 = lshr i32 %75, 8
  %shr = and i32 %and115, 31
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr, ptr %val, align 4
  %77 = and i32 %75, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %77)
  %switch = icmp eq i32 %77, 1024
  br label %for.inc116

for.inc116:                                       ; preds = %if.end106, %do.end93.for.inc116_crit_edge
  %mic_gpio.1.off0 = phi i1 [ false, %do.end93.for.inc116_crit_edge ], [ %switch, %if.end106 ]
  %arrayidx100.1 = getelementptr %struct.wm8903_platform_data, ptr %53, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx100.1, align 4
  %80 = add i32 %79, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %80)
  %81 = icmp ult i32 %80, -32768
  br i1 %81, label %for.inc116.for.inc116.1_crit_edge, label %if.end106.1

for.inc116.for.inc116.1_crit_edge:                ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116.1

if.end106.1:                                      ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %and111.1 = and i32 %79, 32767
  %call112.1 = call i32 @regmap_write(ptr noundef %83, i32 noundef 117, i32 noundef %and111.1) #10
  %84 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx100.1, align 4
  %and115.1 = lshr i32 %85, 8
  %shr.1 = and i32 %and115.1, 31
  %86 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %shr.1, ptr %val, align 4
  %87 = and i32 %85, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %87)
  %switch.1 = icmp eq i32 %87, 1024
  %spec.select.1 = select i1 %switch.1, i1 true, i1 %mic_gpio.1.off0
  br label %for.inc116.1

for.inc116.1:                                     ; preds = %if.end106.1, %for.inc116.for.inc116.1_crit_edge
  %mic_gpio.1.off0.1 = phi i1 [ %mic_gpio.1.off0, %for.inc116.for.inc116.1_crit_edge ], [ %spec.select.1, %if.end106.1 ]
  %arrayidx100.2 = getelementptr %struct.wm8903_platform_data, ptr %53, i32 0, i32 4, i32 2
  %88 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx100.2, align 4
  %90 = add i32 %89, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %90)
  %91 = icmp ult i32 %90, -32768
  br i1 %91, label %for.inc116.1.for.inc116.2_crit_edge, label %if.end106.2

for.inc116.1.for.inc116.2_crit_edge:              ; preds = %for.inc116.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116.2

if.end106.2:                                      ; preds = %for.inc116.1
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %and111.2 = and i32 %89, 32767
  %call112.2 = call i32 @regmap_write(ptr noundef %93, i32 noundef 118, i32 noundef %and111.2) #10
  %94 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx100.2, align 4
  %and115.2 = lshr i32 %95, 8
  %shr.2 = and i32 %and115.2, 31
  %96 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shr.2, ptr %val, align 4
  %97 = and i32 %95, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %97)
  %switch.2 = icmp eq i32 %97, 1024
  %spec.select.2 = select i1 %switch.2, i1 true, i1 %mic_gpio.1.off0.1
  br label %for.inc116.2

for.inc116.2:                                     ; preds = %if.end106.2, %for.inc116.1.for.inc116.2_crit_edge
  %mic_gpio.1.off0.2 = phi i1 [ %mic_gpio.1.off0.1, %for.inc116.1.for.inc116.2_crit_edge ], [ %spec.select.2, %if.end106.2 ]
  %arrayidx100.3 = getelementptr %struct.wm8903_platform_data, ptr %53, i32 0, i32 4, i32 3
  %98 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx100.3, align 4
  %100 = add i32 %99, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %100)
  %101 = icmp ult i32 %100, -32768
  br i1 %101, label %for.inc116.2.for.inc116.3_crit_edge, label %if.end106.3

for.inc116.2.for.inc116.3_crit_edge:              ; preds = %for.inc116.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116.3

if.end106.3:                                      ; preds = %for.inc116.2
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %and111.3 = and i32 %99, 32767
  %call112.3 = call i32 @regmap_write(ptr noundef %103, i32 noundef 119, i32 noundef %and111.3) #10
  %104 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx100.3, align 4
  %and115.3 = lshr i32 %105, 8
  %shr.3 = and i32 %and115.3, 31
  %106 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %shr.3, ptr %val, align 4
  %107 = and i32 %105, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %107)
  %switch.3 = icmp eq i32 %107, 1024
  %spec.select.3 = select i1 %switch.3, i1 true, i1 %mic_gpio.1.off0.2
  br label %for.inc116.3

for.inc116.3:                                     ; preds = %if.end106.3, %for.inc116.2.for.inc116.3_crit_edge
  %mic_gpio.1.off0.3 = phi i1 [ %mic_gpio.1.off0.2, %for.inc116.2.for.inc116.3_crit_edge ], [ %spec.select.3, %if.end106.3 ]
  %arrayidx100.4 = getelementptr %struct.wm8903_platform_data, ptr %53, i32 0, i32 4, i32 4
  %108 = ptrtoint ptr %arrayidx100.4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx100.4, align 4
  %110 = add i32 %109, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %110)
  %111 = icmp ult i32 %110, -32768
  br i1 %111, label %for.inc116.3.for.inc116.4_crit_edge, label %if.end106.4

for.inc116.3.for.inc116.4_crit_edge:              ; preds = %for.inc116.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116.4

if.end106.4:                                      ; preds = %for.inc116.3
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %and111.4 = and i32 %109, 32767
  %call112.4 = call i32 @regmap_write(ptr noundef %113, i32 noundef 120, i32 noundef %and111.4) #10
  %114 = ptrtoint ptr %arrayidx100.4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx100.4, align 4
  %and115.4 = lshr i32 %115, 8
  %shr.4 = and i32 %and115.4, 31
  %116 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shr.4, ptr %val, align 4
  %117 = and i32 %115, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %117)
  %switch.4 = icmp eq i32 %117, 1024
  %spec.select.4 = select i1 %switch.4, i1 true, i1 %mic_gpio.1.off0.3
  br label %for.inc116.4

for.inc116.4:                                     ; preds = %if.end106.4, %for.inc116.3.for.inc116.4_crit_edge
  %mic_gpio.1.off0.4 = phi i1 [ %mic_gpio.1.off0.3, %for.inc116.3.for.inc116.4_crit_edge ], [ %spec.select.4, %if.end106.4 ]
  %118 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap, align 4
  %micdet_cfg = getelementptr inbounds %struct.wm8903_platform_data, ptr %53, i32 0, i32 1
  %120 = ptrtoint ptr %micdet_cfg to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %micdet_cfg, align 2
  %conv = zext i16 %121 to i32
  %call120 = call i32 @regmap_write(ptr noundef %119, i32 noundef 6, i32 noundef %conv) #10
  %122 = ptrtoint ptr %micdet_cfg to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %micdet_cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool122.not = icmp eq i16 %123, 0
  br i1 %tobool122.not, label %for.inc116.4.if.end126_crit_edge, label %if.then123

for.inc116.4.if.end126_crit_edge:                 ; preds = %for.inc116.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then123:                                       ; preds = %for.inc116.4
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap, align 4
  %call.i329 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 108, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %for.inc116.4.if.end126_crit_edge
  br i1 %mic_gpio.1.off0.4, label %if.end126.if.end149_crit_edge, label %land.rhs

if.end126.if.end149_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

land.rhs:                                         ; preds = %if.end126
  %126 = ptrtoint ptr %micdet_cfg to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %micdet_cfg, align 2
  %128 = and i16 %127, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool131.not = icmp eq i16 %128, 0
  br i1 %tobool131.not, label %land.rhs.if.end149_crit_edge, label %do.end143, !prof !740

land.rhs.if.end149_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

do.end143:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2113, i32 noundef 9, ptr noundef null) #10
  br label %if.end149

if.end149:                                        ; preds = %do.end143, %land.rhs.if.end149_crit_edge, %if.end126.if.end149_crit_edge
  %micdet_delay = getelementptr inbounds %struct.wm8903_platform_data, ptr %53, i32 0, i32 2
  %129 = ptrtoint ptr %micdet_delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %micdet_delay, align 4
  %mic_delay = getelementptr inbounds %struct.wm8903_priv, ptr %call.i, i32 0, i32 16
  %131 = ptrtoint ptr %mic_delay to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %mic_delay, align 4
  %irq157 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %132 = ptrtoint ptr %irq157 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %irq157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool158.not = icmp eq i32 %133, 0
  br i1 %tobool158.not, label %if.end149.if.end178_crit_edge, label %if.then159

if.end149.if.end178_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then159:                                       ; preds = %if.end149
  %134 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %53, align 4, !range !741
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool160.not = icmp eq i8 %135, 0
  %. = select i1 %tobool160.not, i32 8196, i32 8200
  %not.tobool160.not = xor i1 %tobool160.not, true
  %.321 = zext i1 %not.tobool160.not to i32
  %136 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap, align 4
  %call.i330 = call i32 @regmap_update_bits_base(ptr noundef %137, i32 noundef 126, i32 noundef 1, i32 noundef %.321, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %138 = ptrtoint ptr %irq157 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %irq157, align 4
  %call167 = call i32 @request_threaded_irq(i32 noundef %139, ptr noundef null, ptr noundef nonnull @wm8903_irq, i32 noundef %., ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168.not = icmp eq i32 %call167, 0
  br i1 %cmp168.not, label %if.end175, label %do.end173

do.end173:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.31, i32 noundef %call167) #13
  br label %cleanup

if.end175:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap, align 4
  %call.i331 = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef 122, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end178

if.end178:                                        ; preds = %if.end175, %if.end149.if.end178_crit_edge
  %144 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap, align 4
  %call.i332 = call i32 @regmap_update_bits_base(ptr noundef %145, i32 noundef 36, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %146 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regmap, align 4
  %call.i333 = call i32 @regmap_update_bits_base(ptr noundef %147, i32 noundef 37, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %148 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap, align 4
  %call.i334 = call i32 @regmap_update_bits_base(ptr noundef %149, i32 noundef 30, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %150 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap, align 4
  %call.i335 = call i32 @regmap_update_bits_base(ptr noundef %151, i32 noundef 31, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %152 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap, align 4
  %call.i336 = call i32 @regmap_update_bits_base(ptr noundef %153, i32 noundef 57, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 4
  %call.i337 = call i32 @regmap_update_bits_base(ptr noundef %155, i32 noundef 58, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %156 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap, align 4
  %call.i338 = call i32 @regmap_update_bits_base(ptr noundef %157, i32 noundef 59, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %158 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap, align 4
  %call.i339 = call i32 @regmap_update_bits_base(ptr noundef %159, i32 noundef 60, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %160 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regmap, align 4
  %call.i340 = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef 62, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %162 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap, align 4
  %call.i341 = call i32 @regmap_update_bits_base(ptr noundef %163, i32 noundef 63, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %164 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regmap, align 4
  %call.i342 = call i32 @regmap_update_bits_base(ptr noundef %165, i32 noundef 33, i32 noundef 520, i32 noundef 520, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call202 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8903, ptr noundef nonnull @wm8903_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %cmp203.not = icmp eq i32 %call202, 0
  br i1 %cmp203.not, label %if.end178.cleanup_crit_edge, label %if.end178.err_crit_edge

if.end178.err_crit_edge:                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %if.end178.err_crit_edge, %do.end88, %do.end79, %do.end72
  %ret.0 = phi i32 [ %call67, %do.end72 ], [ -19, %do.end79 ], [ %call83, %do.end88 ], [ %call202, %if.end178.err_crit_edge ]
  %call209 = call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %arrayidx45) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end178.cleanup_crit_edge, %do.end173, %do.end63, %do.end53, %wm8903_set_pdata_from_of.exit, %wm8903_set_pdata_irq_trigger.exit, %if.else.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %call48, %do.end53 ], [ %call58, %do.end63 ], [ %ret.0, %err ], [ %call167, %do.end173 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ -22, %wm8903_set_pdata_irq_trigger.exit ], [ -22, %wm8903_set_pdata_from_of.exit ], [ 0, %if.end178.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_i2c_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies) #10
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gpio_chip.i = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 17
  tail call void @gpiochip_remove(ptr noundef %gpio_chip.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8903_init_gpio(ptr noundef %wm8903) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wm8903 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8903, align 4
  %gpio_chip = getelementptr inbounds %struct.wm8903_priv, ptr %wm8903, i32 0, i32 17
  %2 = call ptr @memcpy(ptr %gpio_chip, ptr @wm8903_template_chip, i32 348)
  %ngpio = getelementptr inbounds %struct.wm8903_priv, ptr %wm8903, i32 0, i32 17, i32 20
  %3 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5, ptr %ngpio, align 4
  %dev = getelementptr inbounds %struct.wm8903_priv, ptr %wm8903, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.wm8903_priv, ptr %wm8903, i32 0, i32 17, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent, align 4
  %gpio_base = getelementptr inbounds %struct.wm8903_platform_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %8
  %9 = getelementptr inbounds %struct.wm8903_priv, ptr %wm8903, i32 0, i32 17, i32 19
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 4
  %call = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef %wm8903, ptr noundef nonnull @wm8903_init_gpio.lock_key, ptr noundef nonnull @wm8903_init_gpio.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %do.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.44, i32 noundef %call) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_irq(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  %int_val = alloca i32, align 4
  %mask = alloca i32, align 4
  %int_pol = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_val) #10
  %0 = ptrtoint ptr %int_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %int_val, align 4, !annotation !739
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !739
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_pol) #10
  %2 = ptrtoint ptr %int_pol to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %int_pol, align 4, !annotation !739
  %regmap = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 122, ptr noundef nonnull %mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.46, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 121, ptr noundef nonnull %int_val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.49, i32 noundef %call2) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %neg = xor i32 %12, -1
  %13 = ptrtoint ptr %int_val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_val, align 4
  %and = and i32 %14, %neg
  store i32 %and, ptr %int_val, align 4
  %and10 = and i32 %and, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.end9.if.end16_crit_edge, label %do.end14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.52) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end9.if.end16_crit_edge
  %mic_last_report = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 15
  %17 = ptrtoint ptr %mic_last_report to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mic_last_report, align 4
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %20, i32 noundef 123, ptr noundef nonnull %int_pol) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.56, i32 noundef %call18) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %int_val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %int_val, align 4
  %and26 = and i32 %24, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  %dev29 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev29, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then28.dev_name.exit_crit_edge

if.then28.dev_name.exit_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then28.dev_name.exit_crit_edge
  %retval.0.i109 = phi ptr [ %30, %if.end.i ], [ %28, %if.then28.dev_name.exit_crit_edge ]
  call fastcc void @trace_snd_soc_jack_irq(ptr noundef %retval.0.i109)
  br label %if.end31

if.end31:                                         ; preds = %dev_name.exit, %if.end25.if.end31_crit_edge
  %31 = ptrtoint ptr %int_val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %int_val, align 4
  %and32 = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end46_crit_edge, label %do.body35

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body35:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_irq.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_irq, %if.then40)) #10
          to label %do.end44 [label %if.then40], !srcloc !738

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %dev41 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 1
  %33 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev41, align 4
  %35 = ptrtoint ptr %int_pol to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %int_pol, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_irq.__UNIQUE_ID_ddebug336, ptr noundef %34, ptr noundef nonnull @.str.58, i32 noundef %36) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body35
  %mic_short = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 14
  %37 = ptrtoint ptr %mic_short to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mic_short, align 4
  %xor = xor i32 %38, %18
  %39 = ptrtoint ptr %int_pol to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %int_pol, align 4
  %xor45 = xor i32 %40, 32768
  store i32 %xor45, ptr %int_pol, align 4
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end31.if.end46_crit_edge
  %mic_report.0 = phi i32 [ %xor, %do.end44 ], [ %18, %if.end31.if.end46_crit_edge ]
  %41 = ptrtoint ptr %int_val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %int_val, align 4
  %and47 = and i32 %42, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end69_crit_edge, label %do.body50

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

do.body50:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_irq.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_irq, %if.then62)) #10
          to label %do.end66 [label %if.then62], !srcloc !738

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %dev63 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 1
  %43 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev63, align 4
  %45 = ptrtoint ptr %int_pol to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %int_pol, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_irq.__UNIQUE_ID_ddebug337, ptr noundef %44, ptr noundef nonnull @.str.59, i32 noundef %46) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  %mic_det = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 13
  %47 = ptrtoint ptr %mic_det to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mic_det, align 4
  %xor67 = xor i32 %48, %mic_report.0
  %49 = ptrtoint ptr %int_pol to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %int_pol, align 4
  %xor68 = xor i32 %50, 16384
  store i32 %xor68, ptr %int_pol, align 4
  %mic_delay = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 16
  %51 = ptrtoint ptr %mic_delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mic_delay, align 4
  call void @msleep(i32 noundef %52) #10
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %if.end46.if.end69_crit_edge
  %mic_report.1 = phi i32 [ %xor67, %do.end66 ], [ %mic_report.0, %if.end46.if.end69_crit_edge ]
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %int_pol to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %int_pol, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 123, i32 noundef 49152, i32 noundef %56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %mic_jack = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 12
  %57 = ptrtoint ptr %mic_jack to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mic_jack, align 4
  %mic_short72 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 14
  %59 = ptrtoint ptr %mic_short72 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mic_short72, align 4
  %mic_det73 = getelementptr inbounds %struct.wm8903_priv, ptr %data, i32 0, i32 13
  %61 = ptrtoint ptr %mic_det73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mic_det73, align 4
  %or = or i32 %62, %60
  call void @snd_soc_jack_report(ptr noundef %58, i32 noundef %mic_report.1, i32 noundef %or) #10
  %63 = ptrtoint ptr %mic_last_report to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mic_report.1, ptr %mic_last_report, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end23, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end7 ], [ 1, %do.end23 ], [ 1, %if.end69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_pol) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8903_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 6, label %entry.return_crit_edge4
    i32 8, label %entry.return_crit_edge5
    i32 10, label %entry.return_crit_edge6
    i32 12, label %entry.return_crit_edge7
    i32 13, label %entry.return_crit_edge8
    i32 14, label %entry.return_crit_edge9
    i32 15, label %entry.return_crit_edge10
    i32 16, label %entry.return_crit_edge11
    i32 17, label %entry.return_crit_edge12
    i32 18, label %entry.return_crit_edge13
    i32 20, label %entry.return_crit_edge14
    i32 21, label %entry.return_crit_edge15
    i32 22, label %entry.return_crit_edge16
    i32 24, label %entry.return_crit_edge17
    i32 25, label %entry.return_crit_edge18
    i32 26, label %entry.return_crit_edge19
    i32 27, label %entry.return_crit_edge20
    i32 30, label %entry.return_crit_edge21
    i32 31, label %entry.return_crit_edge22
    i32 32, label %entry.return_crit_edge23
    i32 33, label %entry.return_crit_edge24
    i32 36, label %entry.return_crit_edge25
    i32 37, label %entry.return_crit_edge26
    i32 38, label %entry.return_crit_edge27
    i32 39, label %entry.return_crit_edge28
    i32 40, label %entry.return_crit_edge29
    i32 41, label %entry.return_crit_edge30
    i32 42, label %entry.return_crit_edge31
    i32 43, label %entry.return_crit_edge32
    i32 44, label %entry.return_crit_edge33
    i32 45, label %entry.return_crit_edge34
    i32 46, label %entry.return_crit_edge35
    i32 47, label %entry.return_crit_edge36
    i32 50, label %entry.return_crit_edge37
    i32 51, label %entry.return_crit_edge38
    i32 52, label %entry.return_crit_edge39
    i32 53, label %entry.return_crit_edge40
    i32 54, label %entry.return_crit_edge41
    i32 55, label %entry.return_crit_edge42
    i32 57, label %entry.return_crit_edge43
    i32 58, label %entry.return_crit_edge44
    i32 59, label %entry.return_crit_edge45
    i32 60, label %entry.return_crit_edge46
    i32 62, label %entry.return_crit_edge47
    i32 63, label %entry.return_crit_edge48
    i32 65, label %entry.return_crit_edge49
    i32 67, label %entry.return_crit_edge50
    i32 69, label %entry.return_crit_edge51
    i32 81, label %entry.return_crit_edge52
    i32 82, label %entry.return_crit_edge53
    i32 83, label %entry.return_crit_edge54
    i32 84, label %entry.return_crit_edge55
    i32 90, label %entry.return_crit_edge56
    i32 94, label %entry.return_crit_edge57
    i32 98, label %entry.return_crit_edge58
    i32 104, label %entry.return_crit_edge59
    i32 108, label %entry.return_crit_edge60
    i32 109, label %entry.return_crit_edge61
    i32 110, label %entry.return_crit_edge62
    i32 111, label %entry.return_crit_edge63
    i32 112, label %entry.return_crit_edge64
    i32 114, label %entry.return_crit_edge65
    i32 116, label %entry.return_crit_edge66
    i32 117, label %entry.return_crit_edge67
    i32 118, label %entry.return_crit_edge68
    i32 119, label %entry.return_crit_edge69
    i32 120, label %entry.return_crit_edge70
    i32 121, label %entry.return_crit_edge71
    i32 122, label %entry.return_crit_edge72
    i32 123, label %entry.return_crit_edge73
    i32 126, label %entry.return_crit_edge74
    i32 164, label %entry.return_crit_edge75
    i32 172, label %entry.return_crit_edge76
  ]

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8903_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 121, label %entry.return_crit_edge2
    i32 112, label %entry.return_crit_edge3
    i32 81, label %entry.return_crit_edge4
    i32 82, label %entry.return_crit_edge5
    i32 83, label %entry.return_crit_edge6
    i32 84, label %entry.return_crit_edge7
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8903_gpio_request(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %offset)
  %cmp = icmp ugt i32 %offset, 4
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_gpio_direction_in(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %regmap = getelementptr inbounds %struct.wm8903_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 116
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 8064, i32 noundef 896, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_gpio_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %shl = shl i32 %value, 4
  %regmap = getelementptr inbounds %struct.wm8903_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 116
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 8080, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !739
  %regmap = getelementptr inbounds %struct.wm8903_priv, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 116
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %reg) #10
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = lshr i32 %4, 4
  %.lobit = and i32 %5, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8903_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %regmap = getelementptr inbounds %struct.wm8903_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl = select i1 %tobool.not, i32 0, i32 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 16, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_snd_soc_jack_irq(ptr noundef %name) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 1), ptr blockaddress(@trace_snd_soc_jack_irq, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !738

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !728) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !740

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !728) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !742
  %call42 = tail call i32 @__traceiter_snd_soc_jack_irq(ptr noundef null, ptr noundef %name) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !743
  %13 = tail call i32 @llvm.read_register.i32(metadata !728) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !728) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !740

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !728) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !744
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_snd_soc_jack_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_snd_soc_jack_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 226, ptr noundef nonnull @.str.61) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !745
  %31 = tail call i32 @llvm.read_register.i32(metadata !728) #10
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
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_jack_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_resume(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regcache_sync(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8903_seq_notifier(ptr noundef %component, i32 noundef %event, i32 noundef %subseq) #0 align 64 {
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
  %dcs_pending = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dcs_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end105_crit_edge, label %do.body

entry.if.end105_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_seq_notifier, %if.then5)) #10
          to label %for.body [label %if.then5], !srcloc !738

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcs_pending, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_seq_notifier.__UNIQUE_ID_ddebug321, ptr noundef %7, ptr noundef nonnull @.str.308, i32 noundef %9) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then5, %do.body
  %dcs_mode.0158 = phi i32 [ %dcs_mode.1, %for.inc.for.body_crit_edge ], [ 0, %do.body ], [ 0, %if.then5 ]
  %i.0155 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body ], [ 0, %if.then5 ]
  %10 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dcs_pending, align 4
  %shl = shl nuw nsw i32 1, %i.0155
  %and = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.wm8903_priv, ptr %3, i32 0, i32 10, i32 %i.0155
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %do.body36, label %do.body13

do.body13:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_seq_notifier, %if.then25)) #10
          to label %do.end31 [label %if.then25], !srcloc !738

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %sub = sub nuw nsw i32 3, %i.0155
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_seq_notifier.__UNIQUE_ID_ddebug322, ptr noundef %15, ptr noundef nonnull @.str.309, i32 noundef %sub, i32 noundef %17) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.body13
  %add = add nuw nsw i32 %i.0155, 71
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %and34 = and i32 %19, 255
  %call35 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %and34) #10
  br label %for.inc

do.body36:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_seq_notifier, %if.then48)) #10
          to label %for.inc [label %if.then48], !srcloc !738

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %sub50 = sub nuw nsw i32 3, %i.0155
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_seq_notifier.__UNIQUE_ID_ddebug323, ptr noundef %21, ptr noundef nonnull @.str.310, i32 noundef %sub50) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %do.body36, %do.end31, %for.body.for.inc_crit_edge
  %dcs_mode.1 = phi i32 [ %dcs_mode.0158, %do.end31 ], [ %dcs_mode.0158, %for.body.for.inc_crit_edge ], [ 2, %if.then48 ], [ 2, %do.body36 ]
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %class_w_users = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %class_w_users to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %class_w_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool55.not = icmp eq i32 %23, 0
  %spec.select = select i1 %tobool55.not, i32 %dcs_mode.1, i32 2
  %call58 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 69, i32 noundef 3, i32 noundef %spec.select) #10
  %24 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dcs_pending, align 4
  %call60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 67, i32 noundef 15, i32 noundef %25) #10
  %26 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %spec.select, label %do.end101 [
    i32 0, label %for.end.sw.epilog_crit_edge
    i32 2, label %sw.bb
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  tail call void @msleep(i32 noundef 270) #10
  %27 = ptrtoint ptr %class_w_users to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %class_w_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool62.not = icmp eq i32 %28, 0
  br i1 %tobool62.not, label %sw.bb.for.body67_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.for.body67_crit_edge:                       ; preds = %sw.bb
  br label %for.body67

for.body67:                                       ; preds = %for.inc96.for.body67_crit_edge, %sw.bb.for.body67_crit_edge
  %i.1159 = phi i32 [ %inc97, %for.inc96.for.body67_crit_edge ], [ 0, %sw.bb.for.body67_crit_edge ]
  %29 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dcs_pending, align 4
  %shl69 = shl nuw nsw i32 1, %i.1159
  %and70 = and i32 %30, %shl69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %for.body67.for.inc96_crit_edge, label %if.end73

for.body67.for.inc96_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc96

if.end73:                                         ; preds = %for.body67
  %add74 = add nuw nsw i32 %i.1159, 81
  %call75 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add74) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_seq_notifier, %if.then88)) #10
          to label %do.end93 [label %if.then88], !srcloc !738

if.then88:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %sub90 = sub nuw nsw i32 3, %i.1159
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_seq_notifier.__UNIQUE_ID_ddebug324, ptr noundef %32, ptr noundef nonnull @.str.311, i32 noundef %sub90, i32 noundef %call75) #10
  br label %do.end93

do.end93:                                         ; preds = %if.then88, %if.end73
  %arrayidx95 = getelementptr %struct.wm8903_priv, ptr %3, i32 0, i32 10, i32 %i.1159
  %33 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call75, ptr %arrayidx95, align 4
  br label %for.inc96

for.inc96:                                        ; preds = %do.end93, %for.body67.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %i.1159, 1
  %exitcond161.not = icmp eq i32 %inc97, 4
  br i1 %exitcond161.not, label %for.inc96.sw.epilog_crit_edge, label %for.inc96.for.body67_crit_edge

for.inc96.for.body67_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body67

for.inc96.sw.epilog_crit_edge:                    ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end101:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, i32 noundef %spec.select) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end101, %for.inc96.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  %34 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dcs_pending, align 4
  br label %if.end105

if.end105:                                        ; preds = %sw.epilog, %entry.if.end105_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb19
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 6, i32 noundef 2) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %1 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %sw.bb1.if.end17_crit_edge

sw.bb1.if.end17_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %sw.bb1
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 31, i32 noundef 26) #10
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 65, i32 noundef 2, i32 noundef 2) #10
  tail call void @msleep(i32 noundef 33) #10
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 17, i32 noundef 3, i32 noundef 3) #10
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 65, i32 noundef 2, i32 noundef 0) #10
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 255, i32 noundef 245) #10
  tail call void @msleep(i32 noundef 129) #10
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 17, i32 noundef 3, i32 noundef 0) #10
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 24, i32 noundef 0) #10
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 6, i32 noundef 2) #10
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 17, i32 noundef 1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_set_bias_level.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_set_bias_level, %if.then15)) #10
          to label %do.end [label %if.then15], !srcloc !738

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_set_bias_level.__UNIQUE_ID_ddebug329, ptr noundef %4, ptr noundef nonnull @.str.293) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.then
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 104, i32 noundef 3, i32 noundef 3) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %sw.bb1.if.end17_crit_edge
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 6, i32 noundef 4) #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 0) #10
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 24, i32 noundef 16) #10
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 1, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 290) #10
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 255, i32 noundef 0) #10
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 2, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %if.end17, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8903_get_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
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
  %deemph = getelementptr inbounds %struct.wm8903_priv, ptr %5, i32 0, i32 8
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
define internal i32 @wm8903_put_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.wm8903_priv, ptr %7, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %deemph2 = getelementptr inbounds %struct.wm8903_priv, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %deemph2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %deemph2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp3.not = icmp eq i32 %9, %3
  br i1 %cmp3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %10 = ptrtoint ptr %deemph2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %deemph2, align 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.wm8903_priv, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %deemph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then4.do.body.i_crit_edge, label %for.cond.preheader.i

if.then4.do.body.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %fs.i = getelementptr inbounds %struct.wm8903_priv, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs.i, align 4
  %sub.i = sub i32 44100, %18
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #10
  %sub6.i = sub i32 32000, %18
  %20 = tail call i32 @llvm.abs.i32(i32 %sub6.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp14.i = icmp slt i32 %19, %20
  %best.1.i = select i1 %cmp14.i, i32 2, i32 1
  %sub.1.i = sub i32 48000, %18
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #10
  %arrayidx4.1.i = getelementptr [4 x i32], ptr @wm8903_deemph, i32 0, i32 %best.1.i
  %22 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx4.1.i, align 4
  %sub6.1.i = sub i32 %23, %18
  %24 = tail call i32 @llvm.abs.i32(i32 %sub6.1.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %24)
  %cmp14.1.i = icmp slt i32 %21, %24
  %best.1.1.i = select i1 %cmp14.1.i, i32 3, i32 %best.1.i
  %shl.i = shl nuw nsw i32 %best.1.1.i, 1
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.preheader.i, %if.then4.do.body.i_crit_edge
  %best.2.i = phi i32 [ %best.1.1.i, %for.cond.preheader.i ], [ 0, %if.then4.do.body.i_crit_edge ]
  %val.0.i = phi i32 [ %shl.i, %for.cond.preheader.i ], [ 0, %if.then4.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_set_deemph.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_put_deemph, %if.then22.i)) #10
          to label %wm8903_set_deemph.exit [label %if.then22.i], !srcloc !738

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %arrayidx23.i = getelementptr [4 x i32], ptr @wm8903_deemph, i32 0, i32 %best.2.i
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_set_deemph.__UNIQUE_ID_ddebug328, ptr noundef %26, ptr noundef nonnull @.str.190, i32 noundef %best.2.i, i32 noundef %28) #10
  br label %wm8903_set_deemph.exit

wm8903_set_deemph.exit:                           ; preds = %if.then22.i, %do.body.i
  %call25.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 33, i32 noundef 6, i32 noundef %val.0.i) #10
  br label %if.end7

if.end7:                                          ; preds = %wm8903_set_deemph.exit, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ 1, %wm8903_set_deemph.exit ], [ 0, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_dcs_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.331)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv
  %dcs_pending = getelementptr inbounds %struct.wm8903_priv, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dcs_pending, align 4
  %or = or i32 %shl, %10
  store i32 %or, ptr %dcs_pending, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift3, align 4
  %conv4 = zext i8 %12 to i32
  %shl5 = shl nuw i32 1, %conv4
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 67, i32 noundef %shl5, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_cp_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !740

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_class_w_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #10
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 -176
  %dev.i = getelementptr i8, ptr %call.i, i32 -164
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i.i, i32 noundef 104) #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  %class_w_users = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %class_w_users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %class_w_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_class_w_put.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_class_w_put, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !738

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_class_w_put.__UNIQUE_ID_ddebug325, ptr noundef %9, ptr noundef nonnull @.str.292) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %and = and i32 %call2, 65532
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i.i, i32 noundef 104, i32 noundef %and) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then.if.end12_crit_edge
  %10 = ptrtoint ptr %class_w_users to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %class_w_users, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %class_w_users, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %entry.if.end14_crit_edge
  %call15 = tail call i32 @snd_soc_dapm_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %if.then19, label %if.end14.do.body47_crit_edge

if.end14.do.body47_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

if.then19:                                        ; preds = %if.end14
  %class_w_users20 = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %class_w_users20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %class_w_users20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp21 = icmp eq i32 %15, 1
  br i1 %cmp21, label %do.body24, label %if.then19.if.end44_crit_edge

if.then19.if.end44_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.body24:                                        ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_class_w_put.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_class_w_put, %if.then36)) #10
          to label %do.end40 [label %if.then36], !srcloc !738

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_class_w_put.__UNIQUE_ID_ddebug326, ptr noundef %17, ptr noundef nonnull @.str.293) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body24
  %conv41 = and i32 %call2, 65532
  %or42 = or i32 %conv41, 3
  %call43 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i.i, i32 noundef 104, i32 noundef %or42) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %if.then19.if.end44_crit_edge
  %18 = ptrtoint ptr %class_w_users20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %class_w_users20, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %class_w_users20, align 4
  br label %do.body47

do.body47:                                        ; preds = %if.end44, %if.end14.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_class_w_put.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_class_w_put, %if.then59)) #10
          to label %do.end64 [label %if.then59], !srcloc !738

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %class_w_users61 = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %class_w_users61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %class_w_users61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_class_w_put.__UNIQUE_ID_ddebug327, ptr noundef %21, ptr noundef nonnull @.str.294, i32 noundef %23) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %do.body47
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8903_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #8 align 64 {
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
  %sysclk = getelementptr inbounds %struct.wm8903_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 25) #10
  %2 = trunc i32 %call to i16
  %conv3 = and i16 %2, -724
  %and4 = and i32 %fmt, 61440
  %3 = add nsw i32 %and4, -4096
  %4 = lshr exact i32 %3, 12
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
    i32 2, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = or i16 %conv3, 512
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = or i16 %conv3, 576
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = or i16 %conv3, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %aif1.0 = phi i16 [ %8, %sw.bb11 ], [ %7, %sw.bb7 ], [ %6, %sw.bb ], [ %conv3, %entry.sw.epilog_crit_edge ]
  %and15 = and i32 %fmt, 15
  %9 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %and15, label %sw.epilog.cleanup_crit_edge [
    i32 4, label %sw.epilog.sw.bb35_crit_edge
    i32 5, label %sw.bb20
    i32 1, label %sw.bb24
    i32 2, label %sw.bb28
    i32 3, label %sw.epilog.sw.bb43_crit_edge
  ]

sw.epilog.sw.bb43_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

sw.epilog.sw.bb35_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %10 = or i16 %aif1.0, 2
  br label %sw.bb43

sw.bb28:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %11 = or i16 %aif1.0, 1
  br label %sw.bb43

sw.bb35:                                          ; preds = %sw.bb20, %sw.epilog.sw.bb35_crit_edge
  %.sink = phi i16 [ 19, %sw.bb20 ], [ 3, %sw.epilog.sw.bb35_crit_edge ]
  %12 = or i16 %aif1.0, %.sink
  %and36 = and i32 %fmt, 3840
  %13 = zext i32 %and36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %and36, label %sw.bb35.cleanup_crit_edge [
    i32 0, label %sw.bb35.sw.epilog60_crit_edge
    i32 768, label %sw.bb37
  ]

sw.bb35.sw.epilog60_crit_edge:                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %14 = or i16 %12, 128
  br label %sw.epilog60

sw.bb43:                                          ; preds = %sw.bb28, %sw.bb24, %sw.epilog.sw.bb43_crit_edge
  %aif1.1.ph = phi i16 [ %10, %sw.bb24 ], [ %11, %sw.bb28 ], [ %aif1.0, %sw.epilog.sw.bb43_crit_edge ]
  %and44 = lshr i32 %fmt, 8
  %15 = and i32 %and44, 15
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %15, label %sw.bb43.cleanup_crit_edge [
    i32 0, label %sw.bb43.sw.epilog60_crit_edge
    i32 4, label %sw.bb45
    i32 3, label %sw.bb49
    i32 2, label %sw.bb53
  ]

sw.bb43.sw.epilog60_crit_edge:                    ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb45:                                          ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  %17 = or i16 %aif1.1.ph, 144
  br label %sw.epilog60

sw.bb49:                                          ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i16 %aif1.1.ph, 128
  br label %sw.epilog60

sw.bb53:                                          ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  %19 = or i16 %aif1.1.ph, 16
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.bb53, %sw.bb49, %sw.bb45, %sw.bb43.sw.epilog60_crit_edge, %sw.bb37, %sw.bb35.sw.epilog60_crit_edge
  %aif1.2 = phi i16 [ %19, %sw.bb53 ], [ %18, %sw.bb49 ], [ %17, %sw.bb45 ], [ %aif1.1.ph, %sw.bb43.sw.epilog60_crit_edge ], [ %14, %sw.bb37 ], [ %12, %sw.bb35.sw.epilog60_crit_edge ]
  %conv61 = zext i16 %aif1.2 to i32
  %call62 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 25, i32 noundef %conv61) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog60, %sw.bb43.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog60 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ], [ -22, %sw.bb43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv2 = and i32 %call, 65527
  %or = or i32 %conv2, 8
  %reg.0 = select i1 %tobool.not, i32 %conv2, i32 %or
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 33, i32 noundef %reg.0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8903_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 25) #10
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 26) #10
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 27) #10
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 20) #10
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 21) #10
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 33) #10
  %conv15 = and i32 %call12, 63487
  %or = or i32 %conv15, 2048
  %sub = sub i32 8000, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp19 = icmp slt i32 %sub, 0
  %sub.neg = add i32 %7, -8000
  %cond = select i1 %cmp19, i32 %sub.neg, i32 %sub
  %sub27 = sub i32 11025, %7
  %8 = tail call i32 @llvm.abs.i32(i32 %sub27, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cond)
  %cmp36.not = icmp sle i32 %8, %cond
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 %cond)
  %dsp_config.1 = zext i1 %cmp36.not to i32
  %sub27.1 = sub i32 12000, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %sub27.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %9)
  %cmp36.not.1 = icmp sgt i32 %10, %9
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %9)
  %dsp_config.1.1 = select i1 %cmp36.not.1, i32 %dsp_config.1, i32 2
  %sub27.2 = sub i32 16000, %7
  %12 = tail call i32 @llvm.abs.i32(i32 %sub27.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp36.not.2 = icmp sgt i32 %12, %11
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 %11)
  %dsp_config.1.2 = select i1 %cmp36.not.2, i32 %dsp_config.1.1, i32 3
  %sub27.3 = sub i32 22050, %7
  %14 = tail call i32 @llvm.abs.i32(i32 %sub27.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp36.not.3 = icmp sgt i32 %14, %13
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %13)
  %dsp_config.1.3 = select i1 %cmp36.not.3, i32 %dsp_config.1.2, i32 4
  %sub27.4 = sub i32 24000, %7
  %16 = tail call i32 @llvm.abs.i32(i32 %sub27.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp36.not.4 = icmp sgt i32 %16, %15
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %15)
  %dsp_config.1.4 = select i1 %cmp36.not.4, i32 %dsp_config.1.3, i32 5
  %sub27.5 = sub i32 32000, %7
  %18 = tail call i32 @llvm.abs.i32(i32 %sub27.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp36.not.5 = icmp sgt i32 %18, %17
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %17)
  %dsp_config.1.5 = select i1 %cmp36.not.5, i32 %dsp_config.1.4, i32 6
  %sub27.6 = sub i32 44100, %7
  %20 = tail call i32 @llvm.abs.i32(i32 %sub27.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %19)
  %cmp36.not.6 = icmp sgt i32 %20, %19
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 %19)
  %dsp_config.1.6 = select i1 %cmp36.not.6, i32 %dsp_config.1.5, i32 7
  %sub27.7 = sub i32 48000, %7
  %22 = tail call i32 @llvm.abs.i32(i32 %sub27.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %21)
  %cmp36.not.7 = icmp sgt i32 %22, %21
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 %21)
  %dsp_config.1.7 = select i1 %cmp36.not.7, i32 %dsp_config.1.6, i32 8
  %sub27.8 = sub i32 88200, %7
  %24 = tail call i32 @llvm.abs.i32(i32 %sub27.8, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %23)
  %cmp36.not.8 = icmp sgt i32 %24, %23
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %23)
  %dsp_config.1.8 = select i1 %cmp36.not.8, i32 %dsp_config.1.7, i32 9
  %sub27.9 = sub i32 96000, %7
  %26 = tail call i32 @llvm.abs.i32(i32 %sub27.9, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %25)
  %cmp36.not.9 = icmp sgt i32 %26, %25
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %25)
  %dsp_config.1.9 = select i1 %cmp36.not.9, i32 %dsp_config.1.8, i32 10
  %28 = tail call i32 @llvm.abs.i32(i32 %7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp36.not.10 = icmp sgt i32 %28, %27
  %dsp_config.1.10 = select i1 %cmp36.not.10, i32 %dsp_config.1.9, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24001, i32 %7)
  %cmp = icmp slt i32 %7, 24001
  %dac_digital1.0 = select i1 %cmp, i32 %or, i32 %conv15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_hw_params.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_hw_params, %if.then44)) #10
          to label %do.end [label %if.then44], !srcloc !738

if.then44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %arrayidx45 = getelementptr [12 x %struct.anon.109], ptr @sample_rates, i32 0, i32 %dsp_config.1.10
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_hw_params.__UNIQUE_ID_ddebug330, ptr noundef %30, ptr noundef nonnull @.str.318, i32 noundef %32) #10
  br label %do.end

do.end:                                           ; preds = %if.then44, %entry
  %conv50 = and i32 %call10, 49392
  %value = getelementptr [12 x %struct.anon.109], ptr @sample_rates, i32 0, i32 %dsp_config.1.10, i32 1
  %33 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value, align 4
  %35 = trunc i32 %call3 to i16
  %conv57 = and i16 %35, -13
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end.if.then.i.i.i_crit_edge

do.end.if.then.i.i.i_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %37, %do.end.if.then.i.i.i_crit_edge ], [ %40, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !746
  %add.i.i.i = or i32 %38, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i.i = icmp eq i32 %40, 0
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
  %41 = add i32 %call1.i, -16
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 30)
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %42, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb60
    i32 2, label %sw.bb65
    i32 4, label %sw.bb70
  ]

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mul59 = shl i32 %7, 5
  br label %do.body75

sw.bb60:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mul61 = mul i32 %7, 40
  %44 = or i16 %conv57, 4
  br label %do.body75

sw.bb65:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mul66 = mul i32 %7, 48
  %45 = or i16 %conv57, 8
  br label %do.body75

sw.bb70:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mul71 = shl i32 %7, 6
  %conv74 = or i16 %35, 12
  br label %do.body75

do.body75:                                        ; preds = %sw.bb70, %sw.bb65, %sw.bb60, %sw.bb
  %aif1.0 = phi i16 [ %conv74, %sw.bb70 ], [ %45, %sw.bb65 ], [ %44, %sw.bb60 ], [ %conv57, %sw.bb ]
  %bclk.0 = phi i32 [ %mul71, %sw.bb70 ], [ %mul66, %sw.bb65 ], [ %mul61, %sw.bb60 ], [ %mul59, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_hw_params.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_hw_params, %if.then87)) #10
          to label %do.end91 [label %if.then87], !srcloc !738

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %sysclk = getelementptr inbounds %struct.wm8903_priv, ptr %5, i32 0, i32 4
  %48 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sysclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_hw_params.__UNIQUE_ID_ddebug331, ptr noundef %47, ptr noundef nonnull @.str.319, i32 noundef %49, i32 noundef %7) #10
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body75
  %sysclk93 = getelementptr inbounds %struct.wm8903_priv, ptr %5, i32 0, i32 4
  %50 = ptrtoint ptr %sysclk93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sysclk93, align 4
  %div = sdiv i32 %51, 64
  %sub95 = sub i32 %div, %7
  %52 = tail call i32 @llvm.abs.i32(i32 %sub95, i1 false)
  br label %for.body107

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %do.end91
  %i.1396 = phi i32 [ 1, %do.end91 ], [ %inc129, %for.body107.for.body107_crit_edge ]
  %clk_config.0395 = phi i32 [ 0, %do.end91 ], [ %clk_config.1, %for.body107.for.body107_crit_edge ]
  %best_val.2394 = phi i32 [ %52, %do.end91 ], [ %58, %for.body107.for.body107_crit_edge ]
  %arrayidx110 = getelementptr [54 x %struct.anon.110], ptr @clk_sys_ratios, i32 0, i32 %i.1396
  %mclk_div = getelementptr [54 x %struct.anon.110], ptr @clk_sys_ratios, i32 0, i32 %i.1396, i32 3
  %53 = ptrtoint ptr %mclk_div to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mclk_div, align 4
  %55 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx110, align 4
  %mul113 = mul i32 %56, %54
  %div114 = sdiv i32 %51, %mul113
  %sub115 = sub i32 %div114, %7
  %57 = tail call i32 @llvm.abs.i32(i32 %sub115, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %best_val.2394)
  %cmp124.not = icmp sgt i32 %57, %best_val.2394
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %best_val.2394)
  %clk_config.1 = select i1 %cmp124.not, i32 %clk_config.0395, i32 %i.1396
  %inc129 = add nuw nsw i32 %i.1396, 1
  %exitcond.not = icmp eq i32 %inc129, 54
  br i1 %exitcond.not, label %for.end130, label %for.body107.for.body107_crit_edge

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body107

for.end130:                                       ; preds = %for.body107
  %mclk_div132 = getelementptr [54 x %struct.anon.110], ptr @clk_sys_ratios, i32 0, i32 %clk_config.1, i32 3
  %59 = ptrtoint ptr %mclk_div132 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mclk_div132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp133 = icmp eq i32 %60, 2
  %conv136 = and i32 %call8, 65534
  %div140 = sdiv i32 %51, 2
  %or137 = zext i1 %cmp133 to i32
  %clock0.0 = or i32 %conv136, %or137
  %clk_sys.0 = select i1 %cmp133, i32 %div140, i32 %51
  %.masked = and i32 %34, 49407
  %conv147 = or i32 %.masked, %conv50
  %rate151 = getelementptr [54 x %struct.anon.110], ptr @clk_sys_ratios, i32 0, i32 %clk_config.1, i32 1
  %61 = ptrtoint ptr %rate151 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rate151, align 4
  %shl = shl i32 %62, 10
  %mode = getelementptr [54 x %struct.anon.110], ptr @clk_sys_ratios, i32 0, i32 %clk_config.1, i32 2
  %63 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode, align 4
  %shl156 = shl i32 %64, 8
  %conv157 = or i32 %conv147, %shl
  %or158 = or i32 %conv157, %shl156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_hw_params.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_hw_params, %if.then172)) #10
          to label %do.body183 [label %if.then172], !srcloc !738

if.then172:                                       ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx131 = getelementptr [54 x %struct.anon.110], ptr @clk_sys_ratios, i32 0, i32 %clk_config.1
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %67 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx131, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_hw_params.__UNIQUE_ID_ddebug332, ptr noundef %66, ptr noundef nonnull @.str.320, i32 noundef %62, i32 noundef %64, i32 noundef %68) #10
  br label %do.body183

do.body183:                                       ; preds = %if.then172, %for.end130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_hw_params.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_hw_params, %if.then195)) #10
          to label %do.end199 [label %if.then195], !srcloc !738

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_hw_params.__UNIQUE_ID_ddebug333, ptr noundef %70, ptr noundef nonnull @.str.321, i32 noundef %clk_sys.0) #10
  br label %do.end199

do.end199:                                        ; preds = %if.then195, %do.body183
  %mul202 = mul i32 %clk_sys.0, 10
  %div204 = sdiv i32 %mul202, 20
  %sub205 = sub i32 %div204, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205)
  %cmp206 = icmp slt i32 %sub205, 0
  br i1 %cmp206, label %do.end199.while.end_crit_edge, label %while.cond

do.end199.while.end_crit_edge:                    ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond:                                       ; preds = %do.end199
  %div204.1 = sdiv i32 %mul202, 30
  %sub205.1 = sub i32 %div204.1, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.1)
  %cmp206.1 = icmp slt i32 %sub205.1, 0
  br i1 %cmp206.1, label %while.cond.while.end_crit_edge, label %while.cond.1

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.1:                                     ; preds = %while.cond
  %div204.2 = sdiv i32 %mul202, 40
  %sub205.2 = sub i32 %div204.2, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.2)
  %cmp206.2 = icmp slt i32 %sub205.2, 0
  br i1 %cmp206.2, label %while.cond.1.while.end_crit_edge, label %while.cond.2

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.2:                                     ; preds = %while.cond.1
  %div204.3 = sdiv i32 %mul202, 50
  %sub205.3 = sub i32 %div204.3, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.3)
  %cmp206.3 = icmp slt i32 %sub205.3, 0
  br i1 %cmp206.3, label %while.cond.2.while.end_crit_edge, label %while.cond.3

while.cond.2.while.end_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.3:                                     ; preds = %while.cond.2
  %div204.4 = sdiv i32 %mul202, 60
  %sub205.4 = sub i32 %div204.4, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.4)
  %cmp206.4 = icmp slt i32 %sub205.4, 0
  br i1 %cmp206.4, label %while.cond.3.while.end_crit_edge, label %while.cond.4

while.cond.3.while.end_crit_edge:                 ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.4:                                     ; preds = %while.cond.3
  %div204.5 = sdiv i32 %mul202, 80
  %sub205.5 = sub i32 %div204.5, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.5)
  %cmp206.5 = icmp slt i32 %sub205.5, 0
  br i1 %cmp206.5, label %while.cond.4.while.end_crit_edge, label %while.cond.5

while.cond.4.while.end_crit_edge:                 ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.5:                                     ; preds = %while.cond.4
  %div204.6 = sdiv i32 %mul202, 100
  %sub205.6 = sub i32 %div204.6, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.6)
  %cmp206.6 = icmp slt i32 %sub205.6, 0
  br i1 %cmp206.6, label %while.cond.5.while.end_crit_edge, label %while.cond.6

while.cond.5.while.end_crit_edge:                 ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.6:                                     ; preds = %while.cond.5
  %div204.7 = sdiv i32 %mul202, 120
  %sub205.7 = sub i32 %div204.7, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.7)
  %cmp206.7 = icmp slt i32 %sub205.7, 0
  br i1 %cmp206.7, label %while.cond.6.while.end_crit_edge, label %while.cond.7

while.cond.6.while.end_crit_edge:                 ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.7:                                     ; preds = %while.cond.6
  %div204.8 = sdiv i32 %mul202, 160
  %sub205.8 = sub i32 %div204.8, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.8)
  %cmp206.8 = icmp slt i32 %sub205.8, 0
  br i1 %cmp206.8, label %while.cond.7.while.end_crit_edge, label %while.cond.8

while.cond.7.while.end_crit_edge:                 ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.8:                                     ; preds = %while.cond.7
  %div204.9 = sdiv i32 %mul202, 200
  %sub205.9 = sub i32 %div204.9, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.9)
  %cmp206.9 = icmp slt i32 %sub205.9, 0
  br i1 %cmp206.9, label %while.cond.8.while.end_crit_edge, label %while.cond.9

while.cond.8.while.end_crit_edge:                 ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.9:                                     ; preds = %while.cond.8
  %div204.10 = sdiv i32 %mul202, 220
  %sub205.10 = sub i32 %div204.10, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.10)
  %cmp206.10 = icmp slt i32 %sub205.10, 0
  br i1 %cmp206.10, label %while.cond.9.while.end_crit_edge, label %while.cond.10

while.cond.9.while.end_crit_edge:                 ; preds = %while.cond.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.10:                                    ; preds = %while.cond.9
  %div204.11 = sdiv i32 %mul202, 240
  %sub205.11 = sub i32 %div204.11, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.11)
  %cmp206.11 = icmp slt i32 %sub205.11, 0
  br i1 %cmp206.11, label %while.cond.10.while.end_crit_edge, label %while.cond.11

while.cond.10.while.end_crit_edge:                ; preds = %while.cond.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.11:                                    ; preds = %while.cond.10
  %div204.12 = sdiv i32 %mul202, 300
  %sub205.12 = sub i32 %div204.12, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.12)
  %cmp206.12 = icmp slt i32 %sub205.12, 0
  br i1 %cmp206.12, label %while.cond.11.while.end_crit_edge, label %while.cond.12

while.cond.11.while.end_crit_edge:                ; preds = %while.cond.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.12:                                    ; preds = %while.cond.11
  %div204.13 = sdiv i32 %mul202, 320
  %sub205.13 = sub i32 %div204.13, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.13)
  %cmp206.13 = icmp slt i32 %sub205.13, 0
  br i1 %cmp206.13, label %while.cond.12.while.end_crit_edge, label %while.cond.13

while.cond.12.while.end_crit_edge:                ; preds = %while.cond.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.13:                                    ; preds = %while.cond.12
  %div204.14 = sdiv i32 %mul202, 440
  %sub205.14 = sub i32 %div204.14, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.14)
  %cmp206.14 = icmp slt i32 %sub205.14, 0
  br i1 %cmp206.14, label %while.cond.13.while.end_crit_edge, label %while.cond.14

while.cond.13.while.end_crit_edge:                ; preds = %while.cond.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.14:                                    ; preds = %while.cond.13
  call void @__sanitizer_cov_trace_pc() #12
  %div204.15 = sdiv i32 %mul202, 480
  %sub205.15 = sub i32 %div204.15, %bclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205.15)
  %cmp206.15 = icmp slt i32 %sub205.15, 0
  %spec.select = select i1 %cmp206.15, i32 15, i32 16
  br label %while.end

while.end:                                        ; preds = %while.cond.14, %while.cond.13.while.end_crit_edge, %while.cond.12.while.end_crit_edge, %while.cond.11.while.end_crit_edge, %while.cond.10.while.end_crit_edge, %while.cond.9.while.end_crit_edge, %while.cond.8.while.end_crit_edge, %while.cond.7.while.end_crit_edge, %while.cond.6.while.end_crit_edge, %while.cond.5.while.end_crit_edge, %while.cond.4.while.end_crit_edge, %while.cond.3.while.end_crit_edge, %while.cond.2.while.end_crit_edge, %while.cond.1.while.end_crit_edge, %while.cond.while.end_crit_edge, %do.end199.while.end_crit_edge
  %bclk_div.0.lcssa = phi i32 [ 0, %do.end199.while.end_crit_edge ], [ 1, %while.cond.while.end_crit_edge ], [ 2, %while.cond.1.while.end_crit_edge ], [ 3, %while.cond.2.while.end_crit_edge ], [ 4, %while.cond.3.while.end_crit_edge ], [ 5, %while.cond.4.while.end_crit_edge ], [ 6, %while.cond.5.while.end_crit_edge ], [ 7, %while.cond.6.while.end_crit_edge ], [ 8, %while.cond.7.while.end_crit_edge ], [ 9, %while.cond.8.while.end_crit_edge ], [ 10, %while.cond.9.while.end_crit_edge ], [ 11, %while.cond.10.while.end_crit_edge ], [ 12, %while.cond.11.while.end_crit_edge ], [ 13, %while.cond.12.while.end_crit_edge ], [ 14, %while.cond.13.while.end_crit_edge ], [ %spec.select, %while.cond.14 ]
  %conv213 = and i32 %call4, 65504
  %conv216 = and i32 %call6, 63488
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_hw_params.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_hw_params, %if.then229)) #10
          to label %do.end240 [label %if.then229], !srcloc !738

if.then229:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %arrayidx231 = getelementptr [17 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %bclk_div.0.lcssa
  %73 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx231, align 4
  %div233 = sdiv i32 %74, 10
  %div237 = sdiv i32 %mul202, %74
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_hw_params.__UNIQUE_ID_ddebug334, ptr noundef %72, ptr noundef nonnull @.str.322, i32 noundef %div233, i32 noundef %bclk.0, i32 noundef %div237) #10
  br label %do.end240

do.end240:                                        ; preds = %if.then229, %while.end
  %div242 = getelementptr [17 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %bclk_div.0.lcssa, i32 1
  %75 = ptrtoint ptr %div242 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %div242, align 4
  %div246 = sdiv i32 %bclk.0, %7
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i, align 4
  %fs251 = getelementptr inbounds %struct.wm8903_priv, ptr %5, i32 0, i32 7
  %79 = ptrtoint ptr %fs251 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %fs251, align 4
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.wm8903_priv, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %deemph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i, label %do.end240.do.body.i_crit_edge, label %for.cond.preheader.i

do.end240.do.body.i_crit_edge:                    ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #12
  %fs.i = getelementptr inbounds %struct.wm8903_priv, ptr %83, i32 0, i32 7
  %86 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fs.i, align 4
  %sub.i = sub i32 44100, %87
  %88 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #10
  %sub6.i = sub i32 32000, %87
  %89 = tail call i32 @llvm.abs.i32(i32 %sub6.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %89)
  %cmp14.i = icmp slt i32 %88, %89
  %best.1.i = select i1 %cmp14.i, i32 2, i32 1
  %sub.1.i = sub i32 48000, %87
  %90 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #10
  %arrayidx4.1.i = getelementptr [4 x i32], ptr @wm8903_deemph, i32 0, i32 %best.1.i
  %91 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx4.1.i, align 4
  %sub6.1.i = sub i32 %92, %87
  %93 = tail call i32 @llvm.abs.i32(i32 %sub6.1.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %93)
  %cmp14.1.i = icmp slt i32 %90, %93
  %best.1.1.i = select i1 %cmp14.1.i, i32 3, i32 %best.1.i
  %shl.i = shl nuw nsw i32 %best.1.1.i, 1
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.preheader.i, %do.end240.do.body.i_crit_edge
  %best.2.i = phi i32 [ %best.1.1.i, %for.cond.preheader.i ], [ 0, %do.end240.do.body.i_crit_edge ]
  %val.0.i = phi i32 [ %shl.i, %for.cond.preheader.i ], [ 0, %do.end240.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8903_set_deemph.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8903_hw_params, %if.then22.i)) #10
          to label %wm8903_set_deemph.exit [label %if.then22.i], !srcloc !738

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  %arrayidx23.i = getelementptr [4 x i32], ptr @wm8903_deemph, i32 0, i32 %best.2.i
  %96 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx23.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8903_set_deemph.__UNIQUE_ID_ddebug328, ptr noundef %95, ptr noundef nonnull @.str.190, i32 noundef %best.2.i, i32 noundef %97) #10
  br label %wm8903_set_deemph.exit

wm8903_set_deemph.exit:                           ; preds = %if.then22.i, %do.body.i
  %call25.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 33, i32 noundef 6, i32 noundef %val.0.i) #10
  %call254 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 20, i32 noundef %clock0.0) #10
  %conv255 = and i32 %or158, 65535
  %call256 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 21, i32 noundef %conv255) #10
  %conv257 = zext i16 %aif1.0 to i32
  %call258 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 25, i32 noundef %conv257) #10
  %.masked372 = and i32 %76, 65535
  %conv259 = or i32 %.masked372, %conv213
  %call260 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 26, i32 noundef %conv259) #10
  %div246.masked = and i32 %div246, 65535
  %conv261 = or i32 %div246.masked, %conv216
  %call262 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 27, i32 noundef %conv261) #10
  %call264 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 33, i32 noundef %dac_digital1.0) #10
  br label %cleanup

cleanup:                                          ; preds = %wm8903_set_deemph.exit, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wm8903_set_deemph.exit ], [ -22, %params_width.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 409)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 409)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !395, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !463, !465, !466, !468, !470, !472, !473, !475, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !657, !658, !660, !661, !663, !664, !666, !668, !670, !672, !674, !675, !676, !678, !679, !681, !682, !684, !685, !687, !688, !689, !691, !692, !694, !696, !698, !700, !702, !704, !705, !706, !708, !709, !711, !712, !714, !715, !717, !718, !720, !722, !724, !726}
!llvm.named.register.sp = !{!728}
!llvm.module.flags = !{!729, !730, !731, !732, !733, !734, !735, !736}
!llvm.ident = !{!737}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8903.c", i32 1607, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wm8903_mic_detect.__UNIQUE_ID_ddebug335, !1, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!6 = !{ptr @__ksymtab_wm8903_mic_detect, !7, !"__ksymtab_wm8903_mic_detect", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8903.c", i32 1639, i32 1}
!8 = !{ptr @__initcall__kmod_snd_soc_wm8903__338_2222_wm8903_i2c_driver_init6, !9, !"__initcall__kmod_snd_soc_wm8903__338_2222_wm8903_i2c_driver_init6", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wm8903.c", i32 2222, i32 1}
!10 = !{ptr @__exitcall_wm8903_i2c_driver_exit, !9, !"__exitcall_wm8903_i2c_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description339, !12, !"__UNIQUE_ID_description339", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/wm8903.c", i32 2224, i32 1}
!13 = !{ptr @__UNIQUE_ID_author340, !14, !"__UNIQUE_ID_author340", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/wm8903.c", i32 2225, i32 1}
!15 = !{ptr @__UNIQUE_ID_file341, !16, !"__UNIQUE_ID_file341", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/wm8903.c", i32 2226, i32 1}
!17 = !{ptr @__UNIQUE_ID_license342, !16, !"__UNIQUE_ID_license342", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wm8903.c", i32 2214, i32 11}
!20 = !{ptr @wm8903_i2c_driver, !21, !"wm8903_i2c_driver", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/wm8903.c", i32 2212, i32 26}
!22 = !{ptr @wm8903_i2c_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wm8903.c", i32 1998, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wm8903_i2c_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8903.c", i32 2001, i32 19}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm8903.c", i32 2004, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wm8903_i2c_probe._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm8903_i2c_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm8903.c", i32 2041, i32 3}
!37 = !{ptr @wm8903_i2c_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wm8903_i2c_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm8903.c", i32 2048, i32 3}
!41 = !{ptr @wm8903_i2c_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wm8903_i2c_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8903.c", i32 2054, i32 3}
!45 = !{ptr @wm8903_i2c_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @wm8903_i2c_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8903.c", i32 2058, i32 3}
!49 = !{ptr @wm8903_i2c_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wm8903_i2c_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm8903.c", i32 2065, i32 3}
!53 = !{ptr @wm8903_i2c_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @wm8903_i2c_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm8903.c", i32 2068, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wm8903_i2c_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @wm8903_i2c_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8903.c", i32 2133, i32 4}
!62 = !{ptr @wm8903_i2c_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @wm8903_i2c_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @wm8903_regmap, !65, !"wm8903_regmap", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8903.c", i32 1899, i32 35}
!66 = !{ptr @wm8903_reg_defaults, !67, !"wm8903_reg_defaults", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8903.c", i32 41, i32 33}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8903.c", i32 1917, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @wm8903_set_pdata_irq_trigger._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @wm8903_set_pdata_irq_trigger._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm8903.c", i32 1948, i32 31}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm8903.c", i32 1951, i32 31}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm8903.c", i32 1954, i32 37}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm8903.c", i32 1974, i32 5}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @wm8903_set_pdata_from_of._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @wm8903_set_pdata_from_of._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/wm8903.c", i32 118, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/wm8903.c", i32 119, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/wm8903.c", i32 120, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/wm8903.c", i32 121, i32 2}
!92 = distinct !{null, !93, !"wm8903_supply_names", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/wm8903.c", i32 117, i32 20}
!94 = !{ptr @wm8903_init_gpio.lock_key, !95, !"lock_key", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/wm8903.c", i32 1863, i32 8}
!96 = !{ptr @wm8903_init_gpio.request_key, !95, !"request_key", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8903.c", i32 1865, i32 3}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @wm8903_init_gpio._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @wm8903_init_gpio._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @wm8903_template_chip, !103, !"wm8903_template_chip", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/wm8903.c", i32 1838, i32 31}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wm8903.c", i32 1650, i32 3}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wm8903_irq._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @wm8903_irq._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8903.c", i32 1656, i32 3}
!111 = !{ptr @wm8903_irq._entry.48, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @wm8903_irq._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8903.c", i32 1663, i32 3}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wm8903_irq._entry.51, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @wm8903_irq._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8903.c", i32 1677, i32 3}
!120 = !{ptr @wm8903_irq._entry.55, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @wm8903_irq._entry_ptr.57, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8903.c", i32 1688, i32 3}
!124 = !{ptr @wm8903_irq.__UNIQUE_ID_ddebug336, !123, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm8903.c", i32 1695, i32 3}
!127 = !{ptr @wm8903_irq.__UNIQUE_ID_ddebug337, !126, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/trace/events/asoc.h", i32 211, i32 1}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!132 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @soc_component_dev_wm8903, !137, !"soc_component_dev_wm8903", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm8903.c", i32 1882, i32 46}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/wm8903.c", i32 650, i32 1}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8903.c", i32 652, i32 1}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/wm8903.c", i32 654, i32 1}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8903.c", i32 657, i32 1}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8903.c", i32 659, i32 1}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8903.c", i32 661, i32 1}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wm8903.c", i32 665, i32 1}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8903.c", i32 666, i32 1}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8903.c", i32 667, i32 1}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8903.c", i32 668, i32 1}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8903.c", i32 669, i32 1}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8903.c", i32 670, i32 1}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8903.c", i32 671, i32 1}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8903.c", i32 673, i32 1}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8903.c", i32 674, i32 1}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8903.c", i32 675, i32 1}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8903.c", i32 676, i32 1}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8903.c", i32 677, i32 1}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8903.c", i32 678, i32 1}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8903.c", i32 679, i32 1}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8903.c", i32 680, i32 1}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8903.c", i32 681, i32 1}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8903.c", i32 682, i32 1}
!184 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wm8903.c", i32 683, i32 1}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm8903.c", i32 684, i32 1}
!188 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/wm8903.c", i32 685, i32 1}
!190 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/wm8903.c", i32 686, i32 1}
!192 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wm8903.c", i32 688, i32 1}
!194 = !{ptr @.str.109, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/wm8903.c", i32 690, i32 1}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/wm8903.c", i32 691, i32 1}
!198 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/wm8903.c", i32 693, i32 1}
!200 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wm8903.c", i32 697, i32 1}
!202 = !{ptr @.str.115, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/wm8903.c", i32 698, i32 1}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm8903.c", i32 700, i32 1}
!206 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm8903.c", i32 701, i32 1}
!208 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wm8903.c", i32 702, i32 1}
!210 = !{ptr @.str.121, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/wm8903.c", i32 703, i32 1}
!212 = !{ptr @.str.122, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm8903.c", i32 704, i32 1}
!214 = !{ptr @.str.124, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/wm8903.c", i32 705, i32 1}
!216 = !{ptr @.str.126, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/wm8903.c", i32 707, i32 1}
!218 = !{ptr @.str.127, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wm8903.c", i32 711, i32 1}
!220 = !{ptr @.str.129, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wm8903.c", i32 714, i32 1}
!222 = !{ptr @.str.131, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/wm8903.c", i32 717, i32 1}
!224 = !{ptr @.str.133, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wm8903.c", i32 722, i32 1}
!226 = !{ptr @.str.135, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/wm8903.c", i32 725, i32 1}
!228 = !{ptr @.str.137, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/wm8903.c", i32 728, i32 1}
!230 = !{ptr @.str.139, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/wm8903.c", i32 733, i32 1}
!232 = !{ptr @.str.141, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/wm8903.c", i32 735, i32 1}
!234 = !{ptr @.str.143, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/wm8903.c", i32 737, i32 1}
!236 = !{ptr @wm8903_snd_controls, !237, !"wm8903_snd_controls", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/wm8903.c", i32 647, i32 38}
!238 = !{ptr @adc_osr, !239, !"adc_osr", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/wm8903.c", i32 505, i32 8}
!240 = !{ptr @.str.145, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/wm8903.c", i32 502, i32 2}
!242 = !{ptr @.str.146, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/wm8903.c", i32 502, i32 15}
!244 = !{ptr @osr_text, !245, !"osr_text", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/wm8903.c", i32 501, i32 20}
!246 = !{ptr @hpf_mode, !247, !"hpf_mode", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/wm8903.c", i32 498, i32 8}
!248 = !{ptr @.str.147, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/wm8903.c", i32 495, i32 2}
!250 = !{ptr @.str.148, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/wm8903.c", i32 495, i32 11}
!252 = !{ptr @.str.149, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/wm8903.c", i32 495, i32 22}
!254 = !{ptr @.str.150, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/wm8903.c", i32 495, i32 33}
!256 = !{ptr @hpf_mode_text, !257, !"hpf_mode_text", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/wm8903.c", i32 494, i32 20}
!258 = !{ptr @drc_slope_r0, !259, !"drc_slope_r0", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/wm8903.c", i32 515, i32 8}
!260 = !{ptr @.str.151, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8903.c", i32 512, i32 2}
!262 = !{ptr @.str.152, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8903.c", i32 512, i32 7}
!264 = !{ptr @.str.153, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/wm8903.c", i32 512, i32 14}
!266 = !{ptr @.str.154, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/wm8903.c", i32 512, i32 21}
!268 = !{ptr @.str.155, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/wm8903.c", i32 512, i32 28}
!270 = !{ptr @.str.156, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/wm8903.c", i32 512, i32 36}
!272 = !{ptr @drc_slope_text, !273, !"drc_slope_text", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/wm8903.c", i32 511, i32 20}
!274 = !{ptr @drc_slope_r1, !275, !"drc_slope_r1", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/wm8903.c", i32 518, i32 8}
!276 = !{ptr @drc_tlv_thresh, !277, !"drc_tlv_thresh", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/wm8903.c", i32 488, i32 14}
!278 = !{ptr @drc_tlv_amp, !279, !"drc_tlv_amp", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm8903.c", i32 489, i32 14}
!280 = !{ptr @drc_tlv_min, !281, !"drc_tlv_min", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/wm8903.c", i32 490, i32 14}
!282 = !{ptr @drc_tlv_max, !283, !"drc_tlv_max", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/wm8903.c", i32 491, i32 14}
!284 = !{ptr @drc_attack, !285, !"drc_attack", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/wm8903.c", i32 527, i32 8}
!286 = !{ptr @.str.157, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/wm8903.c", i32 522, i32 2}
!288 = !{ptr @.str.158, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/wm8903.c", i32 523, i32 2}
!290 = !{ptr @.str.159, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm8903.c", i32 523, i32 11}
!292 = !{ptr @.str.160, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/wm8903.c", i32 523, i32 20}
!294 = !{ptr @.str.161, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/wm8903.c", i32 523, i32 30}
!296 = !{ptr @.str.162, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/wm8903.c", i32 523, i32 39}
!298 = !{ptr @.str.163, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/wm8903.c", i32 523, i32 48}
!300 = !{ptr @.str.164, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm8903.c", i32 523, i32 58}
!302 = !{ptr @.str.165, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/wm8903.c", i32 524, i32 2}
!304 = !{ptr @.str.166, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/wm8903.c", i32 524, i32 12}
!306 = !{ptr @.str.167, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8903.c", i32 524, i32 22}
!308 = !{ptr @drc_attack_text, !309, !"drc_attack_text", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/wm8903.c", i32 521, i32 20}
!310 = !{ptr @drc_decay, !311, !"drc_decay", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/wm8903.c", i32 535, i32 8}
!312 = !{ptr @.str.168, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/wm8903.c", i32 531, i32 2}
!314 = !{ptr @.str.169, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/wm8903.c", i32 531, i32 11}
!316 = !{ptr @.str.170, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/wm8903.c", i32 531, i32 20}
!318 = !{ptr @.str.171, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/wm8903.c", i32 531, i32 29}
!320 = !{ptr @.str.172, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/wm8903.c", i32 531, i32 38}
!322 = !{ptr @.str.173, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/wm8903.c", i32 531, i32 47}
!324 = !{ptr @.str.174, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/wm8903.c", i32 531, i32 56}
!326 = !{ptr @.str.175, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/wm8903.c", i32 532, i32 2}
!328 = !{ptr @.str.176, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/wm8903.c", i32 532, i32 12}
!330 = !{ptr @drc_decay_text, !331, !"drc_decay_text", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/wm8903.c", i32 530, i32 20}
!332 = !{ptr @drc_ff_delay, !333, !"drc_ff_delay", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/wm8903.c", i32 542, i32 8}
!334 = !{ptr @.str.177, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/wm8903.c", i32 539, i32 2}
!336 = !{ptr @.str.178, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/wm8903.c", i32 539, i32 15}
!338 = !{ptr @drc_ff_delay_text, !339, !"drc_ff_delay_text", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/wm8903.c", i32 538, i32 20}
!340 = !{ptr @drc_qr_decay, !341, !"drc_qr_decay", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/wm8903.c", i32 549, i32 8}
!342 = !{ptr @.str.179, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/wm8903.c", i32 546, i32 2}
!344 = !{ptr @drc_qr_decay_text, !345, !"drc_qr_decay_text", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/wm8903.c", i32 545, i32 20}
!346 = !{ptr @drc_smoothing, !347, !"drc_smoothing", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/wm8903.c", i32 556, i32 8}
!348 = !{ptr @.str.180, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/wm8903.c", i32 553, i32 2}
!350 = !{ptr @.str.181, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/wm8903.c", i32 553, i32 9}
!352 = !{ptr @.str.182, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/wm8903.c", i32 553, i32 19}
!354 = !{ptr @drc_smoothing_text, !355, !"drc_smoothing_text", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/wm8903.c", i32 552, i32 20}
!356 = !{ptr @drc_tlv_startup, !357, !"drc_tlv_startup", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/wm8903.c", i32 492, i32 14}
!358 = !{ptr @digital_tlv, !359, !"digital_tlv", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/wm8903.c", i32 481, i32 14}
!360 = !{ptr @adc_companding, !361, !"adc_companding", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/wm8903.c", i32 580, i32 8}
!362 = !{ptr @.str.183, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/wm8903.c", i32 574, i32 2}
!364 = !{ptr @.str.184, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/wm8903.c", i32 574, i32 10}
!366 = !{ptr @companding_text, !367, !"companding_text", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/wm8903.c", i32 573, i32 20}
!368 = !{ptr @digital_sidetone_tlv, !369, !"digital_sidetone_tlv", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/wm8903.c", i32 485, i32 14}
!370 = !{ptr @dac_osr, !371, !"dac_osr", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/wm8903.c", i32 508, i32 8}
!372 = !{ptr @soft_mute, !373, !"soft_mute", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/wm8903.c", i32 563, i32 8}
!374 = !{ptr @.str.185, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/wm8903.c", i32 560, i32 2}
!376 = !{ptr @.str.186, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/wm8903.c", i32 560, i32 17}
!378 = !{ptr @soft_mute_text, !379, !"soft_mute_text", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/wm8903.c", i32 559, i32 20}
!380 = !{ptr @mute_mode, !381, !"mute_mode", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/wm8903.c", i32 570, i32 8}
!382 = !{ptr @.str.187, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/wm8903.c", i32 567, i32 2}
!384 = !{ptr @.str.188, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/wm8903.c", i32 567, i32 10}
!386 = !{ptr @mute_mode_text, !387, !"mute_mode_text", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/wm8903.c", i32 566, i32 20}
!388 = !{ptr @dac_companding, !389, !"dac_companding", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/wm8903.c", i32 577, i32 8}
!390 = !{ptr @dac_boost_tlv, !391, !"dac_boost_tlv", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/wm8903.c", i32 483, i32 14}
!392 = !{ptr @.str.189, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/wm8903.c", i32 438, i32 2}
!394 = !{ptr @.str.190, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @wm8903_set_deemph.__UNIQUE_ID_ddebug328, !393, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!396 = !{ptr @wm8903_deemph, !397, !"wm8903_deemph", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/wm8903.c", i32 414, i32 12}
!398 = !{ptr @out_tlv, !399, !"out_tlv", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/wm8903.c", i32 486, i32 14}
!400 = !{ptr @.str.191, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/wm8903.c", i32 813, i32 1}
!402 = !{ptr @.str.192, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/wm8903.c", i32 814, i32 1}
!404 = !{ptr @.str.193, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/wm8903.c", i32 815, i32 1}
!406 = !{ptr @.str.194, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/wm8903.c", i32 816, i32 1}
!408 = !{ptr @.str.195, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/wm8903.c", i32 817, i32 1}
!410 = !{ptr @.str.196, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/wm8903.c", i32 818, i32 1}
!412 = !{ptr @.str.197, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/wm8903.c", i32 819, i32 1}
!414 = !{ptr @.str.198, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/wm8903.c", i32 821, i32 1}
!416 = !{ptr @.str.199, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/wm8903.c", i32 822, i32 1}
!418 = !{ptr @.str.200, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/wm8903.c", i32 823, i32 1}
!420 = !{ptr @.str.201, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/wm8903.c", i32 824, i32 1}
!422 = !{ptr @.str.202, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/wm8903.c", i32 825, i32 1}
!424 = !{ptr @.str.203, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/wm8903.c", i32 826, i32 1}
!426 = !{ptr @.str.204, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/wm8903.c", i32 827, i32 1}
!428 = !{ptr @.str.205, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/wm8903.c", i32 828, i32 1}
!430 = !{ptr @.str.206, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/wm8903.c", i32 830, i32 1}
!432 = !{ptr @.str.207, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/wm8903.c", i32 832, i32 1}
!434 = !{ptr @.str.208, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/wm8903.c", i32 833, i32 1}
!436 = !{ptr @.str.209, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/wm8903.c", i32 835, i32 1}
!438 = !{ptr @.str.210, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/wm8903.c", i32 837, i32 1}
!440 = !{ptr @.str.211, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/wm8903.c", i32 838, i32 1}
!442 = !{ptr @.str.212, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/wm8903.c", i32 840, i32 1}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/wm8903.c", i32 842, i32 1}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/wm8903.c", i32 843, i32 1}
!448 = !{ptr @.str.215, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/wm8903.c", i32 845, i32 1}
!450 = !{ptr @.str.216, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/wm8903.c", i32 846, i32 1}
!452 = !{ptr @.str.217, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/wm8903.c", i32 848, i32 1}
!454 = !{ptr @.str.218, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/wm8903.c", i32 849, i32 1}
!456 = !{ptr @.str.219, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/wm8903.c", i32 851, i32 1}
!458 = !{ptr @.str.220, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/wm8903.c", i32 852, i32 1}
!460 = !{ptr @.str.221, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/wm8903.c", i32 854, i32 1}
!462 = !{ptr @.str.222, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.223, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/wm8903.c", i32 855, i32 1}
!465 = !{ptr @.str.224, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.225, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/wm8903.c", i32 857, i32 1}
!468 = !{ptr @.str.226, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/wm8903.c", i32 858, i32 1}
!470 = !{ptr @.str.227, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/wm8903.c", i32 860, i32 1}
!472 = !{ptr @.str.228, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.229, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/wm8903.c", i32 861, i32 1}
!475 = !{ptr @.str.230, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.231, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/wm8903.c", i32 863, i32 1}
!478 = !{ptr @.str.232, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/wm8903.c", i32 864, i32 1}
!480 = !{ptr @.str.233, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/wm8903.c", i32 866, i32 1}
!482 = !{ptr @.str.234, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/wm8903.c", i32 867, i32 1}
!484 = !{ptr @.str.235, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/wm8903.c", i32 869, i32 1}
!486 = !{ptr @.str.236, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/wm8903.c", i32 871, i32 1}
!488 = !{ptr @.str.237, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/wm8903.c", i32 874, i32 1}
!490 = !{ptr @.str.238, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/wm8903.c", i32 876, i32 1}
!492 = !{ptr @.str.239, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/wm8903.c", i32 879, i32 1}
!494 = !{ptr @.str.240, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/wm8903.c", i32 881, i32 1}
!496 = !{ptr @.str.241, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/wm8903.c", i32 884, i32 1}
!498 = !{ptr @.str.242, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/wm8903.c", i32 886, i32 1}
!500 = !{ptr @.str.243, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/wm8903.c", i32 889, i32 1}
!502 = !{ptr @.str.244, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/wm8903.c", i32 890, i32 1}
!504 = !{ptr @.str.245, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/wm8903.c", i32 891, i32 1}
!506 = !{ptr @.str.246, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/wm8903.c", i32 892, i32 1}
!508 = !{ptr @.str.247, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/wm8903.c", i32 893, i32 1}
!510 = !{ptr @.str.248, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/wm8903.c", i32 894, i32 1}
!512 = !{ptr @.str.249, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/wm8903.c", i32 895, i32 1}
!514 = !{ptr @.str.250, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/wm8903.c", i32 896, i32 1}
!516 = !{ptr @.str.251, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/wm8903.c", i32 898, i32 1}
!518 = !{ptr @.str.252, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/wm8903.c", i32 900, i32 1}
!520 = !{ptr @.str.253, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/wm8903.c", i32 902, i32 1}
!522 = !{ptr @.str.254, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/wm8903.c", i32 904, i32 1}
!524 = !{ptr @.str.255, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/wm8903.c", i32 906, i32 1}
!526 = !{ptr @.str.256, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/wm8903.c", i32 908, i32 1}
!528 = !{ptr @.str.257, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/wm8903.c", i32 910, i32 1}
!530 = !{ptr @.str.258, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/wm8903.c", i32 912, i32 1}
!532 = !{ptr @.str.259, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/wm8903.c", i32 915, i32 1}
!534 = !{ptr @.str.260, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/wm8903.c", i32 916, i32 1}
!536 = !{ptr @.str.261, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/wm8903.c", i32 918, i32 1}
!538 = !{ptr @.str.262, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/wm8903.c", i32 920, i32 1}
!540 = !{ptr @.str.263, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/wm8903.c", i32 922, i32 1}
!542 = !{ptr @.str.264, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/wm8903.c", i32 925, i32 1}
!544 = !{ptr @.str.265, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/wm8903.c", i32 927, i32 1}
!546 = !{ptr @.str.266, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../sound/soc/codecs/wm8903.c", i32 930, i32 1}
!548 = !{ptr @.str.267, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/wm8903.c", i32 932, i32 1}
!550 = !{ptr @.str.268, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../sound/soc/codecs/wm8903.c", i32 933, i32 1}
!552 = !{ptr @wm8903_dapm_widgets, !553, !"wm8903_dapm_widgets", i1 false, i1 false}
!553 = !{!"../sound/soc/codecs/wm8903.c", i32 812, i32 41}
!554 = !{ptr @linput_mux, !555, !"linput_mux", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/wm8903.c", i32 748, i32 38}
!556 = !{ptr @linput_enum, !557, !"linput_enum", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/wm8903.c", i32 597, i32 8}
!558 = !{ptr @linput_mux_text, !559, !"linput_mux_text", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/wm8903.c", i32 593, i32 20}
!560 = !{ptr @.str.270, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/wm8903.c", i32 752, i32 2}
!562 = !{ptr @linput_inv_mux, !563, !"linput_inv_mux", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/wm8903.c", i32 751, i32 38}
!564 = !{ptr @linput_inv_enum, !565, !"linput_inv_enum", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/wm8903.c", i32 600, i32 8}
!566 = !{ptr @linput_mode_mux, !567, !"linput_mode_mux", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/wm8903.c", i32 742, i32 38}
!568 = !{ptr @linput_mode_enum, !569, !"linput_mode_enum", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/wm8903.c", i32 587, i32 8}
!570 = !{ptr @.str.271, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/wm8903.c", i32 584, i32 2}
!572 = !{ptr @.str.272, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/wm8903.c", i32 584, i32 18}
!574 = !{ptr @.str.273, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/wm8903.c", i32 584, i32 39}
!576 = !{ptr @input_mode_text, !577, !"input_mode_text", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/wm8903.c", i32 583, i32 20}
!578 = !{ptr @rinput_mux, !579, !"rinput_mux", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/wm8903.c", i32 754, i32 38}
!580 = !{ptr @rinput_enum, !581, !"rinput_enum", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/wm8903.c", i32 607, i32 8}
!582 = !{ptr @rinput_mux_text, !583, !"rinput_mux_text", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/wm8903.c", i32 603, i32 20}
!584 = !{ptr @.str.274, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/wm8903.c", i32 758, i32 2}
!586 = !{ptr @rinput_inv_mux, !587, !"rinput_inv_mux", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/wm8903.c", i32 757, i32 38}
!588 = !{ptr @rinput_inv_enum, !589, !"rinput_inv_enum", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/wm8903.c", i32 610, i32 8}
!590 = !{ptr @rinput_mode_mux, !591, !"rinput_mode_mux", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/wm8903.c", i32 745, i32 38}
!592 = !{ptr @rinput_mode_enum, !593, !"rinput_mode_enum", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/wm8903.c", i32 590, i32 8}
!594 = !{ptr @.str.275, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/wm8903.c", i32 767, i32 2}
!596 = !{ptr @adcinput_mux, !597, !"adcinput_mux", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/wm8903.c", i32 766, i32 38}
!598 = !{ptr @adcinput_enum, !599, !"adcinput_enum", i1 false, i1 false}
!599 = !{!"../sound/soc/codecs/wm8903.c", i32 628, i32 8}
!600 = !{ptr @.str.276, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../sound/soc/codecs/wm8903.c", i32 625, i32 2}
!602 = !{ptr @.str.277, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/soc/codecs/wm8903.c", i32 625, i32 9}
!604 = !{ptr @adcinput_text, !605, !"adcinput_text", i1 false, i1 false}
!605 = !{!"../sound/soc/codecs/wm8903.c", i32 624, i32 20}
!606 = !{ptr @lcapture_mux, !607, !"lcapture_mux", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/wm8903.c", i32 769, i32 38}
!608 = !{ptr @lcapture_enum, !609, !"lcapture_enum", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/wm8903.c", i32 635, i32 8}
!610 = !{ptr @.str.278, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/wm8903.c", i32 632, i32 2}
!612 = !{ptr @.str.279, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/soc/codecs/wm8903.c", i32 632, i32 10}
!614 = !{ptr @aif_text, !615, !"aif_text", i1 false, i1 false}
!615 = !{!"../sound/soc/codecs/wm8903.c", i32 631, i32 20}
!616 = !{ptr @rcapture_mux, !617, !"rcapture_mux", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/wm8903.c", i32 772, i32 38}
!618 = !{ptr @rcapture_enum, !619, !"rcapture_enum", i1 false, i1 false}
!619 = !{!"../sound/soc/codecs/wm8903.c", i32 638, i32 8}
!620 = !{ptr @.str.280, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/wm8903.c", i32 761, i32 2}
!622 = !{ptr @lsidetone_mux, !623, !"lsidetone_mux", i1 false, i1 false}
!623 = !{!"../sound/soc/codecs/wm8903.c", i32 760, i32 38}
!624 = !{ptr @lsidetone_enum, !625, !"lsidetone_enum", i1 false, i1 false}
!625 = !{!"../sound/soc/codecs/wm8903.c", i32 618, i32 8}
!626 = !{ptr @.str.281, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../sound/soc/codecs/wm8903.c", i32 615, i32 2}
!628 = !{ptr @sidetone_text, !629, !"sidetone_text", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/wm8903.c", i32 614, i32 20}
!630 = !{ptr @.str.282, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/wm8903.c", i32 764, i32 2}
!632 = !{ptr @rsidetone_mux, !633, !"rsidetone_mux", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/wm8903.c", i32 763, i32 38}
!634 = !{ptr @rsidetone_enum, !635, !"rsidetone_enum", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/wm8903.c", i32 621, i32 8}
!636 = !{ptr @lplay_mux, !637, !"lplay_mux", i1 false, i1 false}
!637 = !{!"../sound/soc/codecs/wm8903.c", i32 775, i32 38}
!638 = !{ptr @lplay_enum, !639, !"lplay_enum", i1 false, i1 false}
!639 = !{!"../sound/soc/codecs/wm8903.c", i32 641, i32 8}
!640 = !{ptr @rplay_mux, !641, !"rplay_mux", i1 false, i1 false}
!641 = !{!"../sound/soc/codecs/wm8903.c", i32 778, i32 38}
!642 = !{ptr @rplay_enum, !643, !"rplay_enum", i1 false, i1 false}
!643 = !{!"../sound/soc/codecs/wm8903.c", i32 644, i32 8}
!644 = !{ptr @.str.283, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../sound/soc/codecs/wm8903.c", i32 782, i32 1}
!646 = !{ptr @.str.285, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../sound/soc/codecs/wm8903.c", i32 783, i32 1}
!648 = !{ptr @.str.287, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/soc/codecs/wm8903.c", i32 784, i32 1}
!650 = !{ptr @.str.289, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../sound/soc/codecs/wm8903.c", i32 785, i32 1}
!652 = !{ptr @left_output_mixer, !653, !"left_output_mixer", i1 false, i1 false}
!653 = !{!"../sound/soc/codecs/wm8903.c", i32 781, i32 38}
!654 = !{ptr @.str.291, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../sound/soc/codecs/wm8903.c", i32 383, i32 4}
!656 = !{ptr @.str.292, !655, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @wm8903_class_w_put.__UNIQUE_ID_ddebug325, !655, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!658 = !{ptr @.str.293, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../sound/soc/codecs/wm8903.c", i32 396, i32 4}
!660 = !{ptr @wm8903_class_w_put.__UNIQUE_ID_ddebug326, !659, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!661 = !{ptr @.str.294, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../sound/soc/codecs/wm8903.c", i32 403, i32 2}
!663 = !{ptr @wm8903_class_w_put.__UNIQUE_ID_ddebug327, !662, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!664 = !{ptr @right_output_mixer, !665, !"right_output_mixer", i1 false, i1 false}
!665 = !{!"../sound/soc/codecs/wm8903.c", i32 788, i32 38}
!666 = !{ptr @left_speaker_mixer, !667, !"left_speaker_mixer", i1 false, i1 false}
!667 = !{!"../sound/soc/codecs/wm8903.c", i32 795, i32 38}
!668 = !{ptr @right_speaker_mixer, !669, !"right_speaker_mixer", i1 false, i1 false}
!669 = !{!"../sound/soc/codecs/wm8903.c", i32 803, i32 38}
!670 = !{ptr @wm8903_intercon, !671, !"wm8903_intercon", i1 false, i1 false}
!671 = !{!"../sound/soc/codecs/wm8903.c", i32 936, i32 40}
!672 = !{ptr @.str.307, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../sound/soc/codecs/wm8903.c", i32 298, i32 3}
!674 = !{ptr @.str.308, !673, !"<string literal>", i1 false, i1 false}
!675 = !{ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug321, !673, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!676 = !{ptr @.str.309, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/soc/codecs/wm8903.c", i32 307, i32 5}
!678 = !{ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug322, !677, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!679 = !{ptr @.str.310, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../sound/soc/codecs/wm8903.c", i32 314, i32 5}
!681 = !{ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug323, !680, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!682 = !{ptr @.str.311, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../sound/soc/codecs/wm8903.c", i32 347, i32 5}
!684 = !{ptr @wm8903_seq_notifier.__UNIQUE_ID_ddebug324, !683, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!685 = !{ptr @.str.312, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../sound/soc/codecs/wm8903.c", i32 354, i32 4}
!687 = !{ptr @wm8903_seq_notifier._entry, !686, !"_entry", i1 false, i1 false}
!688 = !{ptr @wm8903_seq_notifier._entry_ptr, !686, !"_entry_ptr", i1 false, i1 false}
!689 = !{ptr @.str.313, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../sound/soc/codecs/wm8903.c", i32 1172, i32 4}
!691 = !{ptr @wm8903_set_bias_level.__UNIQUE_ID_ddebug329, !690, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!692 = !{ptr @.str.314, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../sound/soc/codecs/wm8903.c", i32 1745, i32 10}
!694 = !{ptr @.str.315, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../sound/soc/codecs/wm8903.c", i32 1754, i32 19}
!696 = !{ptr @.str.316, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../sound/soc/codecs/wm8903.c", i32 1747, i32 18}
!698 = !{ptr @wm8903_dai, !699, !"wm8903_dai", i1 false, i1 false}
!699 = !{!"../sound/soc/codecs/wm8903.c", i32 1744, i32 34}
!700 = !{ptr @wm8903_dai_ops, !701, !"wm8903_dai_ops", i1 false, i1 false}
!701 = !{!"../sound/soc/codecs/wm8903.c", i32 1736, i32 37}
!702 = !{ptr @.str.317, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../sound/soc/codecs/wm8903.c", i32 1478, i32 2}
!704 = !{ptr @.str.318, !703, !"<string literal>", i1 false, i1 false}
!705 = !{ptr @wm8903_hw_params.__UNIQUE_ID_ddebug330, !703, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!706 = !{ptr @.str.319, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../sound/soc/codecs/wm8903.c", i32 1504, i32 2}
!708 = !{ptr @wm8903_hw_params.__UNIQUE_ID_ddebug331, !707, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!709 = !{ptr @.str.320, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../sound/soc/codecs/wm8903.c", i32 1539, i32 2}
!711 = !{ptr @wm8903_hw_params.__UNIQUE_ID_ddebug332, !710, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!712 = !{ptr @.str.321, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../sound/soc/codecs/wm8903.c", i32 1544, i32 2}
!714 = !{ptr @wm8903_hw_params.__UNIQUE_ID_ddebug333, !713, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!715 = !{ptr @.str.322, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../sound/soc/codecs/wm8903.c", i32 1564, i32 2}
!717 = !{ptr @wm8903_hw_params.__UNIQUE_ID_ddebug334, !716, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!718 = !{ptr @sample_rates, !719, !"sample_rates", i1 false, i1 false}
!719 = !{!"../sound/soc/codecs/wm8903.c", i32 1423, i32 3}
!720 = !{ptr @clk_sys_ratios, !721, !"clk_sys_ratios", i1 false, i1 false}
!721 = !{!"../sound/soc/codecs/wm8903.c", i32 1335, i32 3}
!722 = !{ptr @bclk_divs, !723, !"bclk_divs", i1 false, i1 false}
!723 = !{!"../sound/soc/codecs/wm8903.c", i32 1399, i32 3}
!724 = !{ptr @wm8903_of_match, !725, !"wm8903_of_match", i1 false, i1 false}
!725 = !{!"../sound/soc/codecs/wm8903.c", i32 2200, i32 34}
!726 = !{ptr @wm8903_i2c_id, !727, !"wm8903_i2c_id", i1 false, i1 false}
!727 = !{!"../sound/soc/codecs/wm8903.c", i32 2206, i32 35}
!728 = !{!"sp"}
!729 = !{i32 1, !"wchar_size", i32 2}
!730 = !{i32 1, !"min_enum_size", i32 4}
!731 = !{i32 8, !"branch-target-enforcement", i32 0}
!732 = !{i32 8, !"sign-return-address", i32 0}
!733 = !{i32 8, !"sign-return-address-all", i32 0}
!734 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!735 = !{i32 7, !"uwtable", i32 1}
!736 = !{i32 7, !"frame-pointer", i32 2}
!737 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!738 = !{i64 2149018159, i64 2149018164, i64 2149018177, i64 2149018221, i64 2149018255, i64 2149018276}
!739 = !{!"auto-init"}
!740 = !{!"branch_weights", i32 2000, i32 1}
!741 = !{i8 0, i8 2}
!742 = !{i64 2156533157}
!743 = !{i64 2156533360}
!744 = !{i64 2149429500}
!745 = !{i64 2149430536}
!746 = !{i32 0, i32 33}
