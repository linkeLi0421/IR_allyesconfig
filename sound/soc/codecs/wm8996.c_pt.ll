; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8996.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8996.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8996_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8996_detect\09\09\09\09"
module asm "\09.long\09__crc_wm8996_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8996_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8996_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8996_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_bytes = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.anon.109 = type { i32, i32, i16, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.wm8996_priv = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.completion, i16, %struct.completion, i16, i16, [3 x %struct.regulator_bulk_data], [3 x %struct.notifier_block], i32, %struct.wm8996_pdata, [2 x i32], [2 x i32], i32, ptr, [2 x i32], %struct.soc_enum, ptr, i8, i8, i32, ptr, %struct.gpio_chip }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wm8996_pdata = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct._fll_div = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.wm8996_retune_mobile_config = type { ptr, i32, [20 x i16] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSCLK\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_wm8996_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8996_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8996_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8996_detect to i32), ptr @__kstrtab_wm8996_detect, ptr @__kstrtabns_wm8996_detect }, section "___ksymtab_gpl+wm8996_detect", align 4
@__initcall__kmod_snd_soc_wm8996__345_3099_wm8996_i2c_driver_init6 = internal global ptr @wm8996_i2c_driver_init, section ".initcall6.init", align 4
@wm8996_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8996_i2c_probe, ptr @wm8996_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8996_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8996_i2c_driver_exit = internal global ptr @wm8996_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description346 = internal constant [46 x i8] c"snd_soc_wm8996.description=ASoC WM8996 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [71 x i8] c"snd_soc_wm8996.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file348 = internal constant [52 x i8] c"snd_soc_wm8996.file=sound/soc/codecs/snd-soc-wm8996\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [27 x i8] c"snd_soc_wm8996.license=GPL\00", section ".modinfo", align 1
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8996\00", [25 x i8] zeroinitializer }, align 32
@wm8996_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM8996 ENA\00", [21 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2782, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request GPIO %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8996_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8996.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr = internal global ptr @wm8996_i2c_probe._entry, section ".printk_index", align 4
@wm8996_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 2793, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.11 = internal global ptr @wm8996_i2c_probe._entry.9, section ".printk_index", align 4
@wm8996_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 2809, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register regulator notifier: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.14 = internal global ptr @wm8996_i2c_probe._entry.12, section ".printk_index", align 4
@wm8996_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 2816, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.17 = internal global ptr @wm8996_i2c_probe._entry.15, section ".printk_index", align 4
@wm8996_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8996_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm8996_readable_register, ptr @wm8996_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8996_reg, i32 178, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8996:2825:(&wm8996_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 2828, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.21 = internal global ptr @wm8996_i2c_probe._entry.19, section ".printk_index", align 4
@wm8996_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 2834, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read ID register: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.24 = internal global ptr @wm8996_i2c_probe._entry.22, section ".printk_index", align 4
@wm8996_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 2838, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Device is not a WM8996, ID %x\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.27 = internal global ptr @wm8996_i2c_probe._entry.25, section ".printk_index", align 4
@wm8996_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 2846, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read device revision: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.30 = internal global ptr @wm8996_i2c_probe._entry.28, section ".printk_index", align 4
@wm8996_i2c_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.6, i32 2851, ptr @.str.33, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision %c\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.34 = internal global ptr @wm8996_i2c_probe._entry.31, section ".printk_index", align 4
@wm8996_i2c_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.5, ptr @.str.6, i32 2860, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to issue reset: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.37 = internal global ptr @wm8996_i2c_probe._entry.35, section ".printk_index", align 4
@wm8996_i2c_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.5, ptr @.str.6, i32 3026, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read GPIO1: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.40 = internal global ptr @wm8996_i2c_probe._entry.38, section ".printk_index", align 4
@wm8996_i2c_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str.6, i32 3037, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read GPIO2: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8996_i2c_probe._entry_ptr.43 = internal global ptr @wm8996_i2c_probe._entry.41, section ".printk_index", align 4
@soc_component_dev_wm8996 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8996_snd_controls, i32 54, ptr @wm8996_dapm_widgets, i32 102, ptr @wm8996_dapm_routes, i32 177, ptr @wm8996_probe, ptr @wm8996_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8996_set_fll, ptr null, ptr null, ptr null, ptr @wm8996_seq_notifier, ptr null, ptr @wm8996_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8996_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.398, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8996_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.311, i64 68719477829, i32 234, i32 0, i32 0, i32 1, i32 6, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.309, i64 68719477829, i32 234, i32 0, i32 0, i32 1, i32 6, i32 24 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.399, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8996_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.312, i64 68719477829, i32 234, i32 0, i32 0, i32 1, i32 2, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.310, i64 68719477829, i32 234, i32 0, i32 0, i32 1, i32 2, i32 24 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD1\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD2\00", [26 x i8] zeroinitializer }, align 32
@wm8996_reg = internal constant { [178 x %struct.reg_default], [368 x i8] } { [178 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 16 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 21, i32 136 }, %struct.reg_default { i32 22, i32 136 }, %struct.reg_default { i32 24, i32 704 }, %struct.reg_default { i32 25, i32 704 }, %struct.reg_default { i32 26, i32 704 }, %struct.reg_default { i32 27, i32 704 }, %struct.reg_default { i32 28, i32 128 }, %struct.reg_default { i32 29, i32 128 }, %struct.reg_default { i32 30, i32 128 }, %struct.reg_default { i32 31, i32 128 }, %struct.reg_default { i32 32, i32 57 }, %struct.reg_default { i32 33, i32 57 }, %struct.reg_default { i32 40, i32 3 }, %struct.reg_default { i32 41, i32 19 }, %struct.reg_default { i32 48, i32 4 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 52, i32 32 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 56, i32 30208 }, %struct.reg_default { i32 57, i32 191 }, %struct.reg_default { i32 64, i32 7973 }, %struct.reg_default { i32 65, i32 43801 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 84, i32 10794 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 273, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 520, i32 16 }, %struct.reg_default { i32 521, i32 0 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 24000 }, %struct.reg_default { i32 548, i32 3204 }, %struct.reg_default { i32 550, i32 0 }, %struct.reg_default { i32 551, i32 2 }, %struct.reg_default { i32 768, i32 0 }, %struct.reg_default { i32 769, i32 0 }, %struct.reg_default { i32 770, i32 128 }, %struct.reg_default { i32 771, i32 8 }, %struct.reg_default { i32 772, i32 128 }, %struct.reg_default { i32 773, i32 0 }, %struct.reg_default { i32 774, i32 6168 }, %struct.reg_default { i32 775, i32 0 }, %struct.reg_default { i32 776, i32 6168 }, %struct.reg_default { i32 777, i32 0 }, %struct.reg_default { i32 778, i32 0 }, %struct.reg_default { i32 779, i32 0 }, %struct.reg_default { i32 780, i32 0 }, %struct.reg_default { i32 781, i32 0 }, %struct.reg_default { i32 782, i32 0 }, %struct.reg_default { i32 783, i32 0 }, %struct.reg_default { i32 784, i32 0 }, %struct.reg_default { i32 785, i32 0 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 787, i32 0 }, %struct.reg_default { i32 788, i32 0 }, %struct.reg_default { i32 789, i32 0 }, %struct.reg_default { i32 794, i32 7 }, %struct.reg_default { i32 800, i32 0 }, %struct.reg_default { i32 801, i32 0 }, %struct.reg_default { i32 802, i32 128 }, %struct.reg_default { i32 803, i32 8 }, %struct.reg_default { i32 804, i32 128 }, %struct.reg_default { i32 805, i32 0 }, %struct.reg_default { i32 806, i32 6168 }, %struct.reg_default { i32 808, i32 6168 }, %struct.reg_default { i32 808, i32 0 }, %struct.reg_default { i32 809, i32 0 }, %struct.reg_default { i32 810, i32 0 }, %struct.reg_default { i32 811, i32 0 }, %struct.reg_default { i32 812, i32 0 }, %struct.reg_default { i32 813, i32 0 }, %struct.reg_default { i32 815, i32 1 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1040, i32 8192 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1296, i32 8192 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 0 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 0 }, %struct.reg_default { i32 1542, i32 0 }, %struct.reg_default { i32 1543, i32 0 }, %struct.reg_default { i32 1544, i32 0 }, %struct.reg_default { i32 1545, i32 0 }, %struct.reg_default { i32 1546, i32 0 }, %struct.reg_default { i32 1552, i32 0 }, %struct.reg_default { i32 1568, i32 13 }, %struct.reg_default { i32 1569, i32 4160 }, %struct.reg_default { i32 1792, i32 41217 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 320 }, %struct.reg_default { i32 1848, i32 31 }, %struct.reg_default { i32 1849, i32 7887 }, %struct.reg_default { i32 2048, i32 0 }, %struct.reg_default { i32 2049, i32 1 }, %struct.reg_default { i32 2050, i32 105 }, %struct.reg_default { i32 2051, i32 102 }], [368 x i8] zeroinitializer }, align 32
@wm8996_template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8996_gpio_direction_in, ptr @wm8996_gpio_direction_out, ptr @wm8996_gpio_get, ptr null, ptr @wm8996_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@wm8996_init_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8996_init_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8996_init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 2208, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add GPIOs: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8996_init_gpio\00", [47 x i8] zeroinitializer }, align 32
@wm8996_init_gpio._entry_ptr = internal global ptr @wm8996_init_gpio._entry, section ".printk_index", align 4
@wm8996_snd_controls = internal constant { [54 x %struct.snd_kcontrol_new], [640 x i8] } { [54 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @sidetone_hpf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dsp1tx_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dsp1tx_hpf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dsp2tx_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dsp2tx_hpf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @threedstereo_tlv }, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @threedstereo_tlv }, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }], [640 x i8] zeroinitializer }, align 32
@wm8996_dapm_routes = internal constant { [177 x %struct.snd_soc_dapm_route], [2284 x i8] } { [177 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.1, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.1, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.1, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.310, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.310, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.311, ptr null, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.311, ptr null, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.311, ptr null, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.311, ptr null, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.311, ptr null, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.311, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.312, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.312, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.271, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.194, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.193, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.271, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.194, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.271, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.271, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.194, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.193, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.273, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.274, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.273, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.274, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.275, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.275, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.275, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.275, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr null, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr null, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.307, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.308, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.305, ptr @.str.237, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr null, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr null, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.305, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.306, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.305, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.306, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.289, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.291, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.285, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.287, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.289, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.291, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.285, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.287, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.289, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.291, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.285, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.287, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.289, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.291, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.285, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.287, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr null, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr null, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr null, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.257, ptr null, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr null, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr null, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr null, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.217, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.218, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.215, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.216, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr @.str.217, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr @.str.218, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr @.str.215, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr @.str.216, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.243, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }], [2284 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@inpga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 16, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Capture ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 17, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Sidetone Volume\00", [43 x i8] zeroinitializer }, align 32
@sidetone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 1536, i32 1536, i32 0, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Sidetone Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 1539, i32 1539, i32 0, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sidetone LPF Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1569, i32 1569, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sidetone HPF Cut-off\00", [43 x i8] zeroinitializer }, align 32
@sidetone_hpf = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1569, i8 7, i8 7, i32 7, i32 7, ptr @sidetone_hpf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sidetone HPF Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1569, i32 1569, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP1 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1024, i32 1025, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP2 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1280, i32 1281, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DSP1 Capture Notch Filter Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1040, i32 1040, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP1 Capture HPF Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1040, i32 1040, i32 12, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSP1 Capture HPF Mode\00", [42 x i8] zeroinitializer }, align 32
@dsp1tx_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1040, i8 3, i8 3, i32 3, i32 3, ptr @hpf_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP1 Capture HPF Cutoff\00", [40 x i8] zeroinitializer }, align 32
@dsp1tx_hpf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1040, i8 0, i8 0, i32 7, i32 7, ptr @hpf_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DSP2 Capture Notch Filter Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP2 Capture HPF Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 12, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSP2 Capture HPF Mode\00", [42 x i8] zeroinitializer }, align 32
@dsp2tx_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1296, i8 3, i8 3, i32 3, i32 3, ptr @hpf_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP2 Capture HPF Cutoff\00", [40 x i8] zeroinitializer }, align 32
@dsp2tx_hpf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1296, i8 0, i8 0, i32 7, i32 7, ptr @hpf_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSP1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 112, i32 112, i32 1026, i32 1027, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSP1 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1056, i32 1056, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSP2 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 112, i32 112, i32 1282, i32 1283, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSP2 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1312, i32 1312, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 112, i32 112, i32 24, i32 25, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 25, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 112, i32 112, i32 26, i32 27, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 27, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Speaker High Performance Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1568, i32 1568, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMIC High Performance Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1568, i32 1568, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADC High Performance Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1568, i32 1568, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC High Performance Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1568, i32 1568, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Soft Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1552, i32 1552, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DAC Slow Soft Mute Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1552, i32 1552, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSP1 3D Stereo Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1057, i32 1057, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSP2 3D Stereo Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1313, i32 1313, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSP1 3D Stereo Volume\00", [42 x i8] zeroinitializer }, align 32
@threedstereo_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1600, i32 65719], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 1057, i32 1057, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSP2 3D Stereo Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 1313, i32 1313, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Output 1 Volume\00", [40 x i8] zeroinitializer }, align 32
@out_digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 21, i32 21, i32 0, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Output 2 Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 22, i32 22, i32 0, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Output 1 Volume\00", [16 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -900, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 28, i32 29, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Output 1 ZC Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 29, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Output 2 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 30, i32 31, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Output 2 ZC Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 31, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@spk_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -900, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 2051, i32 2051, i32 0, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2048, i32 2049, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2048, i32 2049, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSP1 EQ Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1152, i32 1152, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSP2 EQ Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1408, i32 1408, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP1 DRC TXL Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1088, i32 1088, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP1 DRC TXR Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1088, i32 1088, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP1 DRC RX Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1088, i32 1088, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DSP1 DRC\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 1088, i32 5, i32 7 }, [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP2 DRC TXL Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1344, i32 1344, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP2 DRC TXR Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1344, i32 1344, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP2 DRC RX Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1344, i32 1344, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DSP2 DRC\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 1344, i32 5, i32 7 }, [20 x i8] zeroinitializer }, align 32
@sidetone_hpf_text = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157], [36 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.9kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.5kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"735Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"403Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"196Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"98Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"49Hz\00", [27 x i8] zeroinitializer }, align 32
@hpf_mode_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.158, ptr @.str.159, ptr @.str.160], [20 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Custom\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@hpf_cutoff_text = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167], [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"75Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1LN\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1LP\00", [26 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1RN\00", [26 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1RP\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN2LN\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN2LP\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN2RN\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN2RP\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC1DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC2DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYSDSPCLK\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bandgap\00", [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MICB1 Audio\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MICB2 Audio\00", [20 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MICB2\00", [26 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MICB1\00", [26 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN1L PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN1R PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN1L Mux\00", [23 x i8] zeroinitializer }, align 32
@in1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @in1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN1R Mux\00", [23 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN2L Mux\00", [23 x i8] zeroinitializer }, align 32
@in2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.272, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @in2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN2R Mux\00", [23 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2L\00", [25 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2R\00", [25 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1L\00", [25 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1R\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Sidetone\00", [18 x i8] zeroinitializer }, align 32
@left_sidetone = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @left_sidetone_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Sidetone\00", [17 x i8] zeroinitializer }, align 32
@right_sidetone = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @right_sidetone_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP2RXL\00", [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP2RXR\00", [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP1RXL\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP1RXR\00", [24 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP2TXL\00", [24 x i8] zeroinitializer }, align 32
@dsp2txl = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP2TXR\00", [24 x i8] zeroinitializer }, align 32
@dsp2txr = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP1TXL\00", [24 x i8] zeroinitializer }, align 32
@dsp1txl = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP1TXR\00", [24 x i8] zeroinitializer }, align 32
@dsp1txr = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2L Mixer\00", [20 x i8] zeroinitializer }, align 32
@dac2l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2R Mixer\00", [20 x i8] zeroinitializer }, align 32
@dac2r_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1L Mixer\00", [20 x i8] zeroinitializer }, align 32
@dac1l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.300 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1R Mixer\00", [20 x i8] zeroinitializer }, align 32
@dac1r_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.303 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.304 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC2L\00", [26 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC2R\00", [26 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC1L\00", [26 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC1R\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2RX1\00", [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2RX0\00", [24 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2TX1\00", [24 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2TX0\00", [24 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RX5\00", [24 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RX4\00", [24 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RX3\00", [24 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RX2\00", [24 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RX1\00", [24 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RX0\00", [24 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1TX5\00", [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1TX4\00", [24 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1TX3\00", [24 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1TX2\00", [24 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1TX1\00", [24 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1TX0\00", [24 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RXA\00", [24 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RXB\00", [24 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1RXC\00", [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2RX\00", [25 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP2TX\00", [25 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP1RX\00", [25 x i8] zeroinitializer }, align 32
@dsp1rx = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dsp1rx_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSP2RX\00", [25 x i8] zeroinitializer }, align 32
@dsp2rx = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dsp2rx_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2TX\00", [25 x i8] zeroinitializer }, align 32
@aif2tx = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @aif2tx_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@spkl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @spkl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@spkr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.244, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @spkr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPKL PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPKR PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT2L PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT2L_DLY\00", [20 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT2L_DCS\00", [20 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HPOUT2L_RMV_SHORT\00", [46 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT2R PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT2R_DLY\00", [20 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT2R_DCS\00", [20 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HPOUT2R_RMV_SHORT\00", [46 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT1L PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT1L_DLY\00", [20 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT1L_DCS\00", [20 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HPOUT1L_RMV_SHORT\00", [46 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT1R PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT1R_DLY\00", [20 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOUT1R_DCS\00", [20 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HPOUT1R_RMV_SHORT\00", [46 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT1L\00", [24 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT1R\00", [24 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT2L\00", [24 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT2R\00", [24 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKDAT\00", [25 x i8] zeroinitializer }, align 32
@wm8996_dapm_widgets = internal constant { [102 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [4584 x i8] } { [102 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 20, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.1, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 512, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 520, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 520, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 2, ptr @cp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @bg_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 32, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 33, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @left_sidetone, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @right_sidetone, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @dsp2txl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @dsp2txr, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @dsp1txl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @dsp1txr, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @dac2l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @dac2r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @dac1l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @dac1r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 5 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 4 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 3 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 2 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 5 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 4 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 3 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 2 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.234, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.235, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.236, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.239, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.240, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dsp1rx, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dsp2rx, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.242, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif2tx, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spkl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.244, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spkr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.245, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2048, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.246, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2049, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.247, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 2, ptr @dcs_start, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 5, ptr @rmv_short_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 2, ptr @dcs_start, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 5, ptr @rmv_short_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 96, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 2, ptr @dcs_start, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.258, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 5, ptr @rmv_short_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.259, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.260, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 96, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.261, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 2, ptr @dcs_start, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.262, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 5, ptr @rmv_short_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.263, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.264, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.265, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.266, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.267, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [4584 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid event %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IN1 Mux\00", [24 x i8] zeroinitializer }, align 32
@in1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 3, i32 3, ptr @inmux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@inmux_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.271, ptr @.str.194, ptr @.str.193], [20 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IN2 Mux\00", [24 x i8] zeroinitializer }, align 32
@in2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 4, i8 4, i32 3, i32 3, ptr @inmux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@left_sidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1569, i8 0, i8 0, i32 2, i32 1, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sidetone_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.273, ptr @.str.274], [24 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN1\00", [28 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN2\00", [28 x i8] zeroinitializer }, align 32
@right_sidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1569, i8 1, i8 1, i32 2, i32 1, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1544, i32 1544, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1544, i32 1544, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1545, i32 1545, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1545, i32 1545, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1542, i32 1542, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1542, i32 1542, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1543, i32 1543, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1543, i32 1543, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Sidetone Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Sidetone Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSP2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSP1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.304 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@dsp1rx_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 2, i32 1, ptr @dsp1rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dsp1rx_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.305, ptr @.str.306], [24 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIF1\00", [27 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIF2\00", [27 x i8] zeroinitializer }, align 32
@dsp2rx_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 4, i8 4, i32 2, i32 1, ptr @dsp2rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dsp2rx_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.306, ptr @.str.305], [24 x i8] zeroinitializer }, align 32
@aif2tx_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 6, i8 6, i32 3, i32 3, ptr @aif2tx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aif2tx_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.307, ptr @.str.308, ptr @.str.305], [20 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSP2\00", [27 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSP1\00", [27 x i8] zeroinitializer }, align 32
@spkl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2048, i8 0, i8 0, i32 4, i32 3, ptr @spk_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@spk_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.217, ptr @.str.218, ptr @.str.215, ptr @.str.216], [16 x i8] zeroinitializer }, align 32
@spkr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2049, i8 0, i8 0, i32 4, i32 3, ptr @spk_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@wm8996_eq_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.324, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.326, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.327 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.328, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.329 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.330, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.333 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.334, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.335 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.339 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.341 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.342, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.343 to i32) }], [96 x i8] zeroinitializer }, align 32
@wm8996_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.314, ptr @.str.6, i32 2665, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8996_probe\00", [19 x i8] zeroinitializer }, align 32
@wm8996_probe._entry_ptr = internal global ptr @wm8996_probe._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.315 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSP1 EQ Mode\00", [19 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSP2 EQ Mode\00", [19 x i8] zeroinitializer }, align 32
@wm8996_retune_mobile_pdata.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.319, ptr @.str.6, ptr @.str.320, i8 2, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.318 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8996\00", [17 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wm8996_retune_mobile_pdata\00", [37 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Allocated %d unique ReTune Mobile names\0A\00", [55 x i8] zeroinitializer }, align 32
@wm8996_retune_mobile_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.319, ptr @.str.6, i32 2601, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to add ReTune Mobile controls: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wm8996_retune_mobile_pdata._entry_ptr = internal global ptr @wm8996_retune_mobile_pdata._entry, section ".printk_index", align 4
@wm8996_set_retune_mobile.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.322, ptr @.str.6, ptr @.str.323, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.322 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wm8996_set_retune_mobile\00", [39 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ReTune Mobile %d %s/%dHz for %dHz sample rate\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP1 EQ B1 Volume\00", [46 x i8] zeroinitializer }, align 32
@eq_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1152, i32 1152, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP1 EQ B2 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1152, i32 1152, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP1 EQ B3 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1152, i32 1152, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP1 EQ B4 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1153, i32 1153, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP1 EQ B5 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1153, i32 1153, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP2 EQ B1 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.335 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1408, i32 1408, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP2 EQ B2 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1408, i32 1408, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP2 EQ B3 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.339 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1408, i32 1408, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP2 EQ B4 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.341 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1409, i32 1409, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP2 EQ B5 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.343 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1409, i32 1409, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8996_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.345, ptr @.str.6, i32 2495, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read IRQ status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8996_irq\00", [21 x i8] zeroinitializer }, align 32
@wm8996_irq._entry_ptr = internal global ptr @wm8996_irq._entry, section ".printk_index", align 4
@wm8996_irq.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.345, ptr @.str.6, ptr @.str.346, i8 2, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.346 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DC servo IRQ\0A\00", [18 x i8] zeroinitializer }, align 32
@wm8996_irq._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.345, ptr @.str.6, i32 2511, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital core FIFO error\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8996_irq._entry_ptr.349 = internal global ptr @wm8996_irq._entry.347, section ".printk_index", align 4
@wm8996_irq.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.345, ptr @.str.6, ptr @.str.350, i8 2, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.350 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FLL locked\0A\00", [20 x i8] zeroinitializer }, align 32
@wm8996_micd.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.351, ptr @.str.6, ptr @.str.352, i8 2, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.351 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8996_micd\00", [20 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Microphone event: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@wm8996_micd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @.str.351, ptr @.str.6, i32 2394, ptr @.str.354, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Microphone detection state invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8996_micd._entry_ptr = internal global ptr @wm8996_micd._entry, section ".printk_index", align 4
@wm8996_micd.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.351, ptr @.str.6, ptr @.str.355, i8 2, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.355 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Jack removal detected\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8996_micd.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.351, ptr @.str.6, ptr @.str.356, i8 2, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.356 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Microphone detected\0A\00", [43 x i8] zeroinitializer }, align 32
@wm8996_micd.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.351, ptr @.str.6, ptr @.str.357, i8 2, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.357 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mic button up\0A\00", [17 x i8] zeroinitializer }, align 32
@wm8996_micd.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.351, ptr @.str.6, ptr @.str.358, i8 2, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.358 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set microphone polarity to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8996_micd.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.351, ptr @.str.6, ptr @.str.359, i8 2, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.359 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mic button detected\0A\00", [43 x i8] zeroinitializer }, align 32
@wm8996_report_headphone.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.360, ptr @.str.6, ptr @.str.361, i8 2, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.360 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wm8996_report_headphone\00", [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone detected\0A\00", [44 x i8] zeroinitializer }, align 32
@wm8996_hpdet_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.363, ptr @.str.6, i32 2299, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read HPDET status\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8996_hpdet_irq\00", [47 x i8] zeroinitializer }, align 32
@wm8996_hpdet_irq._entry_ptr = internal global ptr @wm8996_hpdet_irq._entry, section ".printk_index", align 4
@wm8996_hpdet_irq._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.363, ptr @.str.6, i32 2304, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Got HPDET IRQ but HPDET is busy\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8996_hpdet_irq._entry_ptr.366 = internal global ptr @wm8996_hpdet_irq._entry.364, section ".printk_index", align 4
@wm8996_hpdet_irq.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.363, ptr @.str.6, ptr @.str.367, i8 2, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.367 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HPDET measured %d ohms\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8996_set_fll.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.368, ptr @.str.6, ptr @.str.369, i8 1, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.368 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8996_set_fll\00", [17 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@wm8996_set_fll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.368, ptr @.str.6, i32 2047, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown FLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8996_set_fll._entry_ptr = internal global ptr @wm8996_set_fll._entry, section ".printk_index", align 4
@wm8996_set_fll._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.368, ptr @.str.6, i32 2125, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Timed out waiting for FLL\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8996_set_fll._entry_ptr.373 = internal global ptr @wm8996_set_fll._entry.371, section ".printk_index", align 4
@wm8996_set_fll.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.368, ptr @.str.6, ptr @.str.374, i8 2, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.374 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FLL configured for %dHz->%dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@fll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.376, ptr @.str.6, i32 1931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Can't scale %dMHz input down to <=13.5MHz\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fll_factors\00", [20 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr = internal global ptr @fll_factors._entry, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.376, ptr @.str.6, ptr @.str.377, i8 1, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.377 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FLL Fref=%u Fout=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@fll_factors._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @.str.376, ptr @.str.6, i32 1957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.380 = internal global ptr @fll_factors._entry.378, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.376, ptr @.str.6, ptr @.str.381, i8 1, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.381 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FLL Fvco=%dHz\0A\00", [17 x i8] zeroinitializer }, align 32
@fll_fratios = internal constant { [5 x %struct.anon.109], [48 x i8] } { [5 x %struct.anon.109] [%struct.anon.109 { i32 0, i32 64000, i16 4, i32 16 }, %struct.anon.109 { i32 64000, i32 128000, i16 3, i32 8 }, %struct.anon.109 { i32 128000, i32 256000, i16 2, i32 4 }, %struct.anon.109 { i32 256000, i32 1000000, i16 1, i32 2 }, %struct.anon.109 { i32 1000000, i32 13500000, i16 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@fll_factors._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.376, ptr @.str.6, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_FRATIO for Fref=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.384 = internal global ptr @fll_factors._entry.382, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.376, ptr @.str.6, ptr @.str.385, i8 1, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.385 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FLL N=%x THETA=%x LAMBDA=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@fll_factors.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.376, ptr @.str.6, ptr @.str.386, i8 1, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.386 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FLL_FRATIO=%x FLL_OUTDIV=%x FLL_REFCLK_DIV=%x\0A\00", [49 x i8] zeroinitializer }, align 32
@wm8996_seq_notifier.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.387, ptr @.str.6, ptr @.str.388, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.387 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm8996_seq_notifier\00", [44 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Starting DC servo for %x\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8996_seq_notifier.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.387, ptr @.str.6, ptr @.str.389, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.389 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Applying RMV_SHORTs %x->%x\0A\00", [36 x i8] zeroinitializer }, align 32
@wait_for_dc_servo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.391, ptr @.str.6, i32 668, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC servo timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wait_for_dc_servo\00", [46 x i8] zeroinitializer }, align 32
@wait_for_dc_servo._entry_ptr = internal global ptr @wait_for_dc_servo._entry, section ".printk_index", align 4
@wait_for_dc_servo.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.391, ptr @.str.6, ptr @.str.392, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.392 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC servo state: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@wait_for_dc_servo._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.394, ptr @.str.391, ptr @.str.6, i32 680, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC servo timed out for %x\0A\00", [37 x i8] zeroinitializer }, align 32
@wait_for_dc_servo._entry_ptr.395 = internal global ptr @wait_for_dc_servo._entry.393, section ".printk_index", align 4
@wait_for_dc_servo.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.391, ptr @.str.6, ptr @.str.396, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.396 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC servo complete for %x\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8996_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.397, ptr @.str.6, i32 1595, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8996_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@wm8996_set_bias_level._entry_ptr = internal global ptr @wm8996_set_bias_level._entry, section ".printk_index", align 4
@.str.398 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8996-aif1\00", [20 x i8] zeroinitializer }, align 32
@wm8996_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8996_set_sysclk, ptr null, ptr null, ptr null, ptr @wm8996_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8996_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8996-aif2\00", [20 x i8] zeroinitializer }, align 32
@wm8996_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.400, ptr @.str.401, ptr @.str.6, i32 1843, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported clock source %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8996_set_sysclk\00", [46 x i8] zeroinitializer }, align 32
@wm8996_set_sysclk._entry_ptr = internal global ptr @wm8996_set_sysclk._entry, section ".printk_index", align 4
@wm8996_set_sysclk._entry.402 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.403, ptr @.str.401, ptr @.str.6, i32 1870, ptr @.str.354, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported clock rate %dHz\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8996_set_sysclk._entry_ptr.404 = internal global ptr @wm8996_set_sysclk._entry.402, section ".printk_index", align 4
@bclk_divs = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96], [44 x i8] zeroinitializer }, align 32
@wm8996_update_bclk.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.405, ptr @.str.6, ptr @.str.406, i8 1, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.405 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8996_update_bclk\00", [45 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Using BCLK_DIV %d for actual BCLK %dHz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid dai id %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wm8996_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.408, ptr @.str.409, ptr @.str.6, i32 1771, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported BCLK rate: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8996_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8996_hw_params._entry_ptr = internal global ptr @wm8996_hw_params._entry, section ".printk_index", align 4
@wm8996_hw_params.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.318, ptr @.str.409, ptr @.str.6, ptr @.str.410, i8 1, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.410 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using LRCLK rate %d for actual LRCLK %dHz\0A\00", [53 x i8] zeroinitializer }, align 32
@switch.table.wm8996_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 0, i32 3, i32 0, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [196 x i64] [i64 194, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 17, i64 18, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 40, i64 41, i64 48, i64 49, i64 52, i64 53, i64 56, i64 57, i64 58, i64 64, i64 65, i64 80, i64 81, i64 82, i64 84, i64 85, i64 86, i64 87, i64 96, i64 97, i64 256, i64 257, i64 272, i64 273, i64 512, i64 513, i64 520, i64 521, i64 528, i64 544, i64 545, i64 546, i64 547, i64 548, i64 549, i64 550, i64 551, i64 768, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 775, i64 776, i64 777, i64 778, i64 779, i64 780, i64 781, i64 782, i64 783, i64 784, i64 785, i64 786, i64 787, i64 788, i64 789, i64 794, i64 800, i64 801, i64 802, i64 803, i64 804, i64 805, i64 806, i64 807, i64 808, i64 809, i64 810, i64 811, i64 812, i64 813, i64 815, i64 1024, i64 1025, i64 1026, i64 1027, i64 1040, i64 1056, i64 1057, i64 1088, i64 1089, i64 1090, i64 1091, i64 1092, i64 1152, i64 1153, i64 1154, i64 1155, i64 1156, i64 1157, i64 1158, i64 1159, i64 1160, i64 1161, i64 1162, i64 1163, i64 1164, i64 1165, i64 1166, i64 1167, i64 1168, i64 1169, i64 1170, i64 1171, i64 1280, i64 1281, i64 1282, i64 1283, i64 1296, i64 1312, i64 1313, i64 1344, i64 1345, i64 1346, i64 1347, i64 1348, i64 1408, i64 1409, i64 1410, i64 1411, i64 1412, i64 1413, i64 1414, i64 1415, i64 1416, i64 1417, i64 1418, i64 1419, i64 1420, i64 1421, i64 1422, i64 1423, i64 1424, i64 1425, i64 1426, i64 1427, i64 1536, i64 1537, i64 1538, i64 1539, i64 1540, i64 1541, i64 1542, i64 1543, i64 1544, i64 1545, i64 1546, i64 1552, i64 1568, i64 1569, i64 1792, i64 1793, i64 1794, i64 1795, i64 1796, i64 1824, i64 1825, i64 1840, i64 1841, i64 1842, i64 1848, i64 1849, i64 1856, i64 2048, i64 2049, i64 2050, i64 2051]
@__sancov_gen_cov_switch_values.411 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 40, i64 41, i64 52, i64 53, i64 58, i64 81, i64 85, i64 86, i64 87, i64 256, i64 549, i64 1840, i64 1841, i64 1842]
@__sancov_gen_cov_switch_values.412 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.413 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.414 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.415 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.416 = internal global [10 x i64] [i64 8, i64 32, i64 32000, i64 32768, i64 5644800, i64 6144000, i64 11289600, i64 12288000, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.417 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.418 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.419 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.420 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.421 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2262, i32 47 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2263, i32 47 }
@___asan_gen_.428 = private unnamed_addr constant [18 x i8] c"wm8996_i2c_driver\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 3090, i32 26 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 3092, i32 11 }
@___asan_gen_.434 = private unnamed_addr constant [14 x i8] c"wm8996_i2c_id\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 3084, i32 35 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2779, i32 32 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2781, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2793, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2807, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2816, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [14 x i8] c"wm8996_regmap\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2604, i32 35 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2825, i32 19 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2828, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2834, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2838, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2845, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2850, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2860, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 3026, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 3037, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8996\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2684, i32 46 }
@___asan_gen_.539 = private unnamed_addr constant [11 x i8] c"wm8996_dai\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2715, i32 34 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 44, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 45, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 46, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [11 x i8] c"wm8996_reg\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 117, i32 33 }
@___asan_gen_.554 = private unnamed_addr constant [21 x i8] c"wm8996_template_chip\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2183, i32 31 }
@___asan_gen_.557 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2206, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2208, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant [20 x i8] c"wm8996_snd_controls\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 445, i32 38 }
@___asan_gen_.575 = private unnamed_addr constant [19 x i8] c"wm8996_dapm_routes\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1070, i32 40 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 446, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant [10 x i8] c"inpga_tlv\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 298, i32 14 }
@___asan_gen_.584 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 448, i32 1 }
@___asan_gen_.588 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 451, i32 1 }
@___asan_gen_.592 = private unnamed_addr constant [13 x i8] c"sidetone_tlv\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 299, i32 14 }
@___asan_gen_.595 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 453, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 455, i32 1 }
@___asan_gen_.603 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 456, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant [13 x i8] c"sidetone_hpf\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 311, i32 8 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 457, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 459, i32 1 }
@___asan_gen_.617 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 300, i32 14 }
@___asan_gen_.620 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 461, i32 1 }
@___asan_gen_.624 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 464, i32 1 }
@___asan_gen_.628 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 466, i32 1 }
@___asan_gen_.632 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 467, i32 1 }
@___asan_gen_.636 = private unnamed_addr constant [16 x i8] c"dsp1tx_hpf_mode\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 318, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 468, i32 1 }
@___asan_gen_.642 = private unnamed_addr constant [18 x i8] c"dsp1tx_hpf_cutoff\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 328, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 470, i32 1 }
@___asan_gen_.648 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 472, i32 1 }
@___asan_gen_.652 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 473, i32 1 }
@___asan_gen_.656 = private unnamed_addr constant [16 x i8] c"dsp2tx_hpf_mode\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 321, i32 8 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 474, i32 1 }
@___asan_gen_.662 = private unnamed_addr constant [18 x i8] c"dsp2tx_hpf_cutoff\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 331, i32 8 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 476, i32 1 }
@___asan_gen_.668 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 478, i32 1 }
@___asan_gen_.672 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 480, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 482, i32 1 }
@___asan_gen_.680 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 484, i32 1 }
@___asan_gen_.684 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 486, i32 1 }
@___asan_gen_.688 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 489, i32 1 }
@___asan_gen_.692 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 491, i32 1 }
@___asan_gen_.696 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 494, i32 1 }
@___asan_gen_.700 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 495, i32 1 }
@___asan_gen_.704 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 496, i32 1 }
@___asan_gen_.708 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 497, i32 1 }
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 499, i32 1 }
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 500, i32 1 }
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 502, i32 1 }
@___asan_gen_.724 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 503, i32 1 }
@___asan_gen_.728 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 505, i32 1 }
@___asan_gen_.732 = private unnamed_addr constant [17 x i8] c"threedstereo_tlv\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 305, i32 14 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 507, i32 1 }
@___asan_gen_.739 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 510, i32 1 }
@___asan_gen_.743 = private unnamed_addr constant [16 x i8] c"out_digital_tlv\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 301, i32 14 }
@___asan_gen_.746 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 512, i32 1 }
@___asan_gen_.750 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 515, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 302, i32 14 }
@___asan_gen_.757 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 517, i32 1 }
@___asan_gen_.761 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 520, i32 1 }
@___asan_gen_.765 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 522, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 525, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant [8 x i8] c"spk_tlv\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 303, i32 14 }
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 527, i32 1 }
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 529, i32 1 }
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 532, i32 1 }
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 533, i32 1 }
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 535, i32 1 }
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 536, i32 1 }
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 537, i32 1 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 538, i32 1 }
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 542, i32 1 }
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 543, i32 1 }
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 544, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 545, i32 1 }
@___asan_gen_.824 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [18 x i8] c"sidetone_hpf_text\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 307, i32 20 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 308, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 308, i32 12 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 308, i32 22 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 308, i32 31 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 308, i32 40 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 308, i32 49 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 308, i32 57 }
@___asan_gen_.849 = private unnamed_addr constant [14 x i8] c"hpf_mode_text\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 314, i32 20 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 315, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 315, i32 10 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 315, i32 20 }
@___asan_gen_.861 = private unnamed_addr constant [16 x i8] c"hpf_cutoff_text\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 324, i32 20 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 325, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 325, i32 10 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 325, i32 18 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 325, i32 27 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 325, i32 36 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 325, i32 45 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 325, i32 54 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 917, i32 1 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 918, i32 1 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 919, i32 1 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 920, i32 1 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 922, i32 1 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 923, i32 1 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 924, i32 1 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 925, i32 1 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 927, i32 1 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 928, i32 1 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 930, i32 1 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 932, i32 1 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 933, i32 1 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 934, i32 1 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 936, i32 1 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 939, i32 1 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 940, i32 1 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 941, i32 1 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 942, i32 1 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 944, i32 1 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 945, i32 1 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 947, i32 1 }
@___asan_gen_.951 = private unnamed_addr constant [8 x i8] c"in1_mux\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 842, i32 38 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 948, i32 1 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 949, i32 1 }
@___asan_gen_.960 = private unnamed_addr constant [8 x i8] c"in2_mux\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 848, i32 38 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 950, i32 1 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 952, i32 1 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 953, i32 1 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 955, i32 1 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 956, i32 1 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 957, i32 1 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 958, i32 1 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 960, i32 1 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 961, i32 1 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 963, i32 1 }
@___asan_gen_.993 = private unnamed_addr constant [14 x i8] c"left_sidetone\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 780, i32 38 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 964, i32 1 }
@___asan_gen_.999 = private unnamed_addr constant [15 x i8] c"right_sidetone\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 786, i32 38 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 966, i32 1 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 967, i32 1 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 968, i32 1 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 969, i32 1 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 971, i32 1 }
@___asan_gen_.1017 = private unnamed_addr constant [8 x i8] c"dsp2txl\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 901, i32 38 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 973, i32 1 }
@___asan_gen_.1023 = private unnamed_addr constant [8 x i8] c"dsp2txr\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 908, i32 38 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 975, i32 1 }
@___asan_gen_.1029 = private unnamed_addr constant [8 x i8] c"dsp1txl\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 887, i32 38 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 977, i32 1 }
@___asan_gen_.1035 = private unnamed_addr constant [8 x i8] c"dsp1txr\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 894, i32 38 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 980, i32 1 }
@___asan_gen_.1041 = private unnamed_addr constant [10 x i8] c"dac2l_mix\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 860, i32 38 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 982, i32 1 }
@___asan_gen_.1047 = private unnamed_addr constant [10 x i8] c"dac2r_mix\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 851, i32 38 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 984, i32 1 }
@___asan_gen_.1053 = private unnamed_addr constant [10 x i8] c"dac1l_mix\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 878, i32 38 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 986, i32 1 }
@___asan_gen_.1059 = private unnamed_addr constant [10 x i8] c"dac1r_mix\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 869, i32 38 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 989, i32 1 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 990, i32 1 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 991, i32 1 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 992, i32 1 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 994, i32 1 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 995, i32 1 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 997, i32 1 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 998, i32 1 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1000, i32 1 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1001, i32 1 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1002, i32 1 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1003, i32 1 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1004, i32 1 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1005, i32 1 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1007, i32 1 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1008, i32 1 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1009, i32 1 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1010, i32 1 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1011, i32 1 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1012, i32 1 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1016, i32 1 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1017, i32 1 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1018, i32 1 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1019, i32 1 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1020, i32 1 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1022, i32 1 }
@___asan_gen_.1140 = private unnamed_addr constant [7 x i8] c"dsp1rx\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 812, i32 38 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1023, i32 1 }
@___asan_gen_.1146 = private unnamed_addr constant [7 x i8] c"dsp2rx\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 822, i32 38 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1024, i32 1 }
@___asan_gen_.1152 = private unnamed_addr constant [7 x i8] c"aif2tx\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 832, i32 38 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1026, i32 1 }
@___asan_gen_.1158 = private unnamed_addr constant [9 x i8] c"spkl_mux\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 796, i32 38 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1027, i32 1 }
@___asan_gen_.1164 = private unnamed_addr constant [9 x i8] c"spkr_mux\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 802, i32 38 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1028, i32 1 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1029, i32 1 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1031, i32 1 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1032, i32 1 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1033, i32 1 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1035, i32 1 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1039, i32 1 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1040, i32 1 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1041, i32 1 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1043, i32 1 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1047, i32 1 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1048, i32 1 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1049, i32 1 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1051, i32 1 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1055, i32 1 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1056, i32 1 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1057, i32 1 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1059, i32 1 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1063, i32 1 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1064, i32 1 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1065, i32 1 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1066, i32 1 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1067, i32 1 }
@___asan_gen_.1236 = private unnamed_addr constant [20 x i8] c"wm8996_dapm_widgets\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 916, i32 41 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 625, i32 3 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 843, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant [9 x i8] c"in1_enum\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 839, i32 8 }
@___asan_gen_.1248 = private unnamed_addr constant [11 x i8] c"inmux_text\00", align 1
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 835, i32 20 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 836, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 849, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant [9 x i8] c"in2_enum\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 845, i32 8 }
@___asan_gen_.1260 = private unnamed_addr constant [19 x i8] c"left_sidetone_enum\00", align 1
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 777, i32 8 }
@___asan_gen_.1263 = private unnamed_addr constant [14 x i8] c"sidetone_text\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 773, i32 20 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 774, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 774, i32 9 }
@___asan_gen_.1272 = private unnamed_addr constant [20 x i8] c"right_sidetone_enum\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 783, i32 8 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 902, i32 1 }
@___asan_gen_.1278 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 904, i32 1 }
@___asan_gen_.1282 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1283 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1288 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 861, i32 1 }
@___asan_gen_.1292 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 863, i32 1 }
@___asan_gen_.1296 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 865, i32 1 }
@___asan_gen_.1300 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 866, i32 1 }
@___asan_gen_.1304 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1306 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1307 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1311 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1313 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1314 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant [21 x i8] c".compoundliteral.304\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant [12 x i8] c"dsp1rx_enum\00", align 1
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 809, i32 8 }
@___asan_gen_.1320 = private unnamed_addr constant [12 x i8] c"dsp1rx_text\00", align 1
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 805, i32 20 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 806, i32 2 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 806, i32 10 }
@___asan_gen_.1329 = private unnamed_addr constant [12 x i8] c"dsp2rx_enum\00", align 1
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 819, i32 8 }
@___asan_gen_.1332 = private unnamed_addr constant [12 x i8] c"dsp2rx_text\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 815, i32 20 }
@___asan_gen_.1335 = private unnamed_addr constant [12 x i8] c"aif2tx_enum\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 829, i32 8 }
@___asan_gen_.1338 = private unnamed_addr constant [12 x i8] c"aif2tx_text\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 825, i32 20 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 826, i32 2 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 826, i32 10 }
@___asan_gen_.1347 = private unnamed_addr constant [10 x i8] c"spkl_enum\00", align 1
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 793, i32 8 }
@___asan_gen_.1350 = private unnamed_addr constant [9 x i8] c"spk_text\00", align 1
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 789, i32 20 }
@___asan_gen_.1353 = private unnamed_addr constant [10 x i8] c"spkr_enum\00", align 1
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 799, i32 8 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1083, i32 21 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1090, i32 21 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1093, i32 4 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1100, i32 4 }
@___asan_gen_.1368 = private unnamed_addr constant [19 x i8] c"wm8996_eq_controls\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 550, i32 38 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2664, i32 4 }
@___asan_gen_.1380 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1384, i32 87, i32 2 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2547, i32 3 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2551, i32 3 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2592, i32 2 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2600, i32 3 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 380, i32 2 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 551, i32 1 }
@___asan_gen_.1416 = private unnamed_addr constant [7 x i8] c"eq_tlv\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 304, i32 14 }
@___asan_gen_.1419 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 553, i32 1 }
@___asan_gen_.1423 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 555, i32 1 }
@___asan_gen_.1427 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 557, i32 1 }
@___asan_gen_.1431 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 559, i32 1 }
@___asan_gen_.1435 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 562, i32 1 }
@___asan_gen_.1439 = private unnamed_addr constant [21 x i8] c".compoundliteral.335\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 564, i32 1 }
@___asan_gen_.1443 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 566, i32 1 }
@___asan_gen_.1447 = private unnamed_addr constant [21 x i8] c".compoundliteral.339\00", align 1
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 568, i32 1 }
@___asan_gen_.1451 = private unnamed_addr constant [21 x i8] c".compoundliteral.341\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 570, i32 1 }
@___asan_gen_.1455 = private unnamed_addr constant [21 x i8] c".compoundliteral.343\00", align 1
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2494, i32 3 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2506, i32 3 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2511, i32 3 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2514, i32 3 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2391, i32 2 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2394, i32 3 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2400, i32 3 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2422, i32 4 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2434, i32 4 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2466, i32 3 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2477, i32 4 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2373, i32 2 }
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2299, i32 3 }
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2304, i32 3 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2310, i32 2 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2016, i32 3 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2047, i32 3 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2125, i32 3 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2129, i32 2 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1930, i32 4 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1936, i32 2 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1956, i32 4 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1964, i32 2 }
@___asan_gen_.1573 = private unnamed_addr constant [12 x i8] c"fll_fratios\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1906, i32 3 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1975, i32 3 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1992, i32 2 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1994, i32 2 }
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 693, i32 3 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 704, i32 3 }
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 668, i32 5 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 676, i32 3 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 680, i32 3 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 682, i32 3 }
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1593, i32 5 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2717, i32 11 }
@___asan_gen_.1627 = private unnamed_addr constant [15 x i8] c"wm8996_dai_ops\00", align 1
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2709, i32 37 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 2737, i32 11 }
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1843, i32 3 }
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1869, i32 3 }
@___asan_gen_.1648 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1527, i32 18 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1563, i32 3 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1653, i32 3 }
@___asan_gen_.1660 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1771, i32 3 }
@___asan_gen_.1669 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1670 = private constant [29 x i8] c"../sound/soc/codecs/wm8996.c\00", align 1
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1670, i32 1795, i32 2 }
@___asan_gen_.1672 = private unnamed_addr constant [28 x i8] c"switch.table.wm8996_set_fmt\00", align 1
@llvm.compiler.used = appending global [512 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_license349, ptr @__exitcall_wm8996_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8996__345_3099_wm8996_i2c_driver_init6, ptr @__ksymtab_wm8996_detect, ptr @fll_factors._entry, ptr @fll_factors._entry.378, ptr @fll_factors._entry.382, ptr @fll_factors._entry_ptr, ptr @fll_factors._entry_ptr.380, ptr @fll_factors._entry_ptr.384, ptr @wait_for_dc_servo._entry, ptr @wait_for_dc_servo._entry.393, ptr @wait_for_dc_servo._entry_ptr, ptr @wait_for_dc_servo._entry_ptr.395, ptr @wm8996_hpdet_irq._entry, ptr @wm8996_hpdet_irq._entry.364, ptr @wm8996_hpdet_irq._entry_ptr, ptr @wm8996_hpdet_irq._entry_ptr.366, ptr @wm8996_hw_params._entry, ptr @wm8996_hw_params._entry_ptr, ptr @wm8996_i2c_driver_exit, ptr @wm8996_i2c_probe._entry, ptr @wm8996_i2c_probe._entry.12, ptr @wm8996_i2c_probe._entry.15, ptr @wm8996_i2c_probe._entry.19, ptr @wm8996_i2c_probe._entry.22, ptr @wm8996_i2c_probe._entry.25, ptr @wm8996_i2c_probe._entry.28, ptr @wm8996_i2c_probe._entry.31, ptr @wm8996_i2c_probe._entry.35, ptr @wm8996_i2c_probe._entry.38, ptr @wm8996_i2c_probe._entry.41, ptr @wm8996_i2c_probe._entry.9, ptr @wm8996_i2c_probe._entry_ptr, ptr @wm8996_i2c_probe._entry_ptr.11, ptr @wm8996_i2c_probe._entry_ptr.14, ptr @wm8996_i2c_probe._entry_ptr.17, ptr @wm8996_i2c_probe._entry_ptr.21, ptr @wm8996_i2c_probe._entry_ptr.24, ptr @wm8996_i2c_probe._entry_ptr.27, ptr @wm8996_i2c_probe._entry_ptr.30, ptr @wm8996_i2c_probe._entry_ptr.34, ptr @wm8996_i2c_probe._entry_ptr.37, ptr @wm8996_i2c_probe._entry_ptr.40, ptr @wm8996_i2c_probe._entry_ptr.43, ptr @wm8996_init_gpio._entry, ptr @wm8996_init_gpio._entry_ptr, ptr @wm8996_irq._entry, ptr @wm8996_irq._entry.347, ptr @wm8996_irq._entry_ptr, ptr @wm8996_irq._entry_ptr.349, ptr @wm8996_micd._entry, ptr @wm8996_micd._entry_ptr, ptr @wm8996_probe._entry, ptr @wm8996_probe._entry_ptr, ptr @wm8996_retune_mobile_pdata._entry, ptr @wm8996_retune_mobile_pdata._entry_ptr, ptr @wm8996_set_bias_level._entry, ptr @wm8996_set_bias_level._entry_ptr, ptr @wm8996_set_fll._entry, ptr @wm8996_set_fll._entry.371, ptr @wm8996_set_fll._entry_ptr, ptr @wm8996_set_fll._entry_ptr.373, ptr @wm8996_set_sysclk._entry, ptr @wm8996_set_sysclk._entry.402, ptr @wm8996_set_sysclk._entry_ptr, ptr @wm8996_set_sysclk._entry_ptr.404, ptr @.str, ptr @.str.1, ptr @wm8996_i2c_driver, ptr @.str.2, ptr @wm8996_i2c_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @wm8996_i2c_probe._key, ptr @wm8996_regmap, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @soc_component_dev_wm8996, ptr @wm8996_dai, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @wm8996_reg, ptr @wm8996_template_chip, ptr @wm8996_init_gpio.lock_key, ptr @wm8996_init_gpio.request_key, ptr @.str.47, ptr @.str.48, ptr @wm8996_snd_controls, ptr @wm8996_dapm_routes, ptr @.str.49, ptr @inpga_tlv, ptr @.compoundliteral, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @sidetone_tlv, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @sidetone_hpf, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @digital_tlv, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @dsp1tx_hpf_mode, ptr @.str.70, ptr @dsp1tx_hpf_cutoff, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @dsp2tx_hpf_mode, ptr @.str.76, ptr @dsp2tx_hpf_cutoff, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @threedstereo_tlv, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @out_digital_tlv, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @out_tlv, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @spk_tlv, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @sidetone_hpf_text, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @hpf_mode_text, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @hpf_cutoff_text, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @in1_mux, ptr @.str.190, ptr @.str.191, ptr @in2_mux, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @left_sidetone, ptr @.str.202, ptr @right_sidetone, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @dsp2txl, ptr @.str.208, ptr @dsp2txr, ptr @.str.209, ptr @dsp1txl, ptr @.str.210, ptr @dsp1txr, ptr @.str.211, ptr @dac2l_mix, ptr @.str.212, ptr @dac2r_mix, ptr @.str.213, ptr @dac1l_mix, ptr @.str.214, ptr @dac1r_mix, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @dsp1rx, ptr @.str.241, ptr @dsp2rx, ptr @.str.242, ptr @aif2tx, ptr @.str.243, ptr @spkl_mux, ptr @.str.244, ptr @spkr_mux, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @wm8996_dapm_widgets, ptr @.str.269, ptr @.str.270, ptr @in1_enum, ptr @inmux_text, ptr @.str.271, ptr @.str.272, ptr @in2_enum, ptr @left_sidetone_enum, ptr @sidetone_text, ptr @.str.273, ptr @.str.274, ptr @right_sidetone_enum, ptr @.str.275, ptr @.compoundliteral.276, ptr @.str.277, ptr @.compoundliteral.278, ptr @.compoundliteral.279, ptr @.compoundliteral.280, ptr @.compoundliteral.281, ptr @.compoundliteral.282, ptr @.compoundliteral.283, ptr @.compoundliteral.284, ptr @.str.285, ptr @.compoundliteral.286, ptr @.str.287, ptr @.compoundliteral.288, ptr @.str.289, ptr @.compoundliteral.290, ptr @.str.291, ptr @.compoundliteral.292, ptr @.compoundliteral.293, ptr @.compoundliteral.294, ptr @.compoundliteral.295, ptr @.compoundliteral.296, ptr @.compoundliteral.297, ptr @.compoundliteral.298, ptr @.compoundliteral.299, ptr @.compoundliteral.300, ptr @.compoundliteral.301, ptr @.compoundliteral.302, ptr @.compoundliteral.303, ptr @.compoundliteral.304, ptr @dsp1rx_enum, ptr @dsp1rx_text, ptr @.str.305, ptr @.str.306, ptr @dsp2rx_enum, ptr @dsp2rx_text, ptr @aif2tx_enum, ptr @aif2tx_text, ptr @.str.307, ptr @.str.308, ptr @spkl_enum, ptr @spk_text, ptr @spkr_enum, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @wm8996_eq_controls, ptr @.str.313, ptr @.str.314, ptr @init_completion.__key, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @eq_tlv, ptr @.compoundliteral.325, ptr @.str.326, ptr @.compoundliteral.327, ptr @.str.328, ptr @.compoundliteral.329, ptr @.str.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @.compoundliteral.333, ptr @.str.334, ptr @.compoundliteral.335, ptr @.str.336, ptr @.compoundliteral.337, ptr @.str.338, ptr @.compoundliteral.339, ptr @.str.340, ptr @.compoundliteral.341, ptr @.str.342, ptr @.compoundliteral.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.348, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.365, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.372, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.379, ptr @.str.381, ptr @fll_fratios, ptr @.str.383, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.394, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @wm8996_dai_ops, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.403, ptr @bclk_divs, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @switch.table.wm8996_set_fmt], section "llvm.metadata"
@0 = internal global [473 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_i2c_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8996 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_reg to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_init_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_init_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_snd_controls to i32), i32 2592, i32 3232, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_dapm_routes to i32), i32 9204, i32 11488, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inpga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_hpf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1tx_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1tx_hpf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2tx_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2tx_hpf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threedstereo_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_hpf_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_mode_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_cutoff_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_sidetone to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_sidetone to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2txl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2txr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1txl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1txr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac2l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac2r_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac1l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac1r_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1rx to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2rx to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif2tx to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_dapm_widgets to i32), i32 18360, i32 22944, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inmux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_sidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_sidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.304 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1rx_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1rx_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2rx_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2rx_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif2tx_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif2tx_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_eq_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_retune_mobile_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.335 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.339 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.341 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.343 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_irq._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_micd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_hpdet_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_hpdet_irq._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_set_fll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_set_fll._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_fratios to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_dc_servo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_dc_servo._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_set_sysclk._entry.402 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8996_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8996_detect(ptr noundef %component, ptr noundef %jack, ptr noundef %polarity_cb) #0 align 64 {
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
  %jack2 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %jack2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %jack2, align 4
  %detecting = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %detecting, align 4
  %polarity_cb3 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %polarity_cb3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %polarity_cb, ptr %polarity_cb3, align 4
  %jack_flips = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 27
  %7 = ptrtoint ptr %jack_flips to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %jack_flips, align 4
  %tobool.not = icmp eq ptr %polarity_cb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %polarity_cb(ptr noundef %component, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 1, i32 noundef 0) #11
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 33, i32 noundef 1, i32 noundef 0) #11
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #11
  %call8 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str) #11
  %call9 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.1) #11
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i29 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i29) #11
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 1, i32 noundef 1) #11
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 3840, i32 noundef 3840) #11
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1849, i32 noundef 3, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_i2c_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8996_i2c_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8996_i2c_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8996_i2c_driver) #11
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
define internal i32 @wm8996_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !802
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 748, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdata = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 17
  %5 = call ptr @memcpy(ptr %pdata, ptr %4, i32 56)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %ldo_ena = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ldo_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10 = icmp sgt i32 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then11:                                        ; preds = %if.end8
  %call14 = tail call i32 @gpio_request_one(i32 noundef %7, i32 noundef 0, ptr noundef nonnull @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %if.then11.if.end21_crit_edge

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ldo_ena, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef %call14) #14
  br label %cleanup

if.end21:                                         ; preds = %if.then11.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %arrayidx23 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 14, i32 0
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.44, ptr %arrayidx23, align 4
  %arrayidx23.1 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.45, ptr %arrayidx23.1, align 4
  %arrayidx23.2 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.46, ptr %arrayidx23.2, align 4
  %call26 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call26) #14
  br label %err_gpio

if.end33:                                         ; preds = %if.end21
  %disable_nb = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 15
  %13 = ptrtoint ptr %disable_nb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wm8996_regulator_event_0, ptr %disable_nb, align 4
  %arrayidx36 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wm8996_regulator_event_1, ptr %arrayidx36, align 4
  %arrayidx39 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 15, i32 2
  %15 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wm8996_regulator_event_2, ptr %arrayidx39, align 4
  %consumer = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %16 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %consumer, align 4
  %call48 = tail call i32 @devm_regulator_register_notifier(ptr noundef %17, ptr noundef %disable_nb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end33.for.inc56_crit_edge, label %do.end53

if.end33.for.inc56_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc56

do.end53:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call48) #14
  br label %for.inc56

for.inc56:                                        ; preds = %do.end53, %if.end33.for.inc56_crit_edge
  %consumer.1 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 14, i32 1, i32 1
  %18 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %consumer.1, align 4
  %call48.1 = tail call i32 @devm_regulator_register_notifier(ptr noundef %19, ptr noundef %arrayidx36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1)
  %cmp49.not.1 = icmp eq i32 %call48.1, 0
  br i1 %cmp49.not.1, label %for.inc56.for.inc56.1_crit_edge, label %do.end53.1

for.inc56.for.inc56.1_crit_edge:                  ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc56.1

do.end53.1:                                       ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call48.1) #14
  br label %for.inc56.1

for.inc56.1:                                      ; preds = %do.end53.1, %for.inc56.for.inc56.1_crit_edge
  %consumer.2 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 14, i32 2, i32 1
  %20 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %consumer.2, align 4
  %call48.2 = tail call i32 @devm_regulator_register_notifier(ptr noundef %21, ptr noundef %arrayidx39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.2)
  %cmp49.not.2 = icmp eq i32 %call48.2, 0
  br i1 %cmp49.not.2, label %for.inc56.1.for.inc56.2_crit_edge, label %do.end53.2

for.inc56.1.for.inc56.2_crit_edge:                ; preds = %for.inc56.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc56.2

do.end53.2:                                       ; preds = %for.inc56.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call48.2) #14
  br label %for.inc56.2

for.inc56.2:                                      ; preds = %do.end53.2, %for.inc56.1.for.inc56.2_crit_edge
  %call61 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %for.inc56.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call61) #14
  br label %err_gpio

if.end68:                                         ; preds = %for.inc56.2
  %22 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ldo_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp71 = icmp sgt i32 %23, 0
  br i1 %cmp71, label %if.then72, label %if.end68.if.end75_crit_edge

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %call.i434 = tail call ptr @gpio_to_desc(i32 noundef %23) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i434, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 5) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end68.if.end75_crit_edge
  %call76 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8996_regmap, ptr noundef nonnull @wm8996_i2c_probe._key, ptr noundef nonnull @.str.18) #11
  %regmap = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call76, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call76 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %25) #14
  br label %err_enable

if.end86:                                         ; preds = %if.end75
  %call88 = call i32 @regmap_read(ptr noundef %call76, i32 noundef 0, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call88) #14
  br label %err_enable

if.end95:                                         ; preds = %if.end86
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35093, i32 %27)
  %cmp96.not = icmp eq i32 %27, 35093
  br i1 %cmp96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %27) #14
  br label %err_enable

if.end102:                                        ; preds = %if.end95
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call104 = call i32 @regmap_read(ptr noundef %29, i32 noundef 256, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end109, label %do.end114

do.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call104) #14
  br label %err_enable

do.end114:                                        ; preds = %if.end102
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg, align 4
  %and = and i32 %31, 15
  %add = add nuw nsw i32 %and, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %add) #14
  %32 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ldo_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp118 = icmp sgt i32 %33, 0
  br i1 %cmp118, label %if.then119, label %if.else

if.then119:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  %call.i435 = call ptr @gpio_to_desc(i32 noundef %33) #11
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i435, i32 noundef 0) #11
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %35, i1 noundef zeroext true) #11
  br label %if.end132

if.else:                                          ; preds = %do.end114
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call124 = call i32 @regmap_write(ptr noundef %37, i32 noundef 0, i32 noundef 35093) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125.not = icmp eq i32 %call124, 0
  br i1 %cmp125.not, label %if.else.if.end132_crit_edge, label %do.end129

if.else.if.end132_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

do.end129:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call124) #14
  br label %err_enable

if.end132:                                        ; preds = %if.else.if.end132_crit_edge, %if.then119
  %call135 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx23) #11
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %inl_mode = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 3
  %40 = ptrtoint ptr %inl_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inl_mode, align 4
  %shl = shl i32 %41, 2
  %inr_mode = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 4
  %42 = ptrtoint ptr %inr_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inr_mode, align 4
  %or = or i32 %shl, %43
  %call.i436 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 18, i32 noundef 15, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %arrayidx144 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 7, i32 0
  %44 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool145.not = icmp eq i32 %45, 0
  br i1 %tobool145.not, label %if.end132.for.inc155_crit_edge, label %if.end147

if.end132.for.inc155_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc155

if.end147:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %and153 = and i32 %45, 65535
  %call154 = call i32 @regmap_write(ptr noundef %47, i32 noundef 1792, i32 noundef %and153) #11
  br label %for.inc155

for.inc155:                                       ; preds = %if.end147, %if.end132.for.inc155_crit_edge
  %arrayidx144.1 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 7, i32 1
  %48 = ptrtoint ptr %arrayidx144.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx144.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool145.not.1 = icmp eq i32 %49, 0
  br i1 %tobool145.not.1, label %for.inc155.for.inc155.1_crit_edge, label %if.end147.1

for.inc155.for.inc155.1_crit_edge:                ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc155.1

if.end147.1:                                      ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %and153.1 = and i32 %49, 65535
  %call154.1 = call i32 @regmap_write(ptr noundef %51, i32 noundef 1793, i32 noundef %and153.1) #11
  br label %for.inc155.1

for.inc155.1:                                     ; preds = %if.end147.1, %for.inc155.for.inc155.1_crit_edge
  %arrayidx144.2 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 7, i32 2
  %52 = ptrtoint ptr %arrayidx144.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx144.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool145.not.2 = icmp eq i32 %53, 0
  br i1 %tobool145.not.2, label %for.inc155.1.for.inc155.2_crit_edge, label %if.end147.2

for.inc155.1.for.inc155.2_crit_edge:              ; preds = %for.inc155.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc155.2

if.end147.2:                                      ; preds = %for.inc155.1
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %and153.2 = and i32 %53, 65535
  %call154.2 = call i32 @regmap_write(ptr noundef %55, i32 noundef 1794, i32 noundef %and153.2) #11
  br label %for.inc155.2

for.inc155.2:                                     ; preds = %if.end147.2, %for.inc155.1.for.inc155.2_crit_edge
  %arrayidx144.3 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 7, i32 3
  %56 = ptrtoint ptr %arrayidx144.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx144.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool145.not.3 = icmp eq i32 %57, 0
  br i1 %tobool145.not.3, label %for.inc155.2.for.inc155.3_crit_edge, label %if.end147.3

for.inc155.2.for.inc155.3_crit_edge:              ; preds = %for.inc155.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc155.3

if.end147.3:                                      ; preds = %for.inc155.2
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %and153.3 = and i32 %57, 65535
  %call154.3 = call i32 @regmap_write(ptr noundef %59, i32 noundef 1795, i32 noundef %and153.3) #11
  br label %for.inc155.3

for.inc155.3:                                     ; preds = %if.end147.3, %for.inc155.2.for.inc155.3_crit_edge
  %arrayidx144.4 = getelementptr %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 7, i32 4
  %60 = ptrtoint ptr %arrayidx144.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx144.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool145.not.4 = icmp eq i32 %61, 0
  br i1 %tobool145.not.4, label %for.inc155.3.for.inc155.4_crit_edge, label %if.end147.4

for.inc155.3.for.inc155.4_crit_edge:              ; preds = %for.inc155.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc155.4

if.end147.4:                                      ; preds = %for.inc155.3
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %and153.4 = and i32 %61, 65535
  %call154.4 = call i32 @regmap_write(ptr noundef %63, i32 noundef 1796, i32 noundef %and153.4) #11
  br label %for.inc155.4

for.inc155.4:                                     ; preds = %if.end147.4, %for.inc155.3.for.inc155.4_crit_edge
  %spkmute_seq = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 5
  %64 = ptrtoint ptr %spkmute_seq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %spkmute_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool159.not = icmp eq i32 %65, 0
  br i1 %tobool159.not, label %for.inc155.4.if.end165_crit_edge, label %if.then160

for.inc155.4.if.end165_crit_edge:                 ; preds = %for.inc155.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

if.then160:                                       ; preds = %for.inc155.4
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call.i437 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 2050, i32 noundef 511, i32 noundef %65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %for.inc155.4.if.end165_crit_edge
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %micdet_def = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 17, i32 2
  %70 = ptrtoint ptr %micdet_def to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %micdet_def, align 4
  %call.i438 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 49, i32 noundef 7, i32 noundef %71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i439 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 16, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call.i440 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 17, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call.i441 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 24, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call.i442 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 25, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call.i443 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 26, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call.i444 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 27, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.i445 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 28, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call.i446 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 29, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call.i447 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 30, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %call.i448 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 31, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call.i449 = call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 1024, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call.i450 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 1025, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call.i451 = call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 1280, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call.i452 = call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 1281, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  %call.i453 = call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 1026, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call.i454 = call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 1027, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call.i455 = call i32 @regmap_update_bits_base(ptr noundef %105, i32 noundef 1282, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call.i456 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 1283, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call.i457 = call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 783, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call.i458 = call i32 @regmap_update_bits_base(ptr noundef %111, i32 noundef 784, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call.i459 = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 785, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %114 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap, align 4
  %call.i460 = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 786, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 4
  %call.i461 = call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef 787, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %118 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap, align 4
  %call.i462 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 788, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 4
  %call.i463 = call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 811, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %122 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap, align 4
  %call.i464 = call i32 @regmap_update_bits_base(ptr noundef %123, i32 noundef 812, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %124 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap, align 4
  %call.i465 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 777, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 4
  %call.i466 = call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef 778, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %128 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap, align 4
  %call.i467 = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 779, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 4
  %call.i468 = call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 780, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %132 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap, align 4
  %call.i469 = call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 781, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %134 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap, align 4
  %call.i470 = call i32 @regmap_update_bits_base(ptr noundef %135, i32 noundef 782, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %136 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap, align 4
  %call.i471 = call i32 @regmap_update_bits_base(ptr noundef %137, i32 noundef 809, i32 noundef 511, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %138 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap, align 4
  %call.i472 = call i32 @regmap_update_bits_base(ptr noundef %139, i32 noundef 778, i32 noundef 511, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %140 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap, align 4
  %call238 = call i32 @regmap_read(ptr noundef %141, i32 noundef 1792, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239.not = icmp eq i32 %call238, 0
  br i1 %cmp239.not, label %if.end245, label %do.end243

do.end243:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call238) #14
  br label %err_enable

if.end245:                                        ; preds = %if.end165
  %142 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %reg, align 4
  %and246 = and i32 %143, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.end245.if.end251_crit_edge, label %if.then248

if.end245.if.end251_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251

if.then248:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap, align 4
  %call.i473 = call i32 @regmap_update_bits_base(ptr noundef %145, i32 noundef 771, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end251

if.end251:                                        ; preds = %if.then248, %if.end245.if.end251_crit_edge
  %146 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regmap, align 4
  %call253 = call i32 @regmap_read(ptr noundef %147, i32 noundef 1793, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254.not = icmp eq i32 %call253, 0
  br i1 %cmp254.not, label %if.end260, label %do.end258

do.end258:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call253) #14
  br label %err_enable

if.end260:                                        ; preds = %if.end251
  %148 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %reg, align 4
  %and261 = and i32 %149, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %if.end260.if.end266_crit_edge, label %if.then263

if.end260.if.end266_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end266

if.then263:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap, align 4
  %call.i474 = call i32 @regmap_update_bits_base(ptr noundef %151, i32 noundef 803, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end266

if.end266:                                        ; preds = %if.then263, %if.end260.if.end266_crit_edge
  call fastcc void @wm8996_init_gpio(ptr noundef nonnull %call.i)
  %call268 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8996, ptr noundef nonnull @wm8996_dai, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %cmp269 = icmp slt i32 %call268, 0
  br i1 %cmp269, label %err_gpiolib, label %if.end266.cleanup_crit_edge

if.end266.cleanup_crit_edge:                      ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_gpiolib:                                      ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #13
  %gpio_chip.i = getelementptr inbounds %struct.wm8996_priv, ptr %call.i, i32 0, i32 29
  call void @gpiochip_remove(ptr noundef %gpio_chip.i) #11
  br label %err_enable

err_enable:                                       ; preds = %err_gpiolib, %do.end258, %do.end243, %do.end129, %do.end109, %do.end100, %do.end93, %if.then79
  %ret.0 = phi i32 [ %25, %if.then79 ], [ %call88, %do.end93 ], [ -22, %do.end100 ], [ %call104, %do.end109 ], [ %call238, %do.end243 ], [ %call253, %do.end258 ], [ %call268, %err_gpiolib ], [ %call124, %do.end129 ]
  %152 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ldo_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp274 = icmp sgt i32 %153, 0
  br i1 %cmp274, label %if.then275, label %err_enable.if.end278_crit_edge

err_enable.if.end278_crit_edge:                   ; preds = %err_enable
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end278

if.then275:                                       ; preds = %err_enable
  call void @__sanitizer_cov_trace_pc() #13
  %call.i475 = call ptr @gpio_to_desc(i32 noundef %153) #11
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i475, i32 noundef 0) #11
  br label %if.end278

if.end278:                                        ; preds = %if.then275, %err_enable.if.end278_crit_edge
  %call281 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx23) #11
  br label %err_gpio

err_gpio:                                         ; preds = %if.end278, %do.end66, %do.end31
  %ret.1 = phi i32 [ %call26, %do.end31 ], [ %call61, %do.end66 ], [ %ret.0, %if.end278 ]
  %154 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ldo_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp284 = icmp sgt i32 %155, 0
  br i1 %cmp284, label %if.then285, label %err_gpio.cleanup_crit_edge

err_gpio.cleanup_crit_edge:                       ; preds = %err_gpio
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then285:                                       ; preds = %err_gpio
  call void @__sanitizer_cov_trace_pc() #13
  call void @gpio_free(i32 noundef %155) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then285, %err_gpio.cleanup_crit_edge, %if.end266.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call268, %if.end266.cleanup_crit_edge ], [ %call14, %do.end ], [ %ret.1, %if.then285 ], [ %ret.1, %err_gpio.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_i2c_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_chip.i = getelementptr inbounds %struct.wm8996_priv, ptr %1, i32 0, i32 29
  tail call void @gpiochip_remove(ptr noundef %gpio_chip.i) #11
  %ldo_ena = getelementptr inbounds %struct.wm8996_priv, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ldo_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef 0) #11
  %4 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ldo_ena, align 4
  tail call void @gpio_free(i32 noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_regulator_event_0(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr i8, ptr %nb, i32 -188
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_regulator_event_1(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr i8, ptr %nb, i32 -200
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_regulator_event_2(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr i8, ptr %nb, i32 -212
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8996_init_gpio(ptr noundef %wm8996) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_chip = getelementptr inbounds %struct.wm8996_priv, ptr %wm8996, i32 0, i32 29
  %0 = call ptr @memcpy(ptr %gpio_chip, ptr @wm8996_template_chip, i32 348)
  %ngpio = getelementptr inbounds %struct.wm8996_priv, ptr %wm8996, i32 0, i32 29, i32 20
  %1 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 5, ptr %ngpio, align 4
  %2 = ptrtoint ptr %wm8996 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm8996, align 4
  %parent = getelementptr inbounds %struct.wm8996_priv, ptr %wm8996, i32 0, i32 29, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %parent, align 4
  %gpio_base = getelementptr inbounds %struct.wm8996_priv, ptr %wm8996, i32 0, i32 17, i32 6
  %5 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %6
  %7 = getelementptr inbounds %struct.wm8996_priv, ptr %wm8996, i32 0, i32 29, i32 19
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %call = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef %wm8996, ptr noundef nonnull @wm8996_init_gpio.lock_key, ptr noundef nonnull @wm8996_init_gpio.request_key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %do.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %wm8996 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wm8996, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef %call) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8996_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
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
    i32 16, label %entry.return_crit_edge9
    i32 17, label %entry.return_crit_edge10
    i32 18, label %entry.return_crit_edge11
    i32 21, label %entry.return_crit_edge12
    i32 22, label %entry.return_crit_edge13
    i32 24, label %entry.return_crit_edge14
    i32 25, label %entry.return_crit_edge15
    i32 26, label %entry.return_crit_edge16
    i32 27, label %entry.return_crit_edge17
    i32 28, label %entry.return_crit_edge18
    i32 29, label %entry.return_crit_edge19
    i32 30, label %entry.return_crit_edge20
    i32 31, label %entry.return_crit_edge21
    i32 32, label %entry.return_crit_edge22
    i32 33, label %entry.return_crit_edge23
    i32 40, label %entry.return_crit_edge24
    i32 41, label %entry.return_crit_edge25
    i32 48, label %entry.return_crit_edge26
    i32 49, label %entry.return_crit_edge27
    i32 52, label %entry.return_crit_edge28
    i32 53, label %entry.return_crit_edge29
    i32 56, label %entry.return_crit_edge30
    i32 57, label %entry.return_crit_edge31
    i32 58, label %entry.return_crit_edge32
    i32 64, label %entry.return_crit_edge33
    i32 65, label %entry.return_crit_edge34
    i32 80, label %entry.return_crit_edge35
    i32 81, label %entry.return_crit_edge36
    i32 82, label %entry.return_crit_edge37
    i32 84, label %entry.return_crit_edge38
    i32 85, label %entry.return_crit_edge39
    i32 86, label %entry.return_crit_edge40
    i32 87, label %entry.return_crit_edge41
    i32 96, label %entry.return_crit_edge42
    i32 97, label %entry.return_crit_edge43
    i32 256, label %entry.return_crit_edge44
    i32 257, label %entry.return_crit_edge45
    i32 272, label %entry.return_crit_edge46
    i32 273, label %entry.return_crit_edge47
    i32 512, label %entry.return_crit_edge48
    i32 513, label %entry.return_crit_edge49
    i32 520, label %entry.return_crit_edge50
    i32 521, label %entry.return_crit_edge51
    i32 528, label %entry.return_crit_edge52
    i32 544, label %entry.return_crit_edge53
    i32 545, label %entry.return_crit_edge54
    i32 546, label %entry.return_crit_edge55
    i32 547, label %entry.return_crit_edge56
    i32 548, label %entry.return_crit_edge57
    i32 549, label %entry.return_crit_edge58
    i32 550, label %entry.return_crit_edge59
    i32 551, label %entry.return_crit_edge60
    i32 768, label %entry.return_crit_edge61
    i32 769, label %entry.return_crit_edge62
    i32 770, label %entry.return_crit_edge63
    i32 771, label %entry.return_crit_edge64
    i32 772, label %entry.return_crit_edge65
    i32 773, label %entry.return_crit_edge66
    i32 774, label %entry.return_crit_edge67
    i32 775, label %entry.return_crit_edge68
    i32 776, label %entry.return_crit_edge69
    i32 777, label %entry.return_crit_edge70
    i32 778, label %entry.return_crit_edge71
    i32 779, label %entry.return_crit_edge72
    i32 780, label %entry.return_crit_edge73
    i32 781, label %entry.return_crit_edge74
    i32 782, label %entry.return_crit_edge75
    i32 783, label %entry.return_crit_edge76
    i32 784, label %entry.return_crit_edge77
    i32 785, label %entry.return_crit_edge78
    i32 786, label %entry.return_crit_edge79
    i32 787, label %entry.return_crit_edge80
    i32 788, label %entry.return_crit_edge81
    i32 789, label %entry.return_crit_edge82
    i32 794, label %entry.return_crit_edge83
    i32 800, label %entry.return_crit_edge84
    i32 801, label %entry.return_crit_edge85
    i32 802, label %entry.return_crit_edge86
    i32 803, label %entry.return_crit_edge87
    i32 804, label %entry.return_crit_edge88
    i32 805, label %entry.return_crit_edge89
    i32 806, label %entry.return_crit_edge90
    i32 807, label %entry.return_crit_edge91
    i32 808, label %entry.return_crit_edge92
    i32 809, label %entry.return_crit_edge93
    i32 810, label %entry.return_crit_edge94
    i32 811, label %entry.return_crit_edge95
    i32 812, label %entry.return_crit_edge96
    i32 813, label %entry.return_crit_edge97
    i32 815, label %entry.return_crit_edge98
    i32 1024, label %entry.return_crit_edge99
    i32 1025, label %entry.return_crit_edge100
    i32 1026, label %entry.return_crit_edge101
    i32 1027, label %entry.return_crit_edge102
    i32 1040, label %entry.return_crit_edge103
    i32 1056, label %entry.return_crit_edge104
    i32 1057, label %entry.return_crit_edge105
    i32 1088, label %entry.return_crit_edge106
    i32 1089, label %entry.return_crit_edge107
    i32 1090, label %entry.return_crit_edge108
    i32 1091, label %entry.return_crit_edge109
    i32 1092, label %entry.return_crit_edge110
    i32 1152, label %entry.return_crit_edge111
    i32 1153, label %entry.return_crit_edge112
    i32 1154, label %entry.return_crit_edge113
    i32 1155, label %entry.return_crit_edge114
    i32 1156, label %entry.return_crit_edge115
    i32 1157, label %entry.return_crit_edge116
    i32 1158, label %entry.return_crit_edge117
    i32 1159, label %entry.return_crit_edge118
    i32 1160, label %entry.return_crit_edge119
    i32 1161, label %entry.return_crit_edge120
    i32 1162, label %entry.return_crit_edge121
    i32 1163, label %entry.return_crit_edge122
    i32 1164, label %entry.return_crit_edge123
    i32 1165, label %entry.return_crit_edge124
    i32 1166, label %entry.return_crit_edge125
    i32 1167, label %entry.return_crit_edge126
    i32 1168, label %entry.return_crit_edge127
    i32 1169, label %entry.return_crit_edge128
    i32 1170, label %entry.return_crit_edge129
    i32 1171, label %entry.return_crit_edge130
    i32 1280, label %entry.return_crit_edge131
    i32 1281, label %entry.return_crit_edge132
    i32 1282, label %entry.return_crit_edge133
    i32 1283, label %entry.return_crit_edge134
    i32 1296, label %entry.return_crit_edge135
    i32 1312, label %entry.return_crit_edge136
    i32 1313, label %entry.return_crit_edge137
    i32 1344, label %entry.return_crit_edge138
    i32 1345, label %entry.return_crit_edge139
    i32 1346, label %entry.return_crit_edge140
    i32 1347, label %entry.return_crit_edge141
    i32 1348, label %entry.return_crit_edge142
    i32 1408, label %entry.return_crit_edge143
    i32 1409, label %entry.return_crit_edge144
    i32 1410, label %entry.return_crit_edge145
    i32 1411, label %entry.return_crit_edge146
    i32 1412, label %entry.return_crit_edge147
    i32 1413, label %entry.return_crit_edge148
    i32 1414, label %entry.return_crit_edge149
    i32 1415, label %entry.return_crit_edge150
    i32 1416, label %entry.return_crit_edge151
    i32 1417, label %entry.return_crit_edge152
    i32 1418, label %entry.return_crit_edge153
    i32 1419, label %entry.return_crit_edge154
    i32 1420, label %entry.return_crit_edge155
    i32 1421, label %entry.return_crit_edge156
    i32 1422, label %entry.return_crit_edge157
    i32 1423, label %entry.return_crit_edge158
    i32 1424, label %entry.return_crit_edge159
    i32 1425, label %entry.return_crit_edge160
    i32 1426, label %entry.return_crit_edge161
    i32 1427, label %entry.return_crit_edge162
    i32 1536, label %entry.return_crit_edge163
    i32 1537, label %entry.return_crit_edge164
    i32 1538, label %entry.return_crit_edge165
    i32 1539, label %entry.return_crit_edge166
    i32 1540, label %entry.return_crit_edge167
    i32 1541, label %entry.return_crit_edge168
    i32 1542, label %entry.return_crit_edge169
    i32 1543, label %entry.return_crit_edge170
    i32 1544, label %entry.return_crit_edge171
    i32 1545, label %entry.return_crit_edge172
    i32 1546, label %entry.return_crit_edge173
    i32 1552, label %entry.return_crit_edge174
    i32 1568, label %entry.return_crit_edge175
    i32 1569, label %entry.return_crit_edge176
    i32 1792, label %entry.return_crit_edge177
    i32 1793, label %entry.return_crit_edge178
    i32 1794, label %entry.return_crit_edge179
    i32 1795, label %entry.return_crit_edge180
    i32 1796, label %entry.return_crit_edge181
    i32 1824, label %entry.return_crit_edge182
    i32 1825, label %entry.return_crit_edge183
    i32 1840, label %entry.return_crit_edge184
    i32 1841, label %entry.return_crit_edge185
    i32 1842, label %entry.return_crit_edge186
    i32 1848, label %entry.return_crit_edge187
    i32 1849, label %entry.return_crit_edge188
    i32 1856, label %entry.return_crit_edge189
    i32 2048, label %entry.return_crit_edge190
    i32 2049, label %entry.return_crit_edge191
    i32 2050, label %entry.return_crit_edge192
    i32 2051, label %entry.return_crit_edge193
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8996_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.411)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 256, label %entry.return_crit_edge1
    i32 40, label %entry.return_crit_edge2
    i32 41, label %entry.return_crit_edge3
    i32 1840, label %entry.return_crit_edge4
    i32 1841, label %entry.return_crit_edge5
    i32 1842, label %entry.return_crit_edge6
    i32 87, label %entry.return_crit_edge7
    i32 81, label %entry.return_crit_edge8
    i32 85, label %entry.return_crit_edge9
    i32 86, label %entry.return_crit_edge10
    i32 549, label %entry.return_crit_edge11
    i32 58, label %entry.return_crit_edge12
    i32 52, label %entry.return_crit_edge13
    i32 53, label %entry.return_crit_edge14
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_gpio_direction_in(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %regmap = getelementptr inbounds %struct.wm8996_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 1792
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 32783, i32 noundef 32769, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_gpio_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %or = select i1 %tobool.not, i32 1, i32 65
  %regmap = getelementptr inbounds %struct.wm8996_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 1792
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 32847, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !802
  %regmap = getelementptr inbounds %struct.wm8996_priv, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 1792
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = lshr i32 %4, 6
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8996_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %regmap = getelementptr inbounds %struct.wm8996_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl = select i1 %tobool.not, i32 0, i32 64
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 64, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_probe(ptr noundef %component) #0 align 64 {
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
  %component1 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %component1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %component1, align 4
  %dcs_done = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %dcs_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dcs_done, align 4
  %wait.i = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.315, ptr noundef nonnull @init_completion.__key) #11
  %fll_lock = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %fll_lock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fll_lock, align 4
  %wait.i52 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i52, ptr noundef nonnull @.str.315, ptr noundef nonnull @init_completion.__key) #11
  %pdata = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 8
  %7 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wm8996_retune_mobile_pdata(ptr noundef %component)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8996_eq_controls, i32 noundef 10) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %irq = getelementptr i8, ptr %1, i32 932
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  %phi.bo = or i32 %12, 8192
  %irq_flags.0 = select i1 %tobool7.not, i32 8200, i32 %phi.bo
  %and = and i32 %irq_flags.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %wm8996_irq.wm8996_edge_irq = select i1 %tobool13.not, ptr @wm8996_irq, ptr @wm8996_edge_irq
  %call19 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef null, ptr noundef nonnull %wm8996_irq.wm8996_edge_irq, i32 noundef %irq_flags.0, ptr noundef nonnull @.str.2, ptr noundef %component) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp eq i32 %call19, 0
  br i1 %cmp, label %if.then21, label %do.end

if.then21:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1856, i32 noundef 1, i32 noundef 0) #11
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1849, i32 noundef 6660, i32 noundef 0) #11
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.313, i32 noundef %call19) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then21, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end ], [ 0, %if.then21 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8996_remove(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1856, i32 noundef 1, i32 noundef 1) #11
  %irq = getelementptr i8, ptr %1, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %component) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_set_fll(ptr noundef %component, i32 noundef %fll_id, i32 noundef %source, i32 noundef %Fref, i32 noundef %Fout) #0 align 64 {
entry:
  %fll_div = alloca %struct._fll_div, align 2
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fll_div) #11
  %4 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %5 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %6 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %7 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %8 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 5
  %9 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 6
  %10 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 7
  %fll_src = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 6
  %11 = call ptr @memset(ptr %fll_div, i32 255, i32 16)
  %12 = ptrtoint ptr %fll_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %source)
  %cmp = icmp eq i32 %13, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fll_fref = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %fll_fref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fll_fref, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %Fref)
  %cmp1 = icmp eq i32 %15, %Fref
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %fll_fout = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fll_fout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %Fout)
  %cmp3 = icmp eq i32 %17, %Fout
  br i1 %cmp3, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Fout)
  %cmp4 = icmp eq i32 %Fout, 0
  br i1 %cmp4, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_set_fll.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_set_fll, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !803

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_set_fll.__UNIQUE_ID_ddebug332, ptr noundef %19, ptr noundef nonnull @.str.369) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %fll_fref13 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %fll_fref13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fll_fref13, align 4
  %fll_fout14 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %fll_fout14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %fll_fout14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 544, i32 noundef 1, i32 noundef 0) #11
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %bg_ena.i = getelementptr inbounds %struct.wm8996_priv, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %bg_ena.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bg_ena.i, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %bg_ena.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = call fastcc i32 @fll_factors(ptr noundef nonnull %fll_div, i32 noundef %Fref, i32 noundef %Fout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %switch.tableidx = add i32 %source, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 4
  br i1 %28, label %sw.epilog, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.370, i32 noundef 0) #14
  br label %cleanup

sw.epilog:                                        ; preds = %if.end20
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %5, align 2
  %conv = zext i16 %32 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %or = or i32 %shl, %switch.tableidx
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %7, align 2
  %conv28 = zext i16 %34 to i32
  %shl29 = shl nuw nsw i32 %conv28, 2
  %or30 = or i32 %or, %shl29
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 548, i32 noundef 31, i32 noundef %or30) #11
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool33.not = icmp eq i16 %36, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %sw.epilog.if.end39_crit_edge

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

lor.lhs.false:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool35.not = icmp eq i16 %38, 0
  %spec.select = select i1 %tobool35.not, i32 2, i32 7
  br label %if.end39

if.end39:                                         ; preds = %lor.lhs.false, %sw.epilog.if.end39_crit_edge
  %reg.1 = phi i32 [ 7, %sw.epilog.if.end39_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 551, i32 noundef %reg.1) #11
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %4, align 2
  %conv41 = zext i16 %40 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %41 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fll_div, align 2
  %conv43 = zext i16 %42 to i32
  %or44 = or i32 %shl42, %conv43
  %call45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 545, i32 noundef 16135, i32 noundef %or44) #11
  %conv47 = zext i16 %36 to i32
  %call48 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 546, i32 noundef %conv47) #11
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %8, align 2
  %conv49 = zext i16 %44 to i32
  %shl50 = shl nuw nsw i32 %conv49, 5
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %6, align 2
  %conv51 = zext i16 %46 to i32
  %or52 = or i32 %shl50, %conv51
  %call53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 547, i32 noundef 32751, i32 noundef %or52) #11
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %10, align 2
  %conv55 = zext i16 %48 to i32
  %call56 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 550, i32 noundef %conv55) #11
  %call57 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 544) #11
  %and = and i32 %call57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.then59, label %if.end39.if.end60_crit_edge

if.end39.if.end60_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then59:                                        ; preds = %if.end39
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i216 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %driver_data.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i.i216, align 4
  %bg_ena.i217 = getelementptr inbounds %struct.wm8996_priv, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %bg_ena.i217 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bg_ena.i217, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %bg_ena.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i218 = icmp eq i32 %54, 0
  br i1 %cmp.i218, label %if.then.i220, label %if.then59.if.end60_crit_edge

if.then59.if.end60_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then.i220:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i219 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 1, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 2) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then.i220, %if.then59.if.end60_crit_edge, %if.end39.if.end60_crit_edge
  %fll_lock = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 9
  %call61 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %fll_lock) #11
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 544, i32 noundef 1, i32 noundef 1) #11
  %call63 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 549, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %Fref)
  %cmp64 = icmp ugt i32 %Fref, 1000000
  br i1 %cmp64, label %if.then66, label %if.end60.if.end70.thread_crit_edge

if.end60.if.end70.thread_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.thread

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 300
  %spec.select234 = select i1 %cmp.i, i32 2147483628, i32 10
  %spec.select235 = select i1 %cmp.i, i32 536870911, i32 1
  br label %if.end70.thread

if.end70.thread:                                  ; preds = %if.then66, %if.end60.if.end70.thread_crit_edge
  %mul230 = phi i32 [ 10, %if.end60.if.end70.thread_crit_edge ], [ %spec.select234, %if.then66 ]
  %55 = phi i32 [ 1, %if.end60.if.end70.thread_crit_edge ], [ %spec.select235, %if.then66 ]
  %irq228 = getelementptr i8, ptr %1, i32 932
  %56 = ptrtoint ptr %irq228 to i32
  call void @__asan_load4_noabort(i32 %56)
  %tobool71.not229.in = load i32, ptr %irq228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool71.not229.in)
  %tobool71.not229 = icmp eq i32 %tobool71.not229.in, 0
  %timeout.1 = select i1 %tobool71.not229, i32 %55, i32 %mul230
  %call79 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %if.end116, label %if.end70.thread.if.then82_crit_edge

if.end70.thread.if.then82_crit_edge:              ; preds = %if.end70.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.then82:                                        ; preds = %for.inc.8.if.then82_crit_edge, %for.inc.7.if.then82_crit_edge, %for.inc.6.if.then82_crit_edge, %for.inc.5.if.then82_crit_edge, %for.inc.4.if.then82_crit_edge, %for.inc.3.if.then82_crit_edge, %for.inc.2.if.then82_crit_edge, %for.inc.1.if.then82_crit_edge, %for.inc.if.then82_crit_edge, %if.end70.thread.if.then82_crit_edge
  %57 = ptrtoint ptr %irq228 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool84.not = icmp eq i32 %58, 0
  br i1 %tobool84.not, label %do.end102, label %if.then82.do.body130_crit_edge, !prof !804

if.then82.do.body130_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

do.end102:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2115, i32 noundef 9, ptr noundef null) #11
  br label %do.body130

if.end116:                                        ; preds = %if.end70.thread
  %call117 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118 = and i32 %call117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %for.inc, label %if.end116.do.body130_crit_edge

if.end116.do.body130_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc:                                          ; preds = %if.end116
  %call79.1 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.1)
  %cmp80.not.1 = icmp eq i32 %call79.1, 0
  br i1 %cmp80.not.1, label %if.end116.1, label %for.inc.if.then82_crit_edge

for.inc.if.then82_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.1:                                      ; preds = %for.inc
  %call117.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.1 = and i32 %call117.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.1)
  %tobool119.not.1 = icmp eq i32 %and118.1, 0
  br i1 %tobool119.not.1, label %for.inc.1, label %if.end116.1.do.body130_crit_edge

if.end116.1.do.body130_crit_edge:                 ; preds = %if.end116.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.1:                                        ; preds = %if.end116.1
  %call79.2 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.2)
  %cmp80.not.2 = icmp eq i32 %call79.2, 0
  br i1 %cmp80.not.2, label %if.end116.2, label %for.inc.1.if.then82_crit_edge

for.inc.1.if.then82_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.2:                                      ; preds = %for.inc.1
  %call117.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.2 = and i32 %call117.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.2)
  %tobool119.not.2 = icmp eq i32 %and118.2, 0
  br i1 %tobool119.not.2, label %for.inc.2, label %if.end116.2.do.body130_crit_edge

if.end116.2.do.body130_crit_edge:                 ; preds = %if.end116.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.2:                                        ; preds = %if.end116.2
  %call79.3 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.3)
  %cmp80.not.3 = icmp eq i32 %call79.3, 0
  br i1 %cmp80.not.3, label %if.end116.3, label %for.inc.2.if.then82_crit_edge

for.inc.2.if.then82_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.3:                                      ; preds = %for.inc.2
  %call117.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.3 = and i32 %call117.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.3)
  %tobool119.not.3 = icmp eq i32 %and118.3, 0
  br i1 %tobool119.not.3, label %for.inc.3, label %if.end116.3.do.body130_crit_edge

if.end116.3.do.body130_crit_edge:                 ; preds = %if.end116.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.3:                                        ; preds = %if.end116.3
  %call79.4 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.4)
  %cmp80.not.4 = icmp eq i32 %call79.4, 0
  br i1 %cmp80.not.4, label %if.end116.4, label %for.inc.3.if.then82_crit_edge

for.inc.3.if.then82_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.4:                                      ; preds = %for.inc.3
  %call117.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.4 = and i32 %call117.4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.4)
  %tobool119.not.4 = icmp eq i32 %and118.4, 0
  br i1 %tobool119.not.4, label %for.inc.4, label %if.end116.4.do.body130_crit_edge

if.end116.4.do.body130_crit_edge:                 ; preds = %if.end116.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.4:                                        ; preds = %if.end116.4
  %call79.5 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.5)
  %cmp80.not.5 = icmp eq i32 %call79.5, 0
  br i1 %cmp80.not.5, label %if.end116.5, label %for.inc.4.if.then82_crit_edge

for.inc.4.if.then82_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.5:                                      ; preds = %for.inc.4
  %call117.5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.5 = and i32 %call117.5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.5)
  %tobool119.not.5 = icmp eq i32 %and118.5, 0
  br i1 %tobool119.not.5, label %for.inc.5, label %if.end116.5.do.body130_crit_edge

if.end116.5.do.body130_crit_edge:                 ; preds = %if.end116.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.5:                                        ; preds = %if.end116.5
  %call79.6 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.6)
  %cmp80.not.6 = icmp eq i32 %call79.6, 0
  br i1 %cmp80.not.6, label %if.end116.6, label %for.inc.5.if.then82_crit_edge

for.inc.5.if.then82_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.6:                                      ; preds = %for.inc.5
  %call117.6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.6 = and i32 %call117.6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.6)
  %tobool119.not.6 = icmp eq i32 %and118.6, 0
  br i1 %tobool119.not.6, label %for.inc.6, label %if.end116.6.do.body130_crit_edge

if.end116.6.do.body130_crit_edge:                 ; preds = %if.end116.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.6:                                        ; preds = %if.end116.6
  %call79.7 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.7)
  %cmp80.not.7 = icmp eq i32 %call79.7, 0
  br i1 %cmp80.not.7, label %if.end116.7, label %for.inc.6.if.then82_crit_edge

for.inc.6.if.then82_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.7:                                      ; preds = %for.inc.6
  %call117.7 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.7 = and i32 %call117.7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.7)
  %tobool119.not.7 = icmp eq i32 %and118.7, 0
  br i1 %tobool119.not.7, label %for.inc.7, label %if.end116.7.do.body130_crit_edge

if.end116.7.do.body130_crit_edge:                 ; preds = %if.end116.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.7:                                        ; preds = %if.end116.7
  %call79.8 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.8)
  %cmp80.not.8 = icmp eq i32 %call79.8, 0
  br i1 %cmp80.not.8, label %if.end116.8, label %for.inc.7.if.then82_crit_edge

for.inc.7.if.then82_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.8:                                      ; preds = %for.inc.7
  %call117.8 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.8 = and i32 %call117.8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.8)
  %tobool119.not.8 = icmp eq i32 %and118.8, 0
  br i1 %tobool119.not.8, label %for.inc.8, label %if.end116.8.do.body130_crit_edge

if.end116.8.do.body130_crit_edge:                 ; preds = %if.end116.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

for.inc.8:                                        ; preds = %if.end116.8
  %call79.9 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %timeout.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.9)
  %cmp80.not.9 = icmp eq i32 %call79.9, 0
  br i1 %cmp80.not.9, label %if.end116.9, label %for.inc.8.if.then82_crit_edge

for.inc.8.if.then82_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end116.9:                                      ; preds = %for.inc.8
  %call117.9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1842) #11
  %and118.9 = and i32 %call117.9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.9)
  %tobool119.not.9 = icmp eq i32 %and118.9, 0
  br i1 %tobool119.not.9, label %do.end127, label %if.end116.9.do.body130_crit_edge

if.end116.9.do.body130_crit_edge:                 ; preds = %if.end116.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

do.end127:                                        ; preds = %if.end116.9
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.372) #14
  br label %do.body130

do.body130:                                       ; preds = %do.end127, %if.end116.9.do.body130_crit_edge, %if.end116.8.do.body130_crit_edge, %if.end116.7.do.body130_crit_edge, %if.end116.6.do.body130_crit_edge, %if.end116.5.do.body130_crit_edge, %if.end116.4.do.body130_crit_edge, %if.end116.3.do.body130_crit_edge, %if.end116.2.do.body130_crit_edge, %if.end116.1.do.body130_crit_edge, %if.end116.do.body130_crit_edge, %do.end102, %if.then82.do.body130_crit_edge
  %ret.2 = phi i32 [ -110, %do.end127 ], [ 1, %if.then82.do.body130_crit_edge ], [ 1, %do.end102 ], [ %call117, %if.end116.do.body130_crit_edge ], [ %call117.1, %if.end116.1.do.body130_crit_edge ], [ %call117.2, %if.end116.2.do.body130_crit_edge ], [ %call117.3, %if.end116.3.do.body130_crit_edge ], [ %call117.4, %if.end116.4.do.body130_crit_edge ], [ %call117.5, %if.end116.5.do.body130_crit_edge ], [ %call117.6, %if.end116.6.do.body130_crit_edge ], [ %call117.7, %if.end116.7.do.body130_crit_edge ], [ %call117.8, %if.end116.8.do.body130_crit_edge ], [ %call117.9, %if.end116.9.do.body130_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_set_fll.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_set_fll, %if.then142)) #11
          to label %do.end146 [label %if.then142], !srcloc !803

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_set_fll.__UNIQUE_ID_ddebug333, ptr noundef %62, ptr noundef nonnull @.str.374, i32 noundef %Fref, i32 noundef %Fout) #11
  br label %do.end146

do.end146:                                        ; preds = %if.then142, %do.body130
  %fll_fref147 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 7
  %63 = ptrtoint ptr %fll_fref147 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %Fref, ptr %fll_fref147, align 4
  %fll_fout148 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 8
  %64 = ptrtoint ptr %fll_fout148 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %Fout, ptr %fll_fout148, align 4
  %65 = ptrtoint ptr %fll_src to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %source, ptr %fll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end146, %do.end26, %if.end16.cleanup_crit_edge, %if.then.i, %do.end.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end26 ], [ %ret.2, %do.end146 ], [ 0, %land.lhs.true2.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fll_div) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8996_seq_notifier(ptr noundef %component, i32 noundef %event, i32 noundef %subseq) #0 align 64 {
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
  %dcs_pending = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcs_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_seq_notifier.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_seq_notifier, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !803

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dcs_pending, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_seq_notifier.__UNIQUE_ID_ddebug324, ptr noundef %7, ptr noundef nonnull @.str.388, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %10 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dcs_pending, align 4
  %shl = shl i16 %11, 4
  tail call fastcc void @wait_for_dc_servo(ptr noundef %component, i16 noundef zeroext %shl)
  %12 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %dcs_pending, align 4
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %hpout_pending = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %hpout_pending to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hpout_pending, align 2
  %hpout_ena = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %hpout_ena to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hpout_ena, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp.not = icmp eq i16 %14, %16
  br i1 %cmp.not, label %if.end11.if.end106_crit_edge, label %do.body16

if.end11.if.end106_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

do.body16:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_seq_notifier.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_seq_notifier, %if.then28)) #11
          to label %do.end36 [label %if.then28], !srcloc !803

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %hpout_ena to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hpout_ena, align 4
  %conv31 = zext i16 %20 to i32
  %21 = ptrtoint ptr %hpout_pending to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hpout_pending, align 2
  %conv33 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_seq_notifier.__UNIQUE_ID_ddebug325, ptr noundef %18, ptr noundef nonnull @.str.389, i32 noundef %conv31, i32 noundef %conv33) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then28, %do.body16
  %23 = ptrtoint ptr %hpout_pending to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hpout_pending, align 2
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool39.not = icmp eq i16 %25, 0
  %. = select i1 %tobool39.not, i32 224, i32 192
  %.139 = select i1 %tobool39.not, i16 0, i16 192
  %26 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool53.not = icmp eq i16 %26, 0
  %27 = or i16 %.139, 12
  %mask.1.v = select i1 %tobool53.not, i32 14, i32 12
  %mask.1 = or i32 %., %mask.1.v
  %val.1 = select i1 %tobool53.not, i16 %.139, i16 %27
  %conv67 = zext i16 %val.1 to i32
  %call68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 96, i32 noundef %mask.1, i32 noundef %conv67) #11
  %28 = ptrtoint ptr %hpout_pending to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hpout_pending, align 2
  %30 = and i16 %29, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool72.not = icmp eq i16 %30, 0
  %mask.2 = select i1 %tobool72.not, i32 224, i32 192
  %val.2 = select i1 %tobool72.not, i16 0, i16 192
  %31 = and i16 %29, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool88.not = icmp eq i16 %31, 0
  %32 = or i16 %val.2, 12
  %mask.3.v = select i1 %tobool88.not, i32 14, i32 12
  %mask.3 = or i32 %mask.2, %mask.3.v
  %val.3 = select i1 %tobool88.not, i16 %val.2, i16 %32
  %conv102 = zext i16 %val.3 to i32
  %call103 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 97, i32 noundef %mask.3, i32 noundef %conv102) #11
  %33 = ptrtoint ptr %hpout_pending to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hpout_pending, align 2
  %35 = ptrtoint ptr %hpout_ena to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %hpout_ena, align 4
  br label %if.end106

if.end106:                                        ; preds = %do.end36, %if.end11.if.end106_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.412)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb18
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 16, i32 noundef 0) #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 33, i32 noundef 16, i32 noundef 0) #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb3.if.end15_crit_edge

sw.bb3.if.end15_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %sw.bb3
  %supplies = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 14
  %call5 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef %call5) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ldo_ena = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %ldo_ena to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ldo_ena, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp8 = icmp sgt i32 %10, -1
  br i1 %cmp8, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %10) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 5) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %regmap = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext false) #11
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regcache_sync(ptr noundef %14) #11
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %sw.bb3.if.end15_crit_edge
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 16, i32 noundef 16) #11
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 33, i32 noundef 16, i32 noundef 16) #11
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %regmap19 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap19, align 4
  tail call void @regcache_cache_only(ptr noundef %16, i1 noundef zeroext true) #11
  %ldo_ena21 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %ldo_ena21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ldo_ena21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp22 = icmp sgt i32 %18, -1
  br i1 %cmp22, label %if.then23, label %sw.bb18.if.end27_crit_edge

sw.bb18.if.end27_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %call.i50 = tail call ptr @gpio_to_desc(i32 noundef %18) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i50, i32 noundef 0) #11
  %19 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap19, align 4
  tail call void @regcache_cache_only(ptr noundef %20, i1 noundef zeroext true) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %sw.bb18.if.end27_crit_edge
  %supplies28 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 14
  %call30 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end15, %do.end, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end27 ], [ 0, %if.end15 ], [ 0, %sw.bb ]
  ret i32 %retval.0
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
declare dso_local i32 @snd_soc_bytes_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_put(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_regulator_event(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 5) #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 625, i32 noundef 9, ptr noundef nonnull @.str.269, i32 noundef %event) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bg_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.413)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 8, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %bg_ena.i = getelementptr inbounds %struct.wm8996_priv, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %bg_ena.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bg_ena.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %bg_ena.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 2) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dev.i.i19 = getelementptr i8, ptr %1, i32 -164
  %9 = ptrtoint ptr %dev.i.i19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i19, align 4
  %driver_data.i.i.i20 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i20, align 4
  %bg_ena.i21 = getelementptr inbounds %struct.wm8996_priv, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %bg_ena.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bg_ena.i21, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %bg_ena.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i23, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i23:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 610, i32 noundef 9, ptr noundef nonnull @.str.269, i32 noundef %event) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i23, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.then.i23 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcs_start(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %dcs_pending = getelementptr inbounds %struct.wm8996_priv, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %dcs_pending to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dcs_pending, align 4
  %10 = trunc i32 %shl to i16
  %conv3 = or i16 %9, %10
  store i16 %conv3, ptr %dcs_pending, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 766, i32 noundef 9, ptr noundef nonnull @.str.269, i32 noundef %event) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmv_short_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.414)
  switch i32 %event, label %do.end [
    i32 4, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv = zext i8 %8 to i16
  %neg = xor i16 %conv, -1
  %hpout_pending = getelementptr inbounds %struct.wm8996_priv, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %hpout_pending to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hpout_pending, align 2
  %and = and i16 %10, %neg
  store i16 %and, ptr %hpout_pending, align 2
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shift5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift5, align 4
  %conv6 = zext i8 %12 to i16
  %hpout_pending7 = getelementptr inbounds %struct.wm8996_priv, ptr %5, i32 0, i32 13
  %13 = ptrtoint ptr %hpout_pending7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hpout_pending7, align 2
  %or = or i16 %14, %conv6
  store i16 %or, ptr %hpout_pending7, align 2
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 646, i32 noundef 9, ptr noundef nonnull @.str.269, i32 noundef %event) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb4, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8996_retune_mobile_pdata(ptr noundef %component) unnamed_addr #0 align 64 {
entry:
  %controls = alloca [2 x %struct.snd_kcontrol_new], align 4
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
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %controls) #11
  %4 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %controls, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 2
  %6 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %subdevice, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.316, ptr %name, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %index, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 5
  %9 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %access, align 4
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 6
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %count, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 7
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_soc_info_enum_double, ptr %info, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 8
  %12 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wm8996_get_retune_mobile_enum, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 9
  %13 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wm8996_put_retune_mobile_enum, ptr %put, align 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 10
  %14 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tlv, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 0, i32 11
  %retune_mobile_enum = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 23
  %15 = ptrtoint ptr %retune_mobile_enum to i32
  %16 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %private_value, align 4
  %arrayinit.element = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1
  %17 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayinit.element, align 4
  %device3 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 1
  %18 = ptrtoint ptr %device3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %device3, align 4
  %subdevice4 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 2
  %19 = ptrtoint ptr %subdevice4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %subdevice4, align 4
  %name5 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 3
  %20 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.317, ptr %name5, align 4
  %index6 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 4
  %21 = ptrtoint ptr %index6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %index6, align 4
  %access7 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 5
  %22 = ptrtoint ptr %access7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %access7, align 4
  %count8 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 6
  %23 = ptrtoint ptr %count8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %count8, align 4
  %info9 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 7
  %24 = ptrtoint ptr %info9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @snd_soc_info_enum_double, ptr %info9, align 4
  %get10 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 8
  %25 = ptrtoint ptr %get10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @wm8996_get_retune_mobile_enum, ptr %get10, align 4
  %put11 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 9
  %26 = ptrtoint ptr %put11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @wm8996_put_retune_mobile_enum, ptr %put11, align 4
  %tlv12 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 10
  %27 = ptrtoint ptr %tlv12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tlv12, align 4
  %private_value13 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls, i32 1, i32 11
  %28 = ptrtoint ptr %private_value13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %15, ptr %private_value13, align 4
  %num_retune_mobile_texts = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 20
  %29 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %num_retune_mobile_texts, align 4
  %retune_mobile_texts = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 21
  %30 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %retune_mobile_texts, align 4
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 8
  %31 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp100 = icmp sgt i32 %32, 0
  br i1 %cmp100, label %for.cond15.preheader.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond15.preheader.lr.ph:                       ; preds = %entry
  %retune_mobile_cfgs = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 9
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc42.for.cond15.preheader_crit_edge, %for.cond15.preheader.lr.ph
  %i.0101 = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %inc43, %for.inc42.for.cond15.preheader_crit_edge ]
  %33 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_retune_mobile_texts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1795 = icmp sgt i32 %34, 0
  br i1 %cmp1795, label %for.body18.lr.ph, label %for.cond15.preheader.for.end_crit_edge

for.cond15.preheader.for.end_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body18.lr.ph:                                 ; preds = %for.cond15.preheader
  %35 = ptrtoint ptr %retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retune_mobile_cfgs, align 4
  %arrayidx = getelementptr %struct.wm8996_retune_mobile_config, ptr %36, i32 %i.0101
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %retune_mobile_texts, align 4
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.lr.ph
  %j.096 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc, %for.inc.for.body18_crit_edge ]
  %arrayidx21 = getelementptr ptr, ptr %40, i32 %j.096
  %41 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx21, align 4
  %call22 = tail call i32 @strcmp(ptr noundef %38, ptr noundef %42) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %for.body18.for.end_crit_edge, label %for.inc

for.body18.for.end_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body18
  %inc = add nuw nsw i32 %j.096, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

for.end:                                          ; preds = %for.body18.for.end_crit_edge, %for.cond15.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond15.preheader.for.end_crit_edge ], [ %j.096, %for.body18.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %34)
  %cmp25.not = icmp eq i32 %j.0.lcssa, %34
  br i1 %cmp25.not, label %for.end.if.end27_crit_edge, label %for.end.for.inc42_crit_edge

for.end.for.inc42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc42

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %for.inc.if.end27_crit_edge
  %43 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retune_mobile_texts, align 4
  %add = shl i32 %34, 2
  %mul = add i32 %add, 4
  %call30 = tail call noalias ptr @krealloc(ptr noundef %44, i32 noundef %mul, i32 noundef 3264) #16
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.end27.for.inc42_crit_edge, label %if.end33

if.end27.for.inc42_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc42

if.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %retune_mobile_cfgs, align 4
  %arrayidx35 = getelementptr %struct.wm8996_retune_mobile_config, ptr %46, i32 %i.0101
  %47 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx35, align 4
  %49 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_retune_mobile_texts, align 4
  %arrayidx38 = getelementptr ptr, ptr %call30, i32 %50
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %arrayidx38, align 4
  %52 = load i32, ptr %num_retune_mobile_texts, align 4
  %inc40 = add i32 %52, 1
  store i32 %inc40, ptr %num_retune_mobile_texts, align 4
  %53 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call30, ptr %retune_mobile_texts, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %if.end33, %if.end27.for.inc42_crit_edge, %for.end.for.inc42_crit_edge
  %inc43 = add nuw nsw i32 %i.0101, 1
  %54 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_retune_mobile_cfgs, align 4
  %cmp = icmp slt i32 %inc43, %55
  br i1 %cmp, label %for.inc42.for.cond15.preheader_crit_edge, label %for.inc42.do.body_crit_edge

for.inc42.do.body_crit_edge:                      ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc42.for.cond15.preheader_crit_edge:         ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader

do.body:                                          ; preds = %for.inc42.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_retune_mobile_pdata.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_retune_mobile_pdata, %if.then48)) #11
          to label %do.end [label %if.then48], !srcloc !803

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_retune_mobile_texts, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_retune_mobile_pdata.__UNIQUE_ID_ddebug344, ptr noundef %57, ptr noundef nonnull @.str.320, i32 noundef %59) #11
  br label %do.end

do.end:                                           ; preds = %if.then48, %do.body
  %60 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_retune_mobile_texts, align 4
  %items = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 23, i32 3
  %62 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %items, align 4
  %63 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %retune_mobile_texts, align 4
  %texts = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 23, i32 5
  %65 = ptrtoint ptr %texts to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %texts, align 4
  %call55 = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %controls, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, 0
  br i1 %cmp56.not, label %do.end.if.end62_crit_edge, label %do.end60

do.end.if.end62_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.end60:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.321, i32 noundef %call55) #14
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %do.end.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %controls) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_edge_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.peel = tail call i32 @wm8996_irq(i32 noundef %irq, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.peel)
  %cmp.not.peel = icmp eq i32 %call.peel, 0
  br i1 %cmp.not.peel, label %entry.do.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call = tail call i32 @wm8996_irq(i32 noundef %irq, ptr noundef %data)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body.do.end_crit_edge, label %do.body.do.body_crit_edge, !llvm.loop !805

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %do.body.do.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
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
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %data, i32 noundef 1841) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.344, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %data, i32 noundef 1849) #11
  %neg = xor i32 %call2, -1
  %and = and i32 %call1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %data, i32 noundef 1841, i32 noundef %and) #11
  %and6 = and i32 %and, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end19_crit_edge, label %do.body9

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body9:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_irq.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_irq, %if.then14)) #11
          to label %do.end18 [label %if.then14], !srcloc !803

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_irq.__UNIQUE_ID_ddebug342, ptr noundef %7, ptr noundef nonnull @.str.346) #11
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body9
  %dcs_done = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 11
  tail call void @complete(ptr noundef %dcs_done) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.end4.if.end19_crit_edge
  %and20 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %do.end25

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.348) #14
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.end19.if.end27_crit_edge
  %and28 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end48_crit_edge, label %do.body31

if.end27.if.end48_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.body31:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_irq.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_irq, %if.then43)) #11
          to label %do.end47 [label %if.then43], !srcloc !803

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_irq.__UNIQUE_ID_ddebug343, ptr noundef %11, ptr noundef nonnull @.str.350) #11
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %fll_lock = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 9
  tail call void @complete(ptr noundef %fll_lock) #11
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end27.if.end48_crit_edge
  %and49 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wm8996_micd(ptr noundef %data)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48.if.end52_crit_edge
  %and53 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.then55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wm8996_hpdet_irq(ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end52.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then55 ], [ 1, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8996_get_retune_mobile_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(13) @.str.316) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(13) @.str.317) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.i.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.wm8996_priv, ptr %5, i32 0, i32 22, i32 %retval.0.i.ph
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_put_retune_mobile_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(13) @.str.316) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(13) @.str.317) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.i.if.end_crit_edge ]
  %value421 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value421 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value421, align 8
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8996_priv, ptr %5, i32 0, i32 17, i32 8
  %8 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not = icmp slt i32 %7, %9
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8 = getelementptr %struct.wm8996_priv, ptr %5, i32 0, i32 22, i32 %retval.0.i.ph
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx8, align 4
  tail call fastcc void @wm8996_set_retune_mobile(ptr noundef %1, i32 noundef %retval.0.i.ph)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8996_set_retune_mobile(ptr noundef %component, i32 noundef %block) unnamed_addr #0 align 64 {
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
  %num_retune_mobile_texts = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_retune_mobile_texts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %block to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.415)
  switch i32 %block, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 8) #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 8) #11
  %and8 = lshr i32 %call7, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %iface.0.in = phi i32 [ %call2, %sw.bb ], [ %and8, %sw.bb6 ]
  %base.0 = phi i32 [ 1152, %sw.bb ], [ 1153, %sw.bb6 ]
  %iface.0 = and i32 %iface.0.in, 1
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 8
  %7 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp118 = icmp sgt i32 %8, 0
  br i1 %cmp118, label %for.body.lr.ph, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %sw.epilog
  %arrayidx = getelementptr %struct.wm8996_priv, ptr %3, i32 0, i32 22, i32 %block
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %retune_mobile_cfgs = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 9
  %11 = ptrtoint ptr %retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retune_mobile_cfgs, align 4
  %retune_mobile_texts = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 21
  %13 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %retune_mobile_texts, align 4
  %arrayidx14 = getelementptr ptr, ptr %14, i32 %10
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14, align 4
  %arrayidx19 = getelementptr %struct.wm8996_priv, ptr %3, i32 0, i32 18, i32 %iface.0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %best.1, %for.inc.for.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_val.0119 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.wm8996_retune_mobile_config, ptr %12, i32 %i.0120
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx13, align 4
  %call15 = tail call i32 @strcmp(ptr noundef %18, ptr noundef %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rate = getelementptr %struct.wm8996_retune_mobile_config, ptr %12, i32 %i.0120, i32 1
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19, align 4
  %sub = sub i32 %20, %22
  %23 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %best_val.0119)
  %cmp22 = icmp slt i32 %23, %best_val.0119
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %best_val.0119)
  %spec.select117 = select i1 %cmp22, i32 %i.0120, i32 %best.0122
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %best_val.1 = phi i32 [ %best_val.0119, %for.body.for.inc_crit_edge ], [ %24, %land.lhs.true ]
  %best.1 = phi i32 [ %best.0122, %for.body.for.inc_crit_edge ], [ %spec.select117, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %sw.epilog.do.body_crit_edge
  %best.0.lcssa = phi i32 [ 0, %sw.epilog.do.body_crit_edge ], [ %best.1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_set_retune_mobile.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_set_retune_mobile, %if.then44)) #11
          to label %do.end [label %if.then44], !srcloc !803

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %retune_mobile_cfgs45 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 9
  %27 = ptrtoint ptr %retune_mobile_cfgs45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %retune_mobile_cfgs45, align 4
  %arrayidx46 = getelementptr %struct.wm8996_retune_mobile_config, ptr %28, i32 %best.0.lcssa
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx46, align 4
  %rate50 = getelementptr %struct.wm8996_retune_mobile_config, ptr %28, i32 %best.0.lcssa, i32 1
  %31 = ptrtoint ptr %rate50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate50, align 4
  %arrayidx52 = getelementptr %struct.wm8996_priv, ptr %3, i32 0, i32 18, i32 %iface.0
  %33 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_set_retune_mobile.__UNIQUE_ID_ddebug321, ptr noundef %26, ptr noundef nonnull @.str.323, i32 noundef %block, ptr noundef %30, i32 noundef %32, i32 noundef %34) #11
  br label %do.end

do.end:                                           ; preds = %if.then44, %do.body
  %call54 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %base.0) #11
  %retune_mobile_cfgs59 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 17, i32 9
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %do.end
  %i.1123 = phi i32 [ 0, %do.end ], [ %inc64, %for.body58.for.body58_crit_edge ]
  %add = add nuw nsw i32 %i.1123, %base.0
  %35 = ptrtoint ptr %retune_mobile_cfgs59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retune_mobile_cfgs59, align 4
  %arrayidx61 = getelementptr %struct.wm8996_retune_mobile_config, ptr %36, i32 %best.0.lcssa, i32 2, i32 %i.1123
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx61, align 2
  %conv = zext i16 %38 to i32
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %add, i32 noundef 65535, i32 noundef %conv) #11
  %inc64 = add nuw nsw i32 %i.1123, 1
  %exitcond124.not = icmp eq i32 %inc64, 20
  br i1 %exitcond124.not, label %for.end65, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body58

for.end65:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #13
  %and55 = and i32 %call54, 1
  %call66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %base.0, i32 noundef 1, i32 noundef %and55) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end65, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8996_micd(ptr noundef %component) unnamed_addr #0 align 64 {
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
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 58) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_micd.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_micd, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !803

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_micd.__UNIQUE_ID_ddebug336, ptr noundef %5, ptr noundef nonnull @.str.352, i32 noundef %call1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %call1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.353) #14
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %and12 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body15, label %if.end33

do.body15:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_micd.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_micd, %if.then27)) #11
          to label %do.end31 [label %if.then27], !srcloc !803

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_micd.__UNIQUE_ID_ddebug337, ptr noundef %9, ptr noundef nonnull @.str.355) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %jack_mic = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %jack_mic to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %jack_mic, align 1
  %detecting = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 25
  %11 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %detecting, align 4
  %jack_flips = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 27
  %12 = ptrtoint ptr %jack_flips to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %jack_flips, align 4
  %jack = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 24
  %13 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %14, i32 noundef 0, i32 noundef 16391) #11
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 65280, i32 noundef 40704) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end11
  %and34 = and i32 %call1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %detecting79 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 25
  %15 = ptrtoint ptr %detecting79 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %detecting79, align 4, !range !807
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool80.not = icmp eq i8 %16, 0
  br i1 %tobool35.not, label %if.end78, label %if.then36

if.then36:                                        ; preds = %if.end33
  br i1 %tobool80.not, label %do.body59, label %do.body40

do.body40:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_micd.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_micd, %if.then52)) #11
          to label %do.end56 [label %if.then52], !srcloc !803

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_micd.__UNIQUE_ID_ddebug338, ptr noundef %18, ptr noundef nonnull @.str.356) #11
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body40
  %jack_mic57 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 26
  %19 = ptrtoint ptr %jack_mic57 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %jack_mic57, align 1
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 96, i32 noundef 136, i32 noundef 136) #11
  %call2.i = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.182) #11
  %call3.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i.i) #11
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 1, i32 noundef 0) #11
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 3, i32 noundef 1) #11
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 52, i32 noundef 1, i32 noundef 1) #11
  %call58 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 65280, i32 noundef 29952) #11
  br label %cleanup

do.body59:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_micd.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_micd, %if.then71)) #11
          to label %do.end75 [label %if.then71], !srcloc !803

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_micd.__UNIQUE_ID_ddebug339, ptr noundef %21, ptr noundef nonnull @.str.357) #11
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %do.body59
  %jack76 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 24
  %22 = ptrtoint ptr %jack76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jack76, align 4
  tail call void @snd_soc_jack_report(ptr noundef %23, i32 noundef 0, i32 noundef 16384) #11
  br label %cleanup

if.end78:                                         ; preds = %if.end33
  %and81 = and i32 %call1, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond = select i1 %tobool80.not, i1 true, i1 %tobool82.not
  br i1 %or.cond, label %if.end116, label %if.then83

if.then83:                                        ; preds = %if.end78
  %jack_flips84 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 27
  %24 = ptrtoint ptr %jack_flips84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %jack_flips84, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %jack_flips84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wm8996_report_headphone(ptr noundef %component)
  br label %cleanup

if.end87:                                         ; preds = %if.then83
  %call88 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 49) #11
  %xor = xor i32 %call88, 7
  %call89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 49, i32 noundef 7, i32 noundef %xor) #11
  %polarity_cb = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 28
  %26 = ptrtoint ptr %polarity_cb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %polarity_cb, align 4
  %tobool90.not = icmp eq ptr %27, null
  br i1 %tobool90.not, label %if.end87.do.body96_crit_edge, label %if.then91

if.end87.do.body96_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body96

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %and93 = lshr i32 %xor, 1
  %and93.lobit = and i32 %and93, 1
  tail call void %27(ptr noundef %component, i32 noundef %and93.lobit) #11
  br label %do.body96

do.body96:                                        ; preds = %if.then91, %if.end87.do.body96_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_micd.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_micd, %if.then108)) #11
          to label %cleanup [label %if.then108], !srcloc !803

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %and110 = lshr i32 %xor, 1
  %and110.lobit = and i32 %and110, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_micd.__UNIQUE_ID_ddebug340, ptr noundef %29, ptr noundef nonnull @.str.358, i32 noundef %and110.lobit) #11
  br label %cleanup

if.end116:                                        ; preds = %if.end78
  %and117 = and i32 %call1, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end116.cleanup_crit_edge, label %if.then119

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then119:                                       ; preds = %if.end116
  %jack_mic120 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 26
  %30 = ptrtoint ptr %jack_mic120 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %jack_mic120, align 1, !range !807
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool121.not = icmp eq i8 %31, 0
  br i1 %tobool121.not, label %if.else141, label %do.body123

do.body123:                                       ; preds = %if.then119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_micd.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_micd, %if.then135)) #11
          to label %do.end139 [label %if.then135], !srcloc !803

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_micd.__UNIQUE_ID_ddebug341, ptr noundef %33, ptr noundef nonnull @.str.359) #11
  br label %do.end139

do.end139:                                        ; preds = %if.then135, %do.body123
  %jack140 = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 24
  %34 = ptrtoint ptr %jack140 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jack140, align 4
  tail call void @snd_soc_jack_report(ptr noundef %35, i32 noundef 16384, i32 noundef 16384) #11
  br label %cleanup

if.else141:                                       ; preds = %if.then119
  br i1 %tobool80.not, label %if.else141.cleanup_crit_edge, label %if.then144

if.else141.cleanup_crit_edge:                     ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then144:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wm8996_report_headphone(ptr noundef %component)
  br label %cleanup

cleanup:                                          ; preds = %if.then144, %if.else141.cleanup_crit_edge, %do.end139, %if.end116.cleanup_crit_edge, %if.then108, %do.body96, %if.then86, %do.end75, %do.end56, %do.end31, %do.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8996_hpdet_irq(ptr noundef %component) unnamed_addr #0 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.362) #14
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %call2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.365) #14
  br label %out

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %call2, 127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_hpdet_irq.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_hpdet_irq, %if.then15)) #11
          to label %do.end19 [label %if.then15], !srcloc !803

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_hpdet_irq.__UNIQUE_ID_ddebug334, ptr noundef %9, ptr noundef nonnull @.str.367, i32 noundef %and9) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %and9)
  %cmp20 = icmp ugt i32 %and9, 125
  %. = select i1 %cmp20, i32 4, i32 1
  br label %out

out:                                              ; preds = %do.end19, %do.end6, %do.end
  %report.0 = phi i32 [ 1, %do.end ], [ 1, %do.end6 ], [ %., %do.end19 ]
  %jack_mic = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %jack_mic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %jack_mic, align 1, !range !807
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool23.not = icmp eq i8 %11, 0
  %or = or i32 %report.0, 2
  %spec.select = select i1 %tobool23.not, i32 %report.0, i32 %or
  %jack = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 24
  %12 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %13, i32 noundef %spec.select, i32 noundef 7) #11
  %detecting = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 25
  %14 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %detecting, align 4
  %call26 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1) #11
  %and27 = and i32 %call26, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %out.if.end31_crit_edge

out.if.end31_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 96, i32 noundef 136, i32 noundef 0) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %out.if.end31_crit_edge
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 3, i32 noundef 0) #11
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 1, i32 noundef 1) #11
  %call34 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.182) #11
  %call35 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8996_report_headphone(ptr noundef %component) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_report_headphone.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_report_headphone, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !803

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_report_headphone.__UNIQUE_ID_ddebug335, ptr noundef %1, ptr noundef nonnull @.str.361) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 96, i32 noundef 136, i32 noundef 136) #11
  %call2.i = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.182) #11
  %call3.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i.i) #11
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 1, i32 noundef 0) #11
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 3, i32 noundef 1) #11
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 52, i32 noundef 1, i32 noundef 1) #11
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 65280, i32 noundef 30464) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fll_factors(ptr nocapture noundef %fll_div, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fll_refclk_div = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %0 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %fll_refclk_div, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %Fref)
  %cmp = icmp ugt i32 %Fref, 13500000
  br i1 %cmp, label %while.body, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body:                                       ; preds = %entry
  %1 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %fll_refclk_div, align 2
  %inc = add i16 %2, 1
  store i16 %inc, ptr %fll_refclk_div, align 2
  %div1.1232 = lshr i32 %Fref, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %Fref)
  %cmp.1 = icmp ugt i32 %Fref, 27000001
  br i1 %cmp.1, label %while.body.1, label %while.body.do.body4_crit_edge

while.body.do.body4_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body.1:                                     ; preds = %while.body
  %3 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fll_refclk_div, align 2
  %inc.1 = add i16 %4, 1
  store i16 %inc.1, ptr %fll_refclk_div, align 2
  %div1.2233 = lshr i32 %Fref, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000003, i32 %Fref)
  %cmp.2 = icmp ugt i32 %Fref, 54000003
  br i1 %cmp.2, label %while.body.2, label %while.body.1.do.body4_crit_edge

while.body.1.do.body4_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body.2:                                     ; preds = %while.body.1
  %5 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fll_refclk_div, align 2
  %inc.2 = add i16 %6, 1
  store i16 %inc.2, ptr %fll_refclk_div, align 2
  %div1.3234 = lshr i32 %Fref, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000007, i32 %Fref)
  %cmp.3 = icmp ugt i32 %Fref, 108000007
  br i1 %cmp.3, label %while.body.3, label %while.body.2.do.body4_crit_edge

while.body.2.do.body4_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fll_refclk_div, align 2
  %inc.3 = add i16 %8, 1
  store i16 %inc.3, ptr %fll_refclk_div, align 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, i32 noundef %Fref) #14
  br label %cleanup

do.body4:                                         ; preds = %while.body.2.do.body4_crit_edge, %while.body.1.do.body4_crit_edge, %while.body.do.body4_crit_edge, %entry.do.body4_crit_edge
  %div1.lcssa = phi i32 [ %Fref, %entry.do.body4_crit_edge ], [ %div1.1232, %while.body.do.body4_crit_edge ], [ %div1.2233, %while.body.1.do.body4_crit_edge ], [ %div1.3234, %while.body.2.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then9)) #11
          to label %do.end12 [label %if.then9], !srcloc !803

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.377, i32 noundef %Fref, i32 noundef %Fout) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999999, i32 %div1.lcssa)
  %cmp14 = icmp ugt i32 %div1.lcssa, 2999999
  %fll_loop_gain = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  br i1 %cmp14, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %fll_loop_gain to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5, ptr %fll_loop_gain, align 2
  br label %if.end22

if.end17:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %fll_loop_gain to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %fll_loop_gain, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %div1.lcssa)
  %cmp18 = icmp ult i32 %div1.lcssa, 48000
  %spec.select = zext i1 %cmp18 to i16
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %if.end17.thread
  %.sink = phi i16 [ 0, %if.end17.thread ], [ %spec.select, %if.end17 ]
  %fll_ref_freq21 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %11 = ptrtoint ptr %fll_ref_freq21 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink, ptr %fll_ref_freq21, align 2
  br label %while.cond23

while.cond23:                                     ; preds = %while.body26.while.cond23_crit_edge, %if.end22
  %div.1 = phi i32 [ 2, %if.end22 ], [ %inc27, %while.body26.while.cond23_crit_edge ]
  %mul24 = mul i32 %div.1, %Fout
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %mul24)
  %cmp25 = icmp ult i32 %mul24, 90000000
  br i1 %cmp25, label %while.body26, label %while.end36

while.body26:                                     ; preds = %while.cond23
  %inc27 = add nuw nsw i32 %div.1, 1
  %exitcond = icmp eq i32 %inc27, 65
  br i1 %exitcond, label %do.end32, label %while.body26.while.cond23_crit_edge

while.body26.while.cond23_crit_edge:              ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond23

do.end32:                                         ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.379, i32 noundef %Fout) #14
  br label %cleanup

while.end36:                                      ; preds = %while.cond23
  %12 = trunc i32 %div.1 to i16
  %conv = add nsw i16 %12, -1
  %fll_outdiv = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %13 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %fll_outdiv, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then50)) #11
          to label %land.lhs.true [label %if.then50], !srcloc !803

if.then50:                                        ; preds = %while.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.381, i32 noundef %mul24) #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then50, %while.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %div1.lcssa)
  %cmp59.not = icmp ugt i32 %div1.lcssa, 64000
  br i1 %cmp59.not, label %land.lhs.true.1, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %div1.lcssa)
  %cmp59.not.1 = icmp ugt i32 %div1.lcssa, 128000
  br i1 %cmp59.not.1, label %land.lhs.true.2, label %land.lhs.true.1.if.end75_crit_edge

land.lhs.true.1.if.end75_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %div1.lcssa)
  %cmp59.not.2 = icmp ugt i32 %div1.lcssa, 256000
  br i1 %cmp59.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.end75_crit_edge

land.lhs.true.2.if.end75_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div1.lcssa)
  %cmp59.not.3 = icmp ugt i32 %div1.lcssa, 1000000
  br i1 %cmp59.not.3, label %land.lhs.true.4, label %land.lhs.true.3.if.end75_crit_edge

land.lhs.true.3.if.end75_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %div1.lcssa)
  %cmp59.not.4 = icmp ugt i32 %div1.lcssa, 13500000
  br i1 %cmp59.not.4, label %do.end72, label %land.lhs.true.4.if.end75_crit_edge

land.lhs.true.4.if.end75_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.end72:                                         ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.383, i32 noundef %div1.lcssa) #14
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true.4.if.end75_crit_edge, %land.lhs.true.3.if.end75_crit_edge, %land.lhs.true.2.if.end75_crit_edge, %land.lhs.true.1.if.end75_crit_edge, %land.lhs.true.if.end75_crit_edge
  %i.0225.lcssa = phi i32 [ 0, %land.lhs.true.if.end75_crit_edge ], [ 1, %land.lhs.true.1.if.end75_crit_edge ], [ 2, %land.lhs.true.2.if.end75_crit_edge ], [ 3, %land.lhs.true.3.if.end75_crit_edge ], [ 4, %land.lhs.true.4.if.end75_crit_edge ]
  %fll_fratio = getelementptr [5 x %struct.anon.109], ptr @fll_fratios, i32 0, i32 %i.0225.lcssa, i32 2
  %14 = ptrtoint ptr %fll_fratio to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fll_fratio, align 4
  %16 = ptrtoint ptr %fll_div to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %fll_div, align 2
  %ratio = getelementptr [5 x %struct.anon.109], ptr @fll_fratios, i32 0, i32 %i.0225.lcssa, i32 3
  %17 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ratio, align 4
  %mul76 = mul i32 %18, %div1.lcssa
  %div77 = udiv i32 %mul24, %mul76
  %conv78 = trunc i32 %div77 to i16
  %n = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 5
  %19 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv78, ptr %n, align 2
  %rem = urem i32 %mul24, %div1.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp79 = icmp eq i32 %rem, 0
  br i1 %cmp79, label %if.end75.do.body98_crit_edge, label %if.else82

if.end75.do.body98_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body98

if.else82:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %call84 = tail call i32 @gcd(i32 noundef %mul24, i32 noundef %mul76) #18
  %conv86 = and i32 %div77, 65535
  %mul88 = mul i32 %mul76, %conv86
  %sub89 = sub i32 %mul24, %mul88
  %div90 = udiv i32 %sub89, %call84
  %conv91 = trunc i32 %div90 to i16
  %div94 = udiv i32 %mul76, %call84
  %conv95 = trunc i32 %div94 to i16
  br label %do.body98

do.body98:                                        ; preds = %if.else82, %if.end75.do.body98_crit_edge
  %conv91.sink = phi i16 [ %conv91, %if.else82 ], [ 0, %if.end75.do.body98_crit_edge ]
  %conv95.sink = phi i16 [ %conv95, %if.else82 ], [ 0, %if.end75.do.body98_crit_edge ]
  %20 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv91.sink, ptr %20, align 2
  %22 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv95.sink, ptr %22, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then110)) #11
          to label %do.body120 [label %if.then110], !srcloc !803

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %n, align 2
  %conv112 = zext i16 %25 to i32
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %20, align 2
  %conv114 = zext i16 %27 to i32
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %22, align 2
  %conv116 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.385, i32 noundef %conv112, i32 noundef %conv114, i32 noundef %conv116) #11
  br label %do.body120

do.body120:                                       ; preds = %if.then110, %do.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then132)) #11
          to label %cleanup [label %if.then132], !srcloc !803

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fll_div, align 2
  %conv134 = zext i16 %31 to i32
  %32 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fll_outdiv, align 2
  %conv136 = zext i16 %33 to i32
  %34 = ptrtoint ptr %fll_refclk_div to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fll_refclk_div, align 2
  %conv138 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.386, i32 noundef %conv134, i32 noundef %conv136, i32 noundef %conv138) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %do.body120, %do.end72, %do.end32, %while.body.3
  %retval.0 = phi i32 [ -22, %while.body.3 ], [ -22, %do.end32 ], [ -22, %do.end72 ], [ 0, %if.then132 ], [ 0, %do.body120 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_dc_servo(ptr noundef %component, i16 noundef zeroext %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i16 %mask to i32
  %call1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 81, i32 noundef %conv) #11
  %irq = getelementptr i8, ptr %1, i32 932
  %dcs_done = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond21.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 200, %entry ], [ %timeout.1, %do.cond21.do.body_crit_edge ]
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %dcs_done, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.390) #14
  br label %if.end8

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 1) #11
  %dec = add i32 %timeout.0, -1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %do.end, %if.then.if.end8_crit_edge
  %timeout.1 = phi i32 [ 0, %do.end ], [ %call3, %if.then.if.end8_crit_edge ], [ %dec, %if.else ]
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 81) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_dc_servo.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_dc_servo, %if.then16)) #11
          to label %do.cond21 [label %if.then16], !srcloc !803

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_dc_servo.__UNIQUE_ID_ddebug322, ptr noundef %9, ptr noundef nonnull @.str.392, i32 noundef %call9) #11
  br label %do.cond21

do.cond21:                                        ; preds = %if.then16, %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool22.not = icmp eq i32 %timeout.1, 0
  %and = and i32 %call9, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool24.not
  br i1 %or.cond, label %do.end25, label %do.cond21.do.body_crit_edge

do.cond21.do.body_crit_edge:                      ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end25:                                         ; preds = %do.cond21
  br i1 %tobool22.not, label %do.end31, label %do.body35

do.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.394, i32 noundef %conv) #14
  br label %if.end53

do.body35:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_dc_servo.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_dc_servo, %if.then47)) #11
          to label %if.end53 [label %if.then47], !srcloc !803

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_dc_servo.__UNIQUE_ID_ddebug323, ptr noundef %13, ptr noundef nonnull @.str.396, i32 noundef %conv) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %do.body35, %do.end31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %sysclk = getelementptr inbounds %struct.wm8996_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.wm8996_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %clk_id)
  %cmp2 = icmp eq i32 %9, %clk_id
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 512) #11
  %and = and i32 %call3, 1
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 512, i32 noundef 1, i32 noundef 0) #11
  %switch.tableidx = add i32 %clk_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.400, i32 noundef %clk_id) #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.idx.mult = shl i32 %switch.tableidx, 3
  %13 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %freq, ptr %sysclk, align 4
  %14 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.416)
  switch i32 %freq, label %do.end21 [
    i32 5644800, label %switch.lookup.sw.epilog24.sink.split_crit_edge
    i32 6144000, label %switch.lookup.sw.epilog24.sink.split_crit_edge63
    i32 22579200, label %switch.lookup.sw.bb13_crit_edge
    i32 24576000, label %switch.lookup.sw.bb13_crit_edge64
    i32 11289600, label %switch.lookup.sw.bb15_crit_edge
    i32 12288000, label %switch.lookup.sw.bb15_crit_edge65
    i32 32000, label %switch.lookup.sw.epilog24_crit_edge
    i32 32768, label %switch.lookup.sw.epilog24_crit_edge66
  ]

switch.lookup.sw.epilog24_crit_edge66:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog24

switch.lookup.sw.epilog24_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog24

switch.lookup.sw.bb15_crit_edge65:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

switch.lookup.sw.bb15_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

switch.lookup.sw.bb13_crit_edge64:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

switch.lookup.sw.bb13_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

switch.lookup.sw.epilog24.sink.split_crit_edge63: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog24.sink.split

switch.lookup.sw.epilog24.sink.split_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog24.sink.split

sw.bb13:                                          ; preds = %switch.lookup.sw.bb13_crit_edge, %switch.lookup.sw.bb13_crit_edge64
  %div6162 = lshr i32 %freq, 1
  %15 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div6162, ptr %sysclk, align 4
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb13, %switch.lookup.sw.bb15_crit_edge, %switch.lookup.sw.bb15_crit_edge65
  %ratediv.0 = phi i32 [ 0, %switch.lookup.sw.bb15_crit_edge ], [ 0, %switch.lookup.sw.bb15_crit_edge65 ], [ 2, %sw.bb13 ]
  br label %sw.epilog24.sink.split

do.end21:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.403, i32 noundef %freq) #14
  br label %cleanup

sw.epilog24.sink.split:                           ; preds = %sw.bb15, %switch.lookup.sw.epilog24.sink.split_crit_edge, %switch.lookup.sw.epilog24.sink.split_crit_edge63
  %.sink = phi i32 [ 1, %sw.bb15 ], [ 0, %switch.lookup.sw.epilog24.sink.split_crit_edge ], [ 0, %switch.lookup.sw.epilog24.sink.split_crit_edge63 ]
  %ratediv.1.ph = phi i32 [ %ratediv.0, %sw.bb15 ], [ 0, %switch.lookup.sw.epilog24.sink.split_crit_edge ], [ 0, %switch.lookup.sw.epilog24.sink.split_crit_edge63 ]
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 528, i32 noundef 1, i32 noundef %.sink) #11
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.epilog24.sink.split, %switch.lookup.sw.epilog24_crit_edge, %switch.lookup.sw.epilog24_crit_edge66
  %lfclk.0 = phi i32 [ 32, %switch.lookup.sw.epilog24_crit_edge ], [ 32, %switch.lookup.sw.epilog24_crit_edge66 ], [ 0, %sw.epilog24.sink.split ]
  %ratediv.1 = phi i32 [ 0, %switch.lookup.sw.epilog24_crit_edge ], [ 0, %switch.lookup.sw.epilog24_crit_edge66 ], [ %ratediv.1.ph, %sw.epilog24.sink.split ]
  %sync.0 = phi i32 [ 0, %switch.lookup.sw.epilog24_crit_edge ], [ 0, %switch.lookup.sw.epilog24_crit_edge66 ], [ 32768, %sw.epilog24.sink.split ]
  tail call fastcc void @wm8996_update_bclk(ptr noundef %1)
  %or = or i32 %ratediv.1, %switch.idx.mult
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 512, i32 noundef 26, i32 noundef %or) #11
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 520, i32 noundef 32, i32 noundef %lfclk.0) #11
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 257, i32 noundef 32768, i32 noundef %sync.0) #11
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 512, i32 noundef 1, i32 noundef %and) #11
  %sysclk_src29 = getelementptr inbounds %struct.wm8996_priv, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %sysclk_src29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %clk_id, ptr %sysclk_src29, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog24, %do.end21, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ 0, %sw.epilog24 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.417)
  switch i32 %3, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1653, i32 noundef 9, ptr noundef nonnull @.str.407, i32 noundef %3) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %aifctrl_reg.0 = phi i32 [ 800, %sw.bb2 ], [ 768, %entry.sw.epilog_crit_edge ]
  %bclk_reg.0 = phi i32 [ 801, %sw.bb2 ], [ 769, %entry.sw.epilog_crit_edge ]
  %lrclk_tx_reg.0 = phi i32 [ 803, %sw.bb2 ], [ 771, %entry.sw.epilog_crit_edge ]
  %lrclk_rx_reg.0 = phi i32 [ 805, %sw.bb2 ], [ 773, %entry.sw.epilog_crit_edge ]
  %and = and i32 %fmt, 3840
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.418)
  switch i32 %and, label %sw.epilog.sw.epilog26_crit_edge [
    i32 1024, label %sw.bb22
    i32 768, label %sw.bb18
    i32 512, label %sw.bb19
  ]

sw.epilog.sw.epilog26_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog26

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog26

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog26

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %sw.bb22, %sw.bb19, %sw.bb18, %sw.epilog.sw.epilog26_crit_edge
  %bclk.0 = phi i32 [ 0, %sw.epilog.sw.epilog26_crit_edge ], [ 0, %sw.bb19 ], [ 1024, %sw.bb18 ], [ 1024, %sw.bb22 ]
  %lrclk_rx.0 = phi i32 [ 0, %sw.epilog.sw.epilog26_crit_edge ], [ 4, %sw.bb19 ], [ 0, %sw.bb18 ], [ 4, %sw.bb22 ]
  %and27 = and i32 %fmt, 61440
  %6 = add nsw i32 %and27, -4096
  %7 = lshr exact i32 %6, 12
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.419)
  switch i32 %7, label %sw.epilog26.cleanup_crit_edge [
    i32 3, label %sw.epilog26.sw.epilog38_crit_edge
    i32 1, label %sw.bb28
    i32 2, label %sw.bb31
    i32 0, label %sw.bb33
  ]

sw.epilog26.sw.epilog38_crit_edge:                ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog38

sw.epilog26.cleanup_crit_edge:                    ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb28:                                          ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  %or29 = or i32 %lrclk_rx.0, 1
  br label %sw.epilog38

sw.bb31:                                          ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  %or32 = or i32 %bclk.0, 256
  br label %sw.epilog38

sw.bb33:                                          ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  %or34 = or i32 %bclk.0, 256
  %or35 = or i32 %lrclk_rx.0, 1
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.bb33, %sw.bb31, %sw.bb28, %sw.epilog26.sw.epilog38_crit_edge
  %bclk.1 = phi i32 [ %or34, %sw.bb33 ], [ %or32, %sw.bb31 ], [ %bclk.0, %sw.bb28 ], [ %bclk.0, %sw.epilog26.sw.epilog38_crit_edge ]
  %lrclk_tx.1 = phi i32 [ %or35, %sw.bb33 ], [ %lrclk_rx.0, %sw.bb31 ], [ %or29, %sw.bb28 ], [ %lrclk_rx.0, %sw.epilog26.sw.epilog38_crit_edge ]
  %and39 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 5
  br i1 %9, label %switch.hole_check, label %sw.epilog38.cleanup_crit_edge

sw.epilog38.cleanup_crit_edge:                    ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog38
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8996_set_fmt, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %aifctrl_reg.0, i32 noundef 3, i32 noundef %switch.load) #11
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %bclk_reg.0, i32 noundef 1280, i32 noundef %bclk.1) #11
  %call49 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %lrclk_tx_reg.0, i32 noundef 5, i32 noundef %lrclk_tx.1) #11
  %call50 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %lrclk_rx_reg.0, i32 noundef 5, i32 noundef %lrclk_tx.1) #11
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sw.epilog38.cleanup_crit_edge, %sw.epilog26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup ], [ -22, %sw.epilog26.cleanup_crit_edge ], [ -22, %sw.epilog38.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8996_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.420)
  switch i32 %7, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 1792) #11
  %and = and i32 %call2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 774, i32 776
  %spec.select143 = select i1 %tobool.not, i32 770, i32 772
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %stream4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %sw.bb3.sw.epilog_crit_edge, label %lor.lhs.false6

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false6:                                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 1793) #11
  %and8 = and i32 %call7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select144 = select i1 %tobool9.not, i32 806, i32 808
  %spec.select145 = select i1 %tobool9.not, i32 802, i32 804
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1765, i32 noundef 9, ptr noundef nonnull @.str.407, i32 noundef %7) #11
  br label %cleanup

sw.epilog:                                        ; preds = %lor.lhs.false6, %sw.bb3.sw.epilog_crit_edge, %lor.lhs.false, %sw.bb.sw.epilog_crit_edge
  %aifdata_reg.2 = phi i32 [ 776, %sw.bb.sw.epilog_crit_edge ], [ 808, %sw.bb3.sw.epilog_crit_edge ], [ %spec.select, %lor.lhs.false ], [ %spec.select144, %lor.lhs.false6 ]
  %lrclk_reg.2 = phi i32 [ 772, %sw.bb.sw.epilog_crit_edge ], [ 804, %sw.bb3.sw.epilog_crit_edge ], [ %spec.select143, %lor.lhs.false ], [ %spec.select145, %lor.lhs.false6 ]
  %dsp_shift.0 = phi i32 [ 0, %sw.bb.sw.epilog_crit_edge ], [ 3, %sw.bb3.sw.epilog_crit_edge ], [ 0, %lor.lhs.false ], [ 3, %lor.lhs.false6 ]
  %call31 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end37

do.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.408, i32 noundef %call31) #14
  br label %cleanup

if.end37:                                         ; preds = %sw.epilog
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.wm8996_priv, ptr %5, i32 0, i32 19, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call31, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %20 = load i32, ptr %id, align 4
  %arrayidx42 = getelementptr %struct.wm8996_priv, ptr %5, i32 0, i32 18, i32 %20
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %arrayidx42, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end37.if.then.i.i.i_crit_edge

if.end37.if.then.i.i.i_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end37.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end37.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %23, %if.end37.if.then.i.i.i_crit_edge ], [ %26, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !808
  %add.i.i.i = or i32 %24, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end37
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.1.i.i.i = icmp eq i32 %26, 0
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp44 = icmp slt i32 %call1.i, 0
  br i1 %cmp44, label %params_width.exit.cleanup_crit_edge, label %if.end46

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %params_width.exit
  %shl = shl i32 %call1.i, 8
  %or = or i32 %shl, %call1.i
  %shl68 = shl nuw nsw i32 4, %dsp_shift.0
  tail call fastcc void @wm8996_update_bclk(ptr noundef %1)
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %call31, %28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_hw_params.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_hw_params, %if.then81)) #11
          to label %do.end86 [label %if.then81], !srcloc !803

if.then81:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %dev82 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %29 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev82, align 4
  %div83152 = udiv i32 %call31, %div
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_hw_params.__UNIQUE_ID_ddebug327, ptr noundef %30, ptr noundef nonnull @.str.410, i32 noundef %div, i32 noundef %div83152) #11
  br label %do.end86

do.end86:                                         ; preds = %if.then81, %if.end46
  %call87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %aifdata_reg.2, i32 noundef 65535, i32 noundef %or) #11
  %call88 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %lrclk_reg.2, i32 noundef 2047, i32 noundef %div) #11
  %shl89 = shl nuw nsw i32 3, %dsp_shift.0
  %call90 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 513, i32 noundef %shl89, i32 noundef %shl68) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %params_width.exit.cleanup_crit_edge, %do.end36, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call31, %do.end36 ], [ 0, %do.end86 ], [ %call1.i, %params_width.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8996_update_bclk(ptr noundef %component) unnamed_addr #0 align 64 {
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
  %sysclk = getelementptr inbounds %struct.wm8996_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %5)
  %cmp = icmp slt i32 %5, 64000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry.for.body_crit_edge
  %aif.049 = phi i32 [ %inc23, %do.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bclk_reg.048 = phi i32 [ %bclk_reg.1, %do.end.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %6 = zext i32 %aif.049 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.421)
  switch i32 %aif.049, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %for.body.sw.epilog_crit_edge
  %bclk_reg.1 = phi i32 [ %bclk_reg.048, %for.body.sw.epilog_crit_edge ], [ 801, %sw.bb2 ], [ 769, %sw.bb ]
  %arrayidx = getelementptr %struct.wm8996_priv, ptr %3, i32 0, i32 19, i32 %aif.049
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sysclk, align 4
  %sub = sub i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %sw.epilog.for.end_crit_edge, label %for.cond4

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4:                                        ; preds = %sw.epilog
  %div.1 = sdiv i32 %10, 2
  %sub.1 = sub i32 %div.1, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp9.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp9.1, label %for.cond4.for.end_crit_edge, label %for.cond4.1

for.cond4.for.end_crit_edge:                      ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.1:                                      ; preds = %for.cond4
  %div.2 = sdiv i32 %10, 3
  %sub.2 = sub i32 %div.2, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2)
  %cmp9.2 = icmp slt i32 %sub.2, 0
  br i1 %cmp9.2, label %for.cond4.1.for.end_crit_edge, label %for.cond4.2

for.cond4.1.for.end_crit_edge:                    ; preds = %for.cond4.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.2:                                      ; preds = %for.cond4.1
  %div.3 = sdiv i32 %10, 4
  %sub.3 = sub i32 %div.3, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.3)
  %cmp9.3 = icmp slt i32 %sub.3, 0
  br i1 %cmp9.3, label %for.cond4.2.for.end_crit_edge, label %for.cond4.3

for.cond4.2.for.end_crit_edge:                    ; preds = %for.cond4.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.3:                                      ; preds = %for.cond4.2
  %div.4 = sdiv i32 %10, 6
  %sub.4 = sub i32 %div.4, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.4)
  %cmp9.4 = icmp slt i32 %sub.4, 0
  br i1 %cmp9.4, label %for.cond4.3.for.end_crit_edge, label %for.cond4.4

for.cond4.3.for.end_crit_edge:                    ; preds = %for.cond4.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.4:                                      ; preds = %for.cond4.3
  %div.5 = sdiv i32 %10, 8
  %sub.5 = sub i32 %div.5, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.5)
  %cmp9.5 = icmp slt i32 %sub.5, 0
  br i1 %cmp9.5, label %for.cond4.4.for.end_crit_edge, label %for.cond4.5

for.cond4.4.for.end_crit_edge:                    ; preds = %for.cond4.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.5:                                      ; preds = %for.cond4.4
  %div.6 = sdiv i32 %10, 12
  %sub.6 = sub i32 %div.6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.6)
  %cmp9.6 = icmp slt i32 %sub.6, 0
  br i1 %cmp9.6, label %for.cond4.5.for.end_crit_edge, label %for.cond4.6

for.cond4.5.for.end_crit_edge:                    ; preds = %for.cond4.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.6:                                      ; preds = %for.cond4.5
  %div.7 = sdiv i32 %10, 16
  %sub.7 = sub i32 %div.7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.7)
  %cmp9.7 = icmp slt i32 %sub.7, 0
  br i1 %cmp9.7, label %for.cond4.6.for.end_crit_edge, label %for.cond4.7

for.cond4.6.for.end_crit_edge:                    ; preds = %for.cond4.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.7:                                      ; preds = %for.cond4.6
  %div.8 = sdiv i32 %10, 24
  %sub.8 = sub i32 %div.8, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.8)
  %cmp9.8 = icmp slt i32 %sub.8, 0
  br i1 %cmp9.8, label %for.cond4.7.for.end_crit_edge, label %for.cond4.8

for.cond4.7.for.end_crit_edge:                    ; preds = %for.cond4.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.8:                                      ; preds = %for.cond4.7
  %div.9 = sdiv i32 %10, 32
  %sub.9 = sub i32 %div.9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.9)
  %cmp9.9 = icmp slt i32 %sub.9, 0
  br i1 %cmp9.9, label %for.cond4.8.for.end_crit_edge, label %for.cond4.9

for.cond4.8.for.end_crit_edge:                    ; preds = %for.cond4.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.9:                                      ; preds = %for.cond4.8
  %div.10 = sdiv i32 %10, 48
  %sub.10 = sub i32 %div.10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.10)
  %cmp9.10 = icmp slt i32 %sub.10, 0
  br i1 %cmp9.10, label %for.cond4.9.for.end_crit_edge, label %for.cond4.10

for.cond4.9.for.end_crit_edge:                    ; preds = %for.cond4.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.10:                                     ; preds = %for.cond4.9
  %div.11 = sdiv i32 %10, 64
  %sub.11 = sub i32 %div.11, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.11)
  %cmp9.11 = icmp slt i32 %sub.11, 0
  br i1 %cmp9.11, label %for.cond4.10.for.end_crit_edge, label %for.cond4.11

for.cond4.10.for.end_crit_edge:                   ; preds = %for.cond4.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond4.11:                                     ; preds = %for.cond4.10
  call void @__sanitizer_cov_trace_pc() #13
  %div.12 = sdiv i32 %10, 96
  %sub.12 = sub i32 %div.12, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.12)
  %cmp9.12 = icmp slt i32 %sub.12, 0
  %spec.select = select i1 %cmp9.12, i32 11, i32 12
  br label %for.end

for.end:                                          ; preds = %for.cond4.11, %for.cond4.10.for.end_crit_edge, %for.cond4.9.for.end_crit_edge, %for.cond4.8.for.end_crit_edge, %for.cond4.7.for.end_crit_edge, %for.cond4.6.for.end_crit_edge, %for.cond4.5.for.end_crit_edge, %for.cond4.4.for.end_crit_edge, %for.cond4.3.for.end_crit_edge, %for.cond4.2.for.end_crit_edge, %for.cond4.1.for.end_crit_edge, %for.cond4.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %best.0.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ 0, %for.cond4.for.end_crit_edge ], [ 1, %for.cond4.1.for.end_crit_edge ], [ 2, %for.cond4.2.for.end_crit_edge ], [ 3, %for.cond4.3.for.end_crit_edge ], [ 4, %for.cond4.4.for.end_crit_edge ], [ 5, %for.cond4.5.for.end_crit_edge ], [ 6, %for.cond4.6.for.end_crit_edge ], [ 7, %for.cond4.7.for.end_crit_edge ], [ 8, %for.cond4.8.for.end_crit_edge ], [ 9, %for.cond4.9.for.end_crit_edge ], [ 10, %for.cond4.10.for.end_crit_edge ], [ %spec.select, %for.cond4.11 ]
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk, align 4
  %arrayidx13 = getelementptr [13 x i32], ptr @bclk_divs, i32 0, i32 %best.0.lcssa
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8996_update_bclk.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8996_update_bclk, %if.then18)) #11
          to label %do.end [label %if.then18], !srcloc !803

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %div14 = sdiv i32 %12, %14
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8996_update_bclk.__UNIQUE_ID_ddebug326, ptr noundef %16, ptr noundef nonnull @.str.406, i32 noundef %14, i32 noundef %div14) #11
  br label %do.end

do.end:                                           ; preds = %if.then18, %for.end
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %bclk_reg.1, i32 noundef 15, i32 noundef %best.0.lcssa) #11
  %inc23 = add nuw nsw i32 %aif.049, 1
  %exitcond.not = icmp eq i32 %inc23, 2
  br i1 %exitcond.not, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 473)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 473)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !587, !588, !589, !591, !592, !594, !596, !598, !599, !600, !601, !603, !604, !605, !607, !608, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !636, !637, !638, !640, !641, !643, !644, !645, !647, !648, !650, !651, !652, !654, !655, !656, !657, !659, !660, !662, !663, !665, !666, !668, !669, !671, !672, !674, !675, !676, !678, !679, !680, !681, !683, !684, !685, !687, !688, !690, !691, !692, !694, !695, !696, !698, !699, !700, !702, !703, !705, !706, !707, !708, !710, !711, !713, !714, !715, !717, !718, !720, !721, !722, !724, !725, !727, !728, !730, !732, !733, !734, !736, !737, !739, !740, !741, !742, !744, !745, !747, !748, !749, !751, !752, !754, !755, !756, !758, !760, !762, !764, !766, !767, !768, !769, !771, !772, !773, !775, !776, !777, !779, !781, !783, !784, !785, !786, !788, !789, !791}
!llvm.module.flags = !{!793, !794, !795, !796, !797, !798, !799, !800}
!llvm.ident = !{!801}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8996.c", i32 2262, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8996.c", i32 2263, i32 47}
!4 = !{ptr @__ksymtab_wm8996_detect, !5, !"__ksymtab_wm8996_detect", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8996.c", i32 2284, i32 1}
!6 = !{ptr @__initcall__kmod_snd_soc_wm8996__345_3099_wm8996_i2c_driver_init6, !7, !"__initcall__kmod_snd_soc_wm8996__345_3099_wm8996_i2c_driver_init6", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8996.c", i32 3099, i32 1}
!8 = !{ptr @__exitcall_wm8996_i2c_driver_exit, !7, !"__exitcall_wm8996_i2c_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description346, !10, !"__UNIQUE_ID_description346", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/wm8996.c", i32 3101, i32 1}
!11 = !{ptr @__UNIQUE_ID_author347, !12, !"__UNIQUE_ID_author347", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/wm8996.c", i32 3102, i32 1}
!13 = !{ptr @__UNIQUE_ID_file348, !14, !"__UNIQUE_ID_file348", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/wm8996.c", i32 3103, i32 1}
!15 = !{ptr @__UNIQUE_ID_license349, !14, !"__UNIQUE_ID_license349", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/wm8996.c", i32 3092, i32 11}
!18 = !{ptr @wm8996_i2c_driver, !19, !"wm8996_i2c_driver", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wm8996.c", i32 3090, i32 26}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/wm8996.c", i32 2779, i32 32}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wm8996.c", i32 2781, i32 4}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wm8996_i2c_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @wm8996_i2c_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/wm8996.c", i32 2793, i32 3}
!32 = !{ptr @wm8996_i2c_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wm8996_i2c_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/wm8996.c", i32 2807, i32 4}
!36 = !{ptr @wm8996_i2c_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wm8996_i2c_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/wm8996.c", i32 2816, i32 3}
!40 = !{ptr @wm8996_i2c_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wm8996_i2c_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @wm8996_i2c_probe._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/wm8996.c", i32 2825, i32 19}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm8996.c", i32 2828, i32 3}
!47 = !{ptr @wm8996_i2c_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @wm8996_i2c_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wm8996.c", i32 2834, i32 3}
!51 = !{ptr @wm8996_i2c_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @wm8996_i2c_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wm8996.c", i32 2838, i32 3}
!55 = !{ptr @wm8996_i2c_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @wm8996_i2c_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm8996.c", i32 2845, i32 3}
!59 = !{ptr @wm8996_i2c_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @wm8996_i2c_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wm8996.c", i32 2850, i32 2}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wm8996_i2c_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @wm8996_i2c_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8996.c", i32 2860, i32 4}
!68 = !{ptr @wm8996_i2c_probe._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @wm8996_i2c_probe._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm8996.c", i32 3026, i32 3}
!72 = !{ptr @wm8996_i2c_probe._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @wm8996_i2c_probe._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8996.c", i32 3037, i32 3}
!76 = !{ptr @wm8996_i2c_probe._entry.41, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @wm8996_i2c_probe._entry_ptr.43, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8996.c", i32 44, i32 2}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/wm8996.c", i32 45, i32 2}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/wm8996.c", i32 46, i32 2}
!84 = distinct !{null, !85, !"wm8996_supply_names", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/wm8996.c", i32 43, i32 20}
!86 = !{ptr @wm8996_regmap, !87, !"wm8996_regmap", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/wm8996.c", i32 2604, i32 35}
!88 = !{ptr @wm8996_reg, !89, !"wm8996_reg", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/wm8996.c", i32 117, i32 33}
!90 = !{ptr @wm8996_init_gpio.lock_key, !91, !"lock_key", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/wm8996.c", i32 2206, i32 8}
!92 = !{ptr @wm8996_init_gpio.request_key, !91, !"request_key", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm8996.c", i32 2208, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @wm8996_init_gpio._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @wm8996_init_gpio._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @wm8996_template_chip, !99, !"wm8996_template_chip", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/wm8996.c", i32 2183, i32 31}
!100 = !{ptr @soc_component_dev_wm8996, !101, !"soc_component_dev_wm8996", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wm8996.c", i32 2684, i32 46}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/wm8996.c", i32 446, i32 1}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wm8996.c", i32 448, i32 1}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/wm8996.c", i32 451, i32 1}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wm8996.c", i32 453, i32 1}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/wm8996.c", i32 455, i32 1}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm8996.c", i32 456, i32 1}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8996.c", i32 457, i32 1}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wm8996.c", i32 459, i32 1}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8996.c", i32 461, i32 1}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wm8996.c", i32 464, i32 1}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8996.c", i32 466, i32 1}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8996.c", i32 467, i32 1}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wm8996.c", i32 468, i32 1}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8996.c", i32 470, i32 1}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm8996.c", i32 472, i32 1}
!132 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/wm8996.c", i32 473, i32 1}
!134 = !{ptr @.str.76, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/wm8996.c", i32 474, i32 1}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm8996.c", i32 476, i32 1}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/wm8996.c", i32 478, i32 1}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8996.c", i32 480, i32 1}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/wm8996.c", i32 482, i32 1}
!144 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8996.c", i32 484, i32 1}
!146 = !{ptr @.str.87, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8996.c", i32 486, i32 1}
!148 = !{ptr @.str.89, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8996.c", i32 489, i32 1}
!150 = !{ptr @.str.91, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wm8996.c", i32 491, i32 1}
!152 = !{ptr @.str.93, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8996.c", i32 494, i32 1}
!154 = !{ptr @.str.95, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8996.c", i32 495, i32 1}
!156 = !{ptr @.str.97, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8996.c", i32 496, i32 1}
!158 = !{ptr @.str.99, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8996.c", i32 497, i32 1}
!160 = !{ptr @.str.101, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8996.c", i32 499, i32 1}
!162 = !{ptr @.str.103, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8996.c", i32 500, i32 1}
!164 = !{ptr @.str.105, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8996.c", i32 502, i32 1}
!166 = !{ptr @.str.107, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8996.c", i32 503, i32 1}
!168 = !{ptr @.str.109, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8996.c", i32 505, i32 1}
!170 = !{ptr @.str.111, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8996.c", i32 507, i32 1}
!172 = !{ptr @.str.113, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8996.c", i32 510, i32 1}
!174 = !{ptr @.str.115, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8996.c", i32 512, i32 1}
!176 = !{ptr @.str.117, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8996.c", i32 515, i32 1}
!178 = !{ptr @.str.119, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8996.c", i32 517, i32 1}
!180 = !{ptr @.str.121, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8996.c", i32 520, i32 1}
!182 = !{ptr @.str.123, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8996.c", i32 522, i32 1}
!184 = !{ptr @.str.125, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wm8996.c", i32 525, i32 1}
!186 = !{ptr @.str.127, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm8996.c", i32 527, i32 1}
!188 = !{ptr @.str.129, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/wm8996.c", i32 529, i32 1}
!190 = !{ptr @.str.131, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/wm8996.c", i32 532, i32 1}
!192 = !{ptr @.str.133, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wm8996.c", i32 533, i32 1}
!194 = !{ptr @.str.135, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/wm8996.c", i32 535, i32 1}
!196 = !{ptr @.str.137, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/wm8996.c", i32 536, i32 1}
!198 = !{ptr @.str.139, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/wm8996.c", i32 537, i32 1}
!200 = !{ptr @.str.141, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wm8996.c", i32 538, i32 1}
!202 = !{ptr @.str.143, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/wm8996.c", i32 542, i32 1}
!204 = !{ptr @.str.145, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm8996.c", i32 543, i32 1}
!206 = !{ptr @.str.147, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm8996.c", i32 544, i32 1}
!208 = !{ptr @.str.149, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wm8996.c", i32 545, i32 1}
!210 = !{ptr @wm8996_snd_controls, !211, !"wm8996_snd_controls", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/wm8996.c", i32 445, i32 38}
!212 = !{ptr @inpga_tlv, !213, !"inpga_tlv", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm8996.c", i32 298, i32 14}
!214 = !{ptr @sidetone_tlv, !215, !"sidetone_tlv", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/wm8996.c", i32 299, i32 14}
!216 = !{ptr @sidetone_hpf, !217, !"sidetone_hpf", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/wm8996.c", i32 311, i32 8}
!218 = !{ptr @.str.151, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wm8996.c", i32 308, i32 2}
!220 = !{ptr @.str.152, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wm8996.c", i32 308, i32 12}
!222 = !{ptr @.str.153, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/wm8996.c", i32 308, i32 22}
!224 = !{ptr @.str.154, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wm8996.c", i32 308, i32 31}
!226 = !{ptr @.str.155, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/wm8996.c", i32 308, i32 40}
!228 = !{ptr @.str.156, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/wm8996.c", i32 308, i32 49}
!230 = !{ptr @.str.157, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/wm8996.c", i32 308, i32 57}
!232 = !{ptr @sidetone_hpf_text, !233, !"sidetone_hpf_text", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/wm8996.c", i32 307, i32 20}
!234 = !{ptr @digital_tlv, !235, !"digital_tlv", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/wm8996.c", i32 300, i32 14}
!236 = !{ptr @dsp1tx_hpf_mode, !237, !"dsp1tx_hpf_mode", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/wm8996.c", i32 318, i32 8}
!238 = !{ptr @.str.158, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/wm8996.c", i32 315, i32 2}
!240 = !{ptr @.str.159, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/wm8996.c", i32 315, i32 10}
!242 = !{ptr @.str.160, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/wm8996.c", i32 315, i32 20}
!244 = !{ptr @hpf_mode_text, !245, !"hpf_mode_text", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/wm8996.c", i32 314, i32 20}
!246 = !{ptr @dsp1tx_hpf_cutoff, !247, !"dsp1tx_hpf_cutoff", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/wm8996.c", i32 328, i32 8}
!248 = !{ptr @.str.161, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/wm8996.c", i32 325, i32 2}
!250 = !{ptr @.str.162, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/wm8996.c", i32 325, i32 10}
!252 = !{ptr @.str.163, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/wm8996.c", i32 325, i32 18}
!254 = !{ptr @.str.164, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/wm8996.c", i32 325, i32 27}
!256 = !{ptr @.str.165, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/wm8996.c", i32 325, i32 36}
!258 = !{ptr @.str.166, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/wm8996.c", i32 325, i32 45}
!260 = !{ptr @.str.167, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8996.c", i32 325, i32 54}
!262 = !{ptr @hpf_cutoff_text, !263, !"hpf_cutoff_text", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8996.c", i32 324, i32 20}
!264 = !{ptr @dsp2tx_hpf_mode, !265, !"dsp2tx_hpf_mode", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/wm8996.c", i32 321, i32 8}
!266 = !{ptr @dsp2tx_hpf_cutoff, !267, !"dsp2tx_hpf_cutoff", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/wm8996.c", i32 331, i32 8}
!268 = !{ptr @threedstereo_tlv, !269, !"threedstereo_tlv", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/wm8996.c", i32 305, i32 14}
!270 = !{ptr @out_digital_tlv, !271, !"out_digital_tlv", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/wm8996.c", i32 301, i32 14}
!272 = !{ptr @out_tlv, !273, !"out_tlv", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/wm8996.c", i32 302, i32 14}
!274 = !{ptr @spk_tlv, !275, !"spk_tlv", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/wm8996.c", i32 303, i32 14}
!276 = !{ptr @.str.168, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/wm8996.c", i32 917, i32 1}
!278 = !{ptr @.str.169, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm8996.c", i32 918, i32 1}
!280 = !{ptr @.str.170, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/wm8996.c", i32 919, i32 1}
!282 = !{ptr @.str.171, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/wm8996.c", i32 920, i32 1}
!284 = !{ptr @.str.172, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/wm8996.c", i32 922, i32 1}
!286 = !{ptr @.str.173, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/wm8996.c", i32 923, i32 1}
!288 = !{ptr @.str.174, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/wm8996.c", i32 924, i32 1}
!290 = !{ptr @.str.175, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm8996.c", i32 925, i32 1}
!292 = !{ptr @.str.176, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/wm8996.c", i32 927, i32 1}
!294 = !{ptr @.str.177, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/wm8996.c", i32 928, i32 1}
!296 = !{ptr @.str.178, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/wm8996.c", i32 930, i32 1}
!298 = !{ptr @.str.179, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/wm8996.c", i32 932, i32 1}
!300 = !{ptr @.str.180, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm8996.c", i32 933, i32 1}
!302 = !{ptr @.str.181, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/wm8996.c", i32 934, i32 1}
!304 = !{ptr @.str.182, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/wm8996.c", i32 936, i32 1}
!306 = !{ptr @.str.183, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8996.c", i32 939, i32 1}
!308 = !{ptr @.str.184, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/wm8996.c", i32 940, i32 1}
!310 = !{ptr @.str.185, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/wm8996.c", i32 941, i32 1}
!312 = !{ptr @.str.186, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/wm8996.c", i32 942, i32 1}
!314 = !{ptr @.str.187, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/wm8996.c", i32 944, i32 1}
!316 = !{ptr @.str.188, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/wm8996.c", i32 945, i32 1}
!318 = !{ptr @.str.189, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/wm8996.c", i32 947, i32 1}
!320 = !{ptr @.str.190, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/wm8996.c", i32 948, i32 1}
!322 = !{ptr @.str.191, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/wm8996.c", i32 949, i32 1}
!324 = !{ptr @.str.192, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/wm8996.c", i32 950, i32 1}
!326 = !{ptr @.str.193, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/wm8996.c", i32 952, i32 1}
!328 = !{ptr @.str.194, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/wm8996.c", i32 953, i32 1}
!330 = !{ptr @.str.195, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/wm8996.c", i32 955, i32 1}
!332 = !{ptr @.str.196, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/wm8996.c", i32 956, i32 1}
!334 = !{ptr @.str.197, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/wm8996.c", i32 957, i32 1}
!336 = !{ptr @.str.198, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/wm8996.c", i32 958, i32 1}
!338 = !{ptr @.str.199, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/wm8996.c", i32 960, i32 1}
!340 = !{ptr @.str.200, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/wm8996.c", i32 961, i32 1}
!342 = !{ptr @.str.201, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/wm8996.c", i32 963, i32 1}
!344 = !{ptr @.str.202, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/wm8996.c", i32 964, i32 1}
!346 = !{ptr @.str.203, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/wm8996.c", i32 966, i32 1}
!348 = !{ptr @.str.204, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/wm8996.c", i32 967, i32 1}
!350 = !{ptr @.str.205, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/wm8996.c", i32 968, i32 1}
!352 = !{ptr @.str.206, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/wm8996.c", i32 969, i32 1}
!354 = !{ptr @.str.207, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/wm8996.c", i32 971, i32 1}
!356 = !{ptr @.str.208, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/wm8996.c", i32 973, i32 1}
!358 = !{ptr @.str.209, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/wm8996.c", i32 975, i32 1}
!360 = !{ptr @.str.210, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/wm8996.c", i32 977, i32 1}
!362 = !{ptr @.str.211, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/wm8996.c", i32 980, i32 1}
!364 = !{ptr @.str.212, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/wm8996.c", i32 982, i32 1}
!366 = !{ptr @.str.213, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/wm8996.c", i32 984, i32 1}
!368 = !{ptr @.str.214, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/wm8996.c", i32 986, i32 1}
!370 = !{ptr @.str.215, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/wm8996.c", i32 989, i32 1}
!372 = !{ptr @.str.216, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/wm8996.c", i32 990, i32 1}
!374 = !{ptr @.str.217, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/wm8996.c", i32 991, i32 1}
!376 = !{ptr @.str.218, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/wm8996.c", i32 992, i32 1}
!378 = !{ptr @.str.219, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/wm8996.c", i32 994, i32 1}
!380 = !{ptr @.str.220, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/wm8996.c", i32 995, i32 1}
!382 = !{ptr @.str.221, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/wm8996.c", i32 997, i32 1}
!384 = !{ptr @.str.222, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/wm8996.c", i32 998, i32 1}
!386 = !{ptr @.str.223, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/wm8996.c", i32 1000, i32 1}
!388 = !{ptr @.str.224, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/wm8996.c", i32 1001, i32 1}
!390 = !{ptr @.str.225, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/wm8996.c", i32 1002, i32 1}
!392 = !{ptr @.str.226, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/wm8996.c", i32 1003, i32 1}
!394 = !{ptr @.str.227, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/wm8996.c", i32 1004, i32 1}
!396 = !{ptr @.str.228, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/wm8996.c", i32 1005, i32 1}
!398 = !{ptr @.str.229, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/wm8996.c", i32 1007, i32 1}
!400 = !{ptr @.str.230, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/wm8996.c", i32 1008, i32 1}
!402 = !{ptr @.str.231, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/wm8996.c", i32 1009, i32 1}
!404 = !{ptr @.str.232, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/wm8996.c", i32 1010, i32 1}
!406 = !{ptr @.str.233, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/wm8996.c", i32 1011, i32 1}
!408 = !{ptr @.str.234, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/wm8996.c", i32 1012, i32 1}
!410 = !{ptr @.str.235, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/wm8996.c", i32 1016, i32 1}
!412 = !{ptr @.str.236, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/wm8996.c", i32 1017, i32 1}
!414 = !{ptr @.str.237, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/wm8996.c", i32 1018, i32 1}
!416 = !{ptr @.str.238, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/wm8996.c", i32 1019, i32 1}
!418 = !{ptr @.str.239, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/wm8996.c", i32 1020, i32 1}
!420 = !{ptr @.str.240, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/wm8996.c", i32 1022, i32 1}
!422 = !{ptr @.str.241, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/wm8996.c", i32 1023, i32 1}
!424 = !{ptr @.str.242, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/wm8996.c", i32 1024, i32 1}
!426 = !{ptr @.str.243, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/wm8996.c", i32 1026, i32 1}
!428 = !{ptr @.str.244, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/wm8996.c", i32 1027, i32 1}
!430 = !{ptr @.str.245, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/wm8996.c", i32 1028, i32 1}
!432 = !{ptr @.str.246, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/wm8996.c", i32 1029, i32 1}
!434 = !{ptr @.str.247, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/wm8996.c", i32 1031, i32 1}
!436 = !{ptr @.str.248, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/wm8996.c", i32 1032, i32 1}
!438 = !{ptr @.str.249, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/wm8996.c", i32 1033, i32 1}
!440 = !{ptr @.str.250, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/wm8996.c", i32 1035, i32 1}
!442 = !{ptr @.str.251, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/wm8996.c", i32 1039, i32 1}
!444 = !{ptr @.str.252, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/wm8996.c", i32 1040, i32 1}
!446 = !{ptr @.str.253, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/wm8996.c", i32 1041, i32 1}
!448 = !{ptr @.str.254, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/wm8996.c", i32 1043, i32 1}
!450 = !{ptr @.str.255, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/wm8996.c", i32 1047, i32 1}
!452 = !{ptr @.str.256, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/wm8996.c", i32 1048, i32 1}
!454 = !{ptr @.str.257, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/wm8996.c", i32 1049, i32 1}
!456 = !{ptr @.str.258, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/wm8996.c", i32 1051, i32 1}
!458 = !{ptr @.str.259, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/wm8996.c", i32 1055, i32 1}
!460 = !{ptr @.str.260, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/wm8996.c", i32 1056, i32 1}
!462 = !{ptr @.str.261, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/wm8996.c", i32 1057, i32 1}
!464 = !{ptr @.str.262, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/wm8996.c", i32 1059, i32 1}
!466 = !{ptr @.str.263, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/wm8996.c", i32 1063, i32 1}
!468 = !{ptr @.str.264, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/wm8996.c", i32 1064, i32 1}
!470 = !{ptr @.str.265, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/wm8996.c", i32 1065, i32 1}
!472 = !{ptr @.str.266, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/wm8996.c", i32 1066, i32 1}
!474 = !{ptr @.str.267, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/wm8996.c", i32 1067, i32 1}
!476 = !{ptr @wm8996_dapm_widgets, !477, !"wm8996_dapm_widgets", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/wm8996.c", i32 916, i32 41}
!478 = !{ptr @.str.269, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/wm8996.c", i32 625, i32 3}
!480 = !{ptr @.str.270, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/wm8996.c", i32 843, i32 2}
!482 = !{ptr @in1_mux, !483, !"in1_mux", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/wm8996.c", i32 842, i32 38}
!484 = !{ptr @in1_enum, !485, !"in1_enum", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/wm8996.c", i32 839, i32 8}
!486 = !{ptr @.str.271, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/wm8996.c", i32 836, i32 2}
!488 = !{ptr @inmux_text, !489, !"inmux_text", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/wm8996.c", i32 835, i32 20}
!490 = !{ptr @.str.272, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/wm8996.c", i32 849, i32 2}
!492 = !{ptr @in2_mux, !493, !"in2_mux", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/wm8996.c", i32 848, i32 38}
!494 = !{ptr @in2_enum, !495, !"in2_enum", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/wm8996.c", i32 845, i32 8}
!496 = !{ptr @left_sidetone, !497, !"left_sidetone", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/wm8996.c", i32 780, i32 38}
!498 = !{ptr @left_sidetone_enum, !499, !"left_sidetone_enum", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/wm8996.c", i32 777, i32 8}
!500 = !{ptr @.str.273, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/wm8996.c", i32 774, i32 2}
!502 = !{ptr @.str.274, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/wm8996.c", i32 774, i32 9}
!504 = !{ptr @sidetone_text, !505, !"sidetone_text", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/wm8996.c", i32 773, i32 20}
!506 = !{ptr @right_sidetone, !507, !"right_sidetone", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/wm8996.c", i32 786, i32 38}
!508 = !{ptr @right_sidetone_enum, !509, !"right_sidetone_enum", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/wm8996.c", i32 783, i32 8}
!510 = !{ptr @.str.275, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/wm8996.c", i32 902, i32 1}
!512 = !{ptr @.str.277, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/wm8996.c", i32 904, i32 1}
!514 = !{ptr @dsp2txl, !515, !"dsp2txl", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/wm8996.c", i32 901, i32 38}
!516 = !{ptr @dsp2txr, !517, !"dsp2txr", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/wm8996.c", i32 908, i32 38}
!518 = !{ptr @dsp1txl, !519, !"dsp1txl", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/wm8996.c", i32 887, i32 38}
!520 = !{ptr @dsp1txr, !521, !"dsp1txr", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/wm8996.c", i32 894, i32 38}
!522 = !{ptr @.str.285, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/wm8996.c", i32 861, i32 1}
!524 = !{ptr @.str.287, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/wm8996.c", i32 863, i32 1}
!526 = !{ptr @.str.289, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/wm8996.c", i32 865, i32 1}
!528 = !{ptr @.str.291, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/wm8996.c", i32 866, i32 1}
!530 = !{ptr @dac2l_mix, !531, !"dac2l_mix", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/wm8996.c", i32 860, i32 38}
!532 = !{ptr @dac2r_mix, !533, !"dac2r_mix", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/wm8996.c", i32 851, i32 38}
!534 = !{ptr @dac1l_mix, !535, !"dac1l_mix", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/wm8996.c", i32 878, i32 38}
!536 = !{ptr @dac1r_mix, !537, !"dac1r_mix", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/wm8996.c", i32 869, i32 38}
!538 = !{ptr @dsp1rx, !539, !"dsp1rx", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/wm8996.c", i32 812, i32 38}
!540 = !{ptr @dsp1rx_enum, !541, !"dsp1rx_enum", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/wm8996.c", i32 809, i32 8}
!542 = !{ptr @.str.305, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/wm8996.c", i32 806, i32 2}
!544 = !{ptr @.str.306, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/wm8996.c", i32 806, i32 10}
!546 = !{ptr @dsp1rx_text, !547, !"dsp1rx_text", i1 false, i1 false}
!547 = !{!"../sound/soc/codecs/wm8996.c", i32 805, i32 20}
!548 = !{ptr @dsp2rx, !549, !"dsp2rx", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/wm8996.c", i32 822, i32 38}
!550 = !{ptr @dsp2rx_enum, !551, !"dsp2rx_enum", i1 false, i1 false}
!551 = !{!"../sound/soc/codecs/wm8996.c", i32 819, i32 8}
!552 = !{ptr @dsp2rx_text, !553, !"dsp2rx_text", i1 false, i1 false}
!553 = !{!"../sound/soc/codecs/wm8996.c", i32 815, i32 20}
!554 = !{ptr @aif2tx, !555, !"aif2tx", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/wm8996.c", i32 832, i32 38}
!556 = !{ptr @aif2tx_enum, !557, !"aif2tx_enum", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/wm8996.c", i32 829, i32 8}
!558 = !{ptr @.str.307, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/wm8996.c", i32 826, i32 2}
!560 = !{ptr @.str.308, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/wm8996.c", i32 826, i32 10}
!562 = !{ptr @aif2tx_text, !563, !"aif2tx_text", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/wm8996.c", i32 825, i32 20}
!564 = !{ptr @spkl_mux, !565, !"spkl_mux", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/wm8996.c", i32 796, i32 38}
!566 = !{ptr @spkl_enum, !567, !"spkl_enum", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/wm8996.c", i32 793, i32 8}
!568 = !{ptr @spk_text, !569, !"spk_text", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/wm8996.c", i32 789, i32 20}
!570 = !{ptr @spkr_mux, !571, !"spkr_mux", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/wm8996.c", i32 802, i32 38}
!572 = !{ptr @spkr_enum, !573, !"spkr_enum", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/wm8996.c", i32 799, i32 8}
!574 = !{ptr @.str.309, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/wm8996.c", i32 1083, i32 21}
!576 = !{ptr @.str.310, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/wm8996.c", i32 1090, i32 21}
!578 = !{ptr @.str.311, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/wm8996.c", i32 1093, i32 4}
!580 = !{ptr @.str.312, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/wm8996.c", i32 1100, i32 4}
!582 = !{ptr @wm8996_dapm_routes, !583, !"wm8996_dapm_routes", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/wm8996.c", i32 1070, i32 40}
!584 = !{ptr @.str.313, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/wm8996.c", i32 2664, i32 4}
!586 = !{ptr @.str.314, !585, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @wm8996_probe._entry, !585, !"_entry", i1 false, i1 false}
!588 = !{ptr @wm8996_probe._entry_ptr, !585, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @init_completion.__key, !590, !"__key", i1 false, i1 false}
!590 = !{!"../include/linux/completion.h", i32 87, i32 2}
!591 = !{ptr @.str.315, !590, !"<string literal>", i1 false, i1 false}
!592 = !{ptr @.str.316, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/wm8996.c", i32 2547, i32 3}
!594 = !{ptr @.str.317, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/wm8996.c", i32 2551, i32 3}
!596 = !{ptr @.str.318, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/wm8996.c", i32 2592, i32 2}
!598 = !{ptr @.str.319, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @.str.320, !597, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @wm8996_retune_mobile_pdata.__UNIQUE_ID_ddebug344, !597, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!601 = !{ptr @.str.321, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/wm8996.c", i32 2600, i32 3}
!603 = !{ptr @wm8996_retune_mobile_pdata._entry, !602, !"_entry", i1 false, i1 false}
!604 = !{ptr @wm8996_retune_mobile_pdata._entry_ptr, !602, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @.str.322, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../sound/soc/codecs/wm8996.c", i32 380, i32 2}
!607 = !{ptr @.str.323, !606, !"<string literal>", i1 false, i1 false}
!608 = !{ptr @wm8996_set_retune_mobile.__UNIQUE_ID_ddebug321, !606, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!609 = !{ptr @.str.324, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../sound/soc/codecs/wm8996.c", i32 551, i32 1}
!611 = !{ptr @.str.326, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/codecs/wm8996.c", i32 553, i32 1}
!613 = !{ptr @.str.328, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../sound/soc/codecs/wm8996.c", i32 555, i32 1}
!615 = !{ptr @.str.330, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../sound/soc/codecs/wm8996.c", i32 557, i32 1}
!617 = !{ptr @.str.332, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../sound/soc/codecs/wm8996.c", i32 559, i32 1}
!619 = !{ptr @.str.334, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../sound/soc/codecs/wm8996.c", i32 562, i32 1}
!621 = !{ptr @.str.336, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../sound/soc/codecs/wm8996.c", i32 564, i32 1}
!623 = !{ptr @.str.338, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../sound/soc/codecs/wm8996.c", i32 566, i32 1}
!625 = !{ptr @.str.340, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/wm8996.c", i32 568, i32 1}
!627 = !{ptr @.str.342, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../sound/soc/codecs/wm8996.c", i32 570, i32 1}
!629 = !{ptr @wm8996_eq_controls, !630, !"wm8996_eq_controls", i1 false, i1 false}
!630 = !{!"../sound/soc/codecs/wm8996.c", i32 550, i32 38}
!631 = !{ptr @eq_tlv, !632, !"eq_tlv", i1 false, i1 false}
!632 = !{!"../sound/soc/codecs/wm8996.c", i32 304, i32 14}
!633 = !{ptr @.str.344, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../sound/soc/codecs/wm8996.c", i32 2494, i32 3}
!635 = !{ptr @.str.345, !634, !"<string literal>", i1 false, i1 false}
!636 = !{ptr @wm8996_irq._entry, !634, !"_entry", i1 false, i1 false}
!637 = !{ptr @wm8996_irq._entry_ptr, !634, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.346, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../sound/soc/codecs/wm8996.c", i32 2506, i32 3}
!640 = !{ptr @wm8996_irq.__UNIQUE_ID_ddebug342, !639, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!641 = !{ptr @.str.348, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../sound/soc/codecs/wm8996.c", i32 2511, i32 3}
!643 = !{ptr @wm8996_irq._entry.347, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @wm8996_irq._entry_ptr.349, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.350, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../sound/soc/codecs/wm8996.c", i32 2514, i32 3}
!647 = !{ptr @wm8996_irq.__UNIQUE_ID_ddebug343, !646, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!648 = !{ptr @.str.351, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/soc/codecs/wm8996.c", i32 2391, i32 2}
!650 = !{ptr @.str.352, !649, !"<string literal>", i1 false, i1 false}
!651 = !{ptr @wm8996_micd.__UNIQUE_ID_ddebug336, !649, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!652 = !{ptr @.str.353, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../sound/soc/codecs/wm8996.c", i32 2394, i32 3}
!654 = !{ptr @.str.354, !653, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @wm8996_micd._entry, !653, !"_entry", i1 false, i1 false}
!656 = !{ptr @wm8996_micd._entry_ptr, !653, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.355, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../sound/soc/codecs/wm8996.c", i32 2400, i32 3}
!659 = !{ptr @wm8996_micd.__UNIQUE_ID_ddebug337, !658, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!660 = !{ptr @.str.356, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/soc/codecs/wm8996.c", i32 2422, i32 4}
!662 = !{ptr @wm8996_micd.__UNIQUE_ID_ddebug338, !661, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!663 = !{ptr @.str.357, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../sound/soc/codecs/wm8996.c", i32 2434, i32 4}
!665 = !{ptr @wm8996_micd.__UNIQUE_ID_ddebug339, !664, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!666 = !{ptr @.str.358, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../sound/soc/codecs/wm8996.c", i32 2466, i32 3}
!668 = !{ptr @wm8996_micd.__UNIQUE_ID_ddebug340, !667, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!669 = !{ptr @.str.359, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../sound/soc/codecs/wm8996.c", i32 2477, i32 4}
!671 = !{ptr @wm8996_micd.__UNIQUE_ID_ddebug341, !670, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!672 = !{ptr @.str.360, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../sound/soc/codecs/wm8996.c", i32 2373, i32 2}
!674 = !{ptr @.str.361, !673, !"<string literal>", i1 false, i1 false}
!675 = !{ptr @wm8996_report_headphone.__UNIQUE_ID_ddebug335, !673, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!676 = !{ptr @.str.362, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/soc/codecs/wm8996.c", i32 2299, i32 3}
!678 = !{ptr @.str.363, !677, !"<string literal>", i1 false, i1 false}
!679 = !{ptr @wm8996_hpdet_irq._entry, !677, !"_entry", i1 false, i1 false}
!680 = !{ptr @wm8996_hpdet_irq._entry_ptr, !677, !"_entry_ptr", i1 false, i1 false}
!681 = !{ptr @.str.365, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../sound/soc/codecs/wm8996.c", i32 2304, i32 3}
!683 = !{ptr @wm8996_hpdet_irq._entry.364, !682, !"_entry", i1 false, i1 false}
!684 = !{ptr @wm8996_hpdet_irq._entry_ptr.366, !682, !"_entry_ptr", i1 false, i1 false}
!685 = !{ptr @.str.367, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../sound/soc/codecs/wm8996.c", i32 2310, i32 2}
!687 = !{ptr @wm8996_hpdet_irq.__UNIQUE_ID_ddebug334, !686, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!688 = !{ptr @.str.368, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../sound/soc/codecs/wm8996.c", i32 2016, i32 3}
!690 = !{ptr @.str.369, !689, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @wm8996_set_fll.__UNIQUE_ID_ddebug332, !689, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!692 = !{ptr @.str.370, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../sound/soc/codecs/wm8996.c", i32 2047, i32 3}
!694 = !{ptr @wm8996_set_fll._entry, !693, !"_entry", i1 false, i1 false}
!695 = !{ptr @wm8996_set_fll._entry_ptr, !693, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @.str.372, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../sound/soc/codecs/wm8996.c", i32 2125, i32 3}
!698 = !{ptr @wm8996_set_fll._entry.371, !697, !"_entry", i1 false, i1 false}
!699 = !{ptr @wm8996_set_fll._entry_ptr.373, !697, !"_entry_ptr", i1 false, i1 false}
!700 = !{ptr @.str.374, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../sound/soc/codecs/wm8996.c", i32 2129, i32 2}
!702 = !{ptr @wm8996_set_fll.__UNIQUE_ID_ddebug333, !701, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!703 = !{ptr @.str.375, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../sound/soc/codecs/wm8996.c", i32 1930, i32 4}
!705 = !{ptr @.str.376, !704, !"<string literal>", i1 false, i1 false}
!706 = !{ptr @fll_factors._entry, !704, !"_entry", i1 false, i1 false}
!707 = !{ptr @fll_factors._entry_ptr, !704, !"_entry_ptr", i1 false, i1 false}
!708 = !{ptr @.str.377, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../sound/soc/codecs/wm8996.c", i32 1936, i32 2}
!710 = !{ptr @fll_factors.__UNIQUE_ID_ddebug328, !709, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!711 = !{ptr @.str.379, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../sound/soc/codecs/wm8996.c", i32 1956, i32 4}
!713 = !{ptr @fll_factors._entry.378, !712, !"_entry", i1 false, i1 false}
!714 = !{ptr @fll_factors._entry_ptr.380, !712, !"_entry_ptr", i1 false, i1 false}
!715 = !{ptr @.str.381, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../sound/soc/codecs/wm8996.c", i32 1964, i32 2}
!717 = !{ptr @fll_factors.__UNIQUE_ID_ddebug329, !716, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!718 = !{ptr @.str.383, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../sound/soc/codecs/wm8996.c", i32 1975, i32 3}
!720 = !{ptr @fll_factors._entry.382, !719, !"_entry", i1 false, i1 false}
!721 = !{ptr @fll_factors._entry_ptr.384, !719, !"_entry_ptr", i1 false, i1 false}
!722 = !{ptr @.str.385, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../sound/soc/codecs/wm8996.c", i32 1992, i32 2}
!724 = !{ptr @fll_factors.__UNIQUE_ID_ddebug330, !723, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!725 = !{ptr @.str.386, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../sound/soc/codecs/wm8996.c", i32 1994, i32 2}
!727 = !{ptr @fll_factors.__UNIQUE_ID_ddebug331, !726, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!728 = !{ptr @fll_fratios, !729, !"fll_fratios", i1 false, i1 false}
!729 = !{!"../sound/soc/codecs/wm8996.c", i32 1906, i32 3}
!730 = !{ptr @.str.387, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../sound/soc/codecs/wm8996.c", i32 693, i32 3}
!732 = !{ptr @.str.388, !731, !"<string literal>", i1 false, i1 false}
!733 = !{ptr @wm8996_seq_notifier.__UNIQUE_ID_ddebug324, !731, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!734 = !{ptr @.str.389, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../sound/soc/codecs/wm8996.c", i32 704, i32 3}
!736 = !{ptr @wm8996_seq_notifier.__UNIQUE_ID_ddebug325, !735, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!737 = !{ptr @.str.390, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../sound/soc/codecs/wm8996.c", i32 668, i32 5}
!739 = !{ptr @.str.391, !738, !"<string literal>", i1 false, i1 false}
!740 = !{ptr @wait_for_dc_servo._entry, !738, !"_entry", i1 false, i1 false}
!741 = !{ptr @wait_for_dc_servo._entry_ptr, !738, !"_entry_ptr", i1 false, i1 false}
!742 = !{ptr @.str.392, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../sound/soc/codecs/wm8996.c", i32 676, i32 3}
!744 = !{ptr @wait_for_dc_servo.__UNIQUE_ID_ddebug322, !743, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!745 = !{ptr @.str.394, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../sound/soc/codecs/wm8996.c", i32 680, i32 3}
!747 = !{ptr @wait_for_dc_servo._entry.393, !746, !"_entry", i1 false, i1 false}
!748 = !{ptr @wait_for_dc_servo._entry_ptr.395, !746, !"_entry_ptr", i1 false, i1 false}
!749 = !{ptr @.str.396, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../sound/soc/codecs/wm8996.c", i32 682, i32 3}
!751 = !{ptr @wait_for_dc_servo.__UNIQUE_ID_ddebug323, !750, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!752 = !{ptr @.str.397, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../sound/soc/codecs/wm8996.c", i32 1593, i32 5}
!754 = !{ptr @wm8996_set_bias_level._entry, !753, !"_entry", i1 false, i1 false}
!755 = !{ptr @wm8996_set_bias_level._entry_ptr, !753, !"_entry_ptr", i1 false, i1 false}
!756 = !{ptr @.str.398, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../sound/soc/codecs/wm8996.c", i32 2717, i32 11}
!758 = !{ptr @.str.399, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../sound/soc/codecs/wm8996.c", i32 2737, i32 11}
!760 = !{ptr @wm8996_dai, !761, !"wm8996_dai", i1 false, i1 false}
!761 = !{!"../sound/soc/codecs/wm8996.c", i32 2715, i32 34}
!762 = !{ptr @wm8996_dai_ops, !763, !"wm8996_dai_ops", i1 false, i1 false}
!763 = !{!"../sound/soc/codecs/wm8996.c", i32 2709, i32 37}
!764 = !{ptr @.str.400, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../sound/soc/codecs/wm8996.c", i32 1843, i32 3}
!766 = !{ptr @.str.401, !765, !"<string literal>", i1 false, i1 false}
!767 = !{ptr @wm8996_set_sysclk._entry, !765, !"_entry", i1 false, i1 false}
!768 = !{ptr @wm8996_set_sysclk._entry_ptr, !765, !"_entry_ptr", i1 false, i1 false}
!769 = !{ptr @.str.403, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../sound/soc/codecs/wm8996.c", i32 1869, i32 3}
!771 = !{ptr @wm8996_set_sysclk._entry.402, !770, !"_entry", i1 false, i1 false}
!772 = !{ptr @wm8996_set_sysclk._entry_ptr.404, !770, !"_entry_ptr", i1 false, i1 false}
!773 = !{ptr @.str.405, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../sound/soc/codecs/wm8996.c", i32 1563, i32 3}
!775 = !{ptr @.str.406, !774, !"<string literal>", i1 false, i1 false}
!776 = !{ptr @wm8996_update_bclk.__UNIQUE_ID_ddebug326, !774, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!777 = !{ptr @bclk_divs, !778, !"bclk_divs", i1 false, i1 false}
!778 = !{!"../sound/soc/codecs/wm8996.c", i32 1527, i32 18}
!779 = !{ptr @.str.407, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../sound/soc/codecs/wm8996.c", i32 1653, i32 3}
!781 = !{ptr @.str.408, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../sound/soc/codecs/wm8996.c", i32 1771, i32 3}
!783 = !{ptr @.str.409, !782, !"<string literal>", i1 false, i1 false}
!784 = !{ptr @wm8996_hw_params._entry, !782, !"_entry", i1 false, i1 false}
!785 = !{ptr @wm8996_hw_params._entry_ptr, !782, !"_entry_ptr", i1 false, i1 false}
!786 = !{ptr @.str.410, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../sound/soc/codecs/wm8996.c", i32 1795, i32 2}
!788 = !{ptr @wm8996_hw_params.__UNIQUE_ID_ddebug327, !787, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!789 = distinct !{null, !790, !"dsp_divs", i1 false, i1 false}
!790 = !{!"../sound/soc/codecs/wm8996.c", i32 1725, i32 18}
!791 = !{ptr @wm8996_i2c_id, !792, !"wm8996_i2c_id", i1 false, i1 false}
!792 = !{!"../sound/soc/codecs/wm8996.c", i32 3084, i32 35}
!793 = !{i32 1, !"wchar_size", i32 2}
!794 = !{i32 1, !"min_enum_size", i32 4}
!795 = !{i32 8, !"branch-target-enforcement", i32 0}
!796 = !{i32 8, !"sign-return-address", i32 0}
!797 = !{i32 8, !"sign-return-address-all", i32 0}
!798 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!799 = !{i32 7, !"uwtable", i32 1}
!800 = !{i32 7, !"frame-pointer", i32 2}
!801 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!802 = !{!"auto-init"}
!803 = !{i64 2149046660, i64 2149046665, i64 2149046678, i64 2149046722, i64 2149046756, i64 2149046777}
!804 = !{!"branch_weights", i32 1, i32 2000}
!805 = distinct !{!805, !806}
!806 = !{!"llvm.loop.peeled.count", i32 1}
!807 = !{i8 0, i8 2}
!808 = !{i32 0, i32 33}
