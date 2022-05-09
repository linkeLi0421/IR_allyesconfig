; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/mt6359-accdet.c_pt.bc'
source_filename = "../sound/soc/codecs/mt6359-accdet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt6359_accdet_enable_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_mt6359_accdet_enable_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_mt6359_accdet_enable_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt6359_accdet_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22mt6359_accdet_enable_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_mt6359_accdet_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mt6359_accdet = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.mutex, i8, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dts_data = type { i32, i32, i32, i32, ptr, %struct.three_key_threshold, %struct.four_key_threshold, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.three_key_threshold = type { i32, i32, i32 }
%struct.four_key_threshold = type { i32, i32, i32, i32 }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pwm_deb_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_mt6359_accdet_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt6359_accdet_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_mt6359_accdet_enable_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt6359_accdet_enable_jack_detect to i32), ptr @__kstrtab_mt6359_accdet_enable_jack_detect, ptr @__kstrtabns_mt6359_accdet_enable_jack_detect }, section "___ksymtab_gpl+mt6359_accdet_enable_jack_detect", align 4
@__initcall__kmod_mt6359_accdet__240_1060_mt6359_accdet_driver_init6 = internal global ptr @mt6359_accdet_driver_init, section ".initcall6.init", align 4
@mt6359_accdet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6359_accdet_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6359_accdet_driver_exit = internal global ptr @mt6359_accdet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [60 x i8] c"mt6359_accdet.description=MT6359 ALSA SoC codec jack driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [56 x i8] c"mt6359_accdet.author=Argus Lin <argus.lin@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [50 x i8] c"mt6359_accdet.file=sound/soc/codecs/mt6359-accdet\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [29 x i8] c"mt6359_accdet.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pmic-codec-accdet\00", [46 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt6359_accdet\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt6359_accdet_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/codecs/mt6359-accdet.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(), dev name %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 954, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr = internal global ptr @mt6359_accdet_probe._entry, section ".printk_index", align 4
@mt6359_accdet_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 961, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to parse dts\0A\00", [43 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.10 = internal global ptr @mt6359_accdet_probe._entry.8, section ".printk_index", align 4
@mt6359_accdet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->res_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ACCDET_IRQ\00", [21 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 974, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request IRQ: (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.15 = internal global ptr @mt6359_accdet_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACCDET_EINT0\00", [19 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 990, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request eint0 IRQ (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.19 = internal global ptr @mt6359_accdet_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACCDET_EINT1\00", [19 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1005, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request eint1 IRQ (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.23 = internal global ptr @mt6359_accdet_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"accdet\00", [25 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->accdet_work)\00", [58 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1014, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create accdet workqueue\0A\00", [61 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.30 = internal global ptr @mt6359_accdet_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6359_accdet_jd\00", [47 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->jd_work)\00", [62 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1022, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to create jack detect workqueue\0A\00", [56 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.36 = internal global ptr @mt6359_accdet_probe._entry.34, section ".printk_index", align 4
@mt6359_accdet_soc_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } zeroinitializer, align 32
@mt6359_accdet_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1032, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register component\0A\00", [34 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.39 = internal global ptr @mt6359_accdet_probe._entry.37, section ".printk_index", align 4
@mt6359_accdet_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 1049, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s error. now exit.!\0A\00", [42 x i8] zeroinitializer }, align 32
@mt6359_accdet_probe._entry_ptr.42 = internal global ptr @mt6359_accdet_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,mic-vol\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,plugout-debounce\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,mic-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,pwm-deb-setting\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek,eint-level-pol\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,eint-use-ap\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,eint-detect-mode\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,eint-num\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek,eint-trig-mode\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,eint-use-ext-res\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,eint-comp-vth\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,key-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,three-key-thr\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mediatek,four-key-thr\00", [42 x i8] zeroinitializer }, align 32
@mt6359_accdet_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 663, ptr @.str.59, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"accdet no 4-key-thrsh dts, use efuse\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt6359_accdet_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt6359_accdet_parse_dt._entry_ptr = internal global ptr @mt6359_accdet_parse_dt._entry, section ".printk_index", align 4
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,tri-key-cdd-thr\00", [39 x i8] zeroinitializer }, align 32
@mt6359_accdet_parse_dt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.3, i32 678, ptr @.str.59, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"accdet caps=%x\0A\00", [16 x i8] zeroinitializer }, align 32
@mt6359_accdet_parse_dt._entry_ptr.63 = internal global ptr @mt6359_accdet_parse_dt._entry.61, section ".printk_index", align 4
@mt6359_accdet_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 480, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(), ret %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt6359_accdet_irq\00", [46 x i8] zeroinitializer }, align 32
@mt6359_accdet_irq._entry_ptr = internal global ptr @mt6359_accdet_irq._entry, section ".printk_index", align 4
@mt6359_accdet_irq._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 504, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mt6359_accdet_irq._entry_ptr.67 = internal global ptr @mt6359_accdet_irq._entry.66, section ".printk_index", align 4
@mt6359_accdet_irq._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 527, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mt6359_accdet_irq._entry_ptr.69 = internal global ptr @mt6359_accdet_irq._entry.68, section ".printk_index", align 4
@mt6359_accdet_jd_setting.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt6359_accdet_jd_setting\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"should not be here %s()\0A\00", [39 x i8] zeroinitializer }, align 32
@accdet_set_debounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 318, ptr @.str.59, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error: %s error state (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"accdet_set_debounce\00", [44 x i8] zeroinitializer }, align 32
@accdet_set_debounce._entry_ptr = internal global ptr @accdet_set_debounce._entry, section ".printk_index", align 4
@mt6359_accdet_jd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.74, ptr @.str.3, i32 440, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359_accdet_jd_work\00", [42 x i8] zeroinitializer }, align 32
@mt6359_accdet_jd_work._entry_ptr = internal global ptr @mt6359_accdet_jd_work._entry, section ".printk_index", align 4
@mt6359_accdet_recover_jd_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.75, ptr @.str.3, i32 250, ptr @.str.59, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt6359_accdet_recover_jd_setting\00", [63 x i8] zeroinitializer }, align 32
@mt6359_accdet_recover_jd_setting._entry_ptr = internal global ptr @mt6359_accdet_recover_jd_setting._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.mt6359_accdet_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 8, i32 16], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"mt6359_accdet_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1053, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1055, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 931, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 953, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 961, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 964, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 971, i32 7 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 973, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 986, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 988, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1001, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1003, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1011, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1012, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1014, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1019, i32 23 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1020, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1022, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [25 x i8] c"mt6359_accdet_soc_driver\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 59, i32 46 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1032, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1049, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 564, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 569, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 574, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 579, i32 41 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 585, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 590, i32 35 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 598, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 605, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 615, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 624, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 631, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 636, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 644, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 655, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 662, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 670, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 678, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 480, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 503, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 526, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 151, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 317, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 440, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [36 x i8] c"../sound/soc/codecs/mt6359-accdet.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 250, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [33 x i8] c"switch.table.mt6359_accdet_probe\00", align 1
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_mt6359_accdet_driver_exit, ptr @__initcall__kmod_mt6359_accdet__240_1060_mt6359_accdet_driver_init6, ptr @__ksymtab_mt6359_accdet_enable_jack_detect, ptr @accdet_set_debounce._entry, ptr @accdet_set_debounce._entry_ptr, ptr @mt6359_accdet_driver_exit, ptr @mt6359_accdet_irq._entry, ptr @mt6359_accdet_irq._entry.66, ptr @mt6359_accdet_irq._entry.68, ptr @mt6359_accdet_irq._entry_ptr, ptr @mt6359_accdet_irq._entry_ptr.67, ptr @mt6359_accdet_irq._entry_ptr.69, ptr @mt6359_accdet_jd_work._entry, ptr @mt6359_accdet_jd_work._entry_ptr, ptr @mt6359_accdet_parse_dt._entry, ptr @mt6359_accdet_parse_dt._entry.61, ptr @mt6359_accdet_parse_dt._entry_ptr, ptr @mt6359_accdet_parse_dt._entry_ptr.63, ptr @mt6359_accdet_probe._entry, ptr @mt6359_accdet_probe._entry.13, ptr @mt6359_accdet_probe._entry.17, ptr @mt6359_accdet_probe._entry.21, ptr @mt6359_accdet_probe._entry.28, ptr @mt6359_accdet_probe._entry.34, ptr @mt6359_accdet_probe._entry.37, ptr @mt6359_accdet_probe._entry.40, ptr @mt6359_accdet_probe._entry.8, ptr @mt6359_accdet_probe._entry_ptr, ptr @mt6359_accdet_probe._entry_ptr.10, ptr @mt6359_accdet_probe._entry_ptr.15, ptr @mt6359_accdet_probe._entry_ptr.19, ptr @mt6359_accdet_probe._entry_ptr.23, ptr @mt6359_accdet_probe._entry_ptr.30, ptr @mt6359_accdet_probe._entry_ptr.36, ptr @mt6359_accdet_probe._entry_ptr.39, ptr @mt6359_accdet_probe._entry_ptr.42, ptr @mt6359_accdet_recover_jd_setting._entry, ptr @mt6359_accdet_recover_jd_setting._entry_ptr, ptr @mt6359_accdet_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mt6359_accdet_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @mt6359_accdet_probe.__key.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @mt6359_accdet_probe.__key.32, ptr @.str.33, ptr @.str.35, ptr @mt6359_accdet_soc_driver, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.mt6359_accdet_probe], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_soc_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_parse_dt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_irq._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_irq._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accdet_set_debounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_jd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_accdet_recover_jd_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt6359_accdet_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6359_accdet_enable_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %jack1 = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 1
  %4 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jack1, align 4
  %call2 = tail call i32 @snd_jack_set_key(ptr noundef %5, i32 noundef 16384, i32 noundef 164) #5
  %6 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jack1, align 4
  %call4 = tail call i32 @snd_jack_set_key(ptr noundef %7, i32 noundef 8192, i32 noundef 114) #5
  %8 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jack1, align 4
  %call6 = tail call i32 @snd_jack_set_key(ptr noundef %9, i32 noundef 4096, i32 noundef 115) #5
  %10 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jack1, align 4
  %call8 = tail call i32 @snd_jack_set_key(ptr noundef %11, i32 noundef 2048, i32 noundef 582) #5
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %jack, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %jack, null
  br i1 %tobool.not.i, label %entry.mt6359_accdet_jack_report.exit_crit_edge, label %if.end.i

entry.mt6359_accdet_jack_report.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6359_accdet_jack_report.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %jack_type.i = getelementptr inbounds %struct.mt6359_accdet, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %jack_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jack_type.i, align 4
  %btn_type.i = getelementptr inbounds %struct.mt6359_accdet, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %btn_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %btn_type.i, align 4
  %or.i = or i32 %16, %14
  tail call void @snd_soc_jack_report(ptr noundef nonnull %jack, i32 noundef %or.i, i32 noundef 30723) #5
  br label %mt6359_accdet_jack_report.exit

mt6359_accdet_jack_report.exit:                   ; preds = %if.end.i, %entry.mt6359_accdet_jack_report.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_accdet_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6359_accdet_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6359_accdet_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6359_accdet_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_accdet_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %pwm_deb.i = alloca [15 x i32], align 4
  %tmp.i = alloca i32, align 4
  %three_key.i = alloca [4 x i32], align 4
  %four_key.i = alloca [5 x i32], align 4
  %three_key139.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6359_accdet_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6359_accdet_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i243 = phi ptr [ %7, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6359_accdet_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i243) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #5
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call.i244 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #5
  %data = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i244, ptr %data, align 4
  %tobool15.not = icmp eq ptr %call.i244, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call.i245 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %pwm_deb = getelementptr inbounds %struct.dts_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %pwm_deb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i245, ptr %pwm_deb, align 4
  %12 = load ptr, ptr %data, align 4
  %pwm_deb22 = getelementptr inbounds %struct.dts_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %pwm_deb22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwm_deb22, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %regmap26 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %regmap26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %regmap26, align 4
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %18) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %dev38 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev38, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %pwm_deb.i) #5
  %20 = call ptr @memset(ptr %pwm_deb.i, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tmp.i, align 4
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  %call.i246 = tail call ptr @of_get_child_by_name(ptr noundef %25, ptr noundef nonnull @.str.25) #5
  %tobool.not.i247 = icmp eq ptr %call.i246, null
  br i1 %tobool.not.i247, label %do.end44, label %if.end.i248

if.end.i248:                                      ; preds = %if.end36
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.43, ptr noundef %27, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end.i248.if.end7.i_crit_edge, label %if.then4.i

if.end.i248.if.end7.i_crit_edge:                  ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %29, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i248.if.end7.i_crit_edge
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %plugout_deb.i = getelementptr inbounds %struct.dts_data, ptr %32, i32 0, i32 2
  %call.i.i226.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.44, ptr noundef %plugout_deb.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i226.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i226.i, -1
  br i1 %tobool10.not.i, label %if.end7.i.if.end14.i_crit_edge, label %if.then11.i

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %plugout_deb13.i = getelementptr inbounds %struct.dts_data, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %plugout_deb13.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %plugout_deb13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end14.i_crit_edge
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %mic_mode.i = getelementptr inbounds %struct.dts_data, ptr %37, i32 0, i32 1
  %call.i.i227.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.45, ptr noundef %mic_mode.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i227.i)
  %tobool17.not.i = icmp sgt i32 %call.i.i227.i, -1
  br i1 %tobool17.not.i, label %if.end14.i.if.end21.i_crit_edge, label %if.then18.i

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %mic_mode20.i = getelementptr inbounds %struct.dts_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %mic_mode20.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %mic_mode20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end21.i_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.46, ptr noundef nonnull %pwm_deb.i, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool23.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %pwm_deb26.i = getelementptr inbounds %struct.dts_data, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %pwm_deb26.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pwm_deb26.i, align 4
  %45 = call ptr @memcpy(ptr %44, ptr %pwm_deb.i, i32 60)
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end28.i_crit_edge
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %eint_pol.i = getelementptr inbounds %struct.dts_data, ptr %47, i32 0, i32 3
  %call.i.i228.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.47, ptr noundef %eint_pol.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i228.i)
  %tobool31.not.i = icmp sgt i32 %call.i.i228.i, -1
  br i1 %tobool31.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then32.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %eint_pol34.i = getelementptr inbounds %struct.dts_data, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %eint_pol34.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %eint_pol34.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end28.i.if.end35.i_crit_edge
  %call.i.i229.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.48, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i229.i)
  %tobool37.not.i = icmp sgt i32 %call.i.i229.i, -1
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end39.thread.i

if.end39.thread.i:                                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tmp.i, align 4
  br label %if.end46.sink.split.i

if.end39.i:                                       ; preds = %if.end35.i
  %52 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i = load i32, ptr %tmp.i, align 4
  %53 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr.i, label %if.end39.i.if.end46.i_crit_edge [
    i32 0, label %if.end39.i.if.end46.sink.split.i_crit_edge
    i32 1, label %if.then42.i
  ]

if.end39.i.if.end46.sink.split.i_crit_edge:       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.sink.split.i

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.sink.split.i

if.end46.sink.split.i:                            ; preds = %if.then42.i, %if.end39.i.if.end46.sink.split.i_crit_edge, %if.end39.thread.i
  %.sink242.i = phi i32 [ 2, %if.then42.i ], [ 1, %if.end39.thread.i ], [ 1, %if.end39.i.if.end46.sink.split.i_crit_edge ]
  %caps.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %caps.i, align 4
  %or44.i = or i32 %55, %.sink242.i
  store i32 %or44.i, ptr %caps.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.sink.split.i, %if.end39.i.if.end46.i_crit_edge
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %eint_detect_mode.i = getelementptr inbounds %struct.dts_data, ptr %57, i32 0, i32 8
  %call.i.i230.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.49, ptr noundef %eint_detect_mode.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i230.i)
  %tobool49.not.i = icmp sgt i32 %call.i.i230.i, -1
  br i1 %tobool49.not.i, label %if.end46.i.if.end53.i_crit_edge, label %if.then50.i

if.end46.i.if.end53.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %eint_detect_mode52.i = getelementptr inbounds %struct.dts_data, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %eint_detect_mode52.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %eint_detect_mode52.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.end46.i.if.end53.i_crit_edge
  %call.i.i231.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.50, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i231.i)
  %tobool55.not.i = icmp sgt i32 %call.i.i231.i, -1
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end57.thread.i

if.end57.thread.i:                                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %tmp.i, align 4
  br label %if.end74.sink.split.i

if.end57.i:                                       ; preds = %if.end53.i
  %62 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr239.i = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr239.i)
  %63 = icmp ult i32 %.pr239.i, 3
  br i1 %63, label %switch.lookup, label %if.end57.i.if.end74.i_crit_edge

if.end57.i.if.end74.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74.i

switch.lookup:                                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mt6359_accdet_probe, i32 0, i32 %.pr239.i
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end74.sink.split.i

if.end74.sink.split.i:                            ; preds = %switch.lookup, %if.end57.thread.i
  %.sink244.i = phi i32 [ 4, %if.end57.thread.i ], [ %switch.load, %switch.lookup ]
  %caps60.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 4
  %65 = ptrtoint ptr %caps60.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %caps60.i, align 4
  %or66.i = or i32 %66, %.sink244.i
  store i32 %or66.i, ptr %caps60.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74.sink.split.i, %if.end57.i.if.end74.i_crit_edge
  %call.i.i232.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.51, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i232.i)
  %tobool76.not.i = icmp sgt i32 %call.i.i232.i, -1
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end78.thread.i

if.end78.thread.i:                                ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tmp.i, align 4
  br label %if.end89.sink.split.i

if.end78.i:                                       ; preds = %if.end74.i
  %68 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr240.i = load i32, ptr %tmp.i, align 4
  %69 = zext i32 %.pr240.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %.pr240.i, label %if.end78.i.if.end89.i_crit_edge [
    i32 0, label %if.end78.i.if.end89.sink.split.i_crit_edge
    i32 1, label %if.then85.i
  ]

if.end78.i.if.end89.sink.split.i_crit_edge:       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89.sink.split.i

if.end78.i.if.end89.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89.i

if.then85.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89.sink.split.i

if.end89.sink.split.i:                            ; preds = %if.then85.i, %if.end78.i.if.end89.sink.split.i_crit_edge, %if.end78.thread.i
  %.sink246.i = phi i32 [ 64, %if.then85.i ], [ 32, %if.end78.thread.i ], [ 32, %if.end78.i.if.end89.sink.split.i_crit_edge ]
  %caps81.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 4
  %70 = ptrtoint ptr %caps81.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %caps81.i, align 4
  %or87.i = or i32 %71, %.sink246.i
  store i32 %or87.i, ptr %caps81.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end89.sink.split.i, %if.end78.i.if.end89.i_crit_edge
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 4
  %eint_use_ext_res.i = getelementptr inbounds %struct.dts_data, ptr %73, i32 0, i32 9
  %call.i.i233.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.52, ptr noundef %eint_use_ext_res.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i233.i)
  %tobool92.not.i = icmp sgt i32 %call.i.i233.i, -1
  br i1 %tobool92.not.i, label %if.end89.i.if.end96.i_crit_edge, label %if.then93.i

if.end89.i.if.end96.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96.i

if.then93.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %eint_use_ext_res95.i = getelementptr inbounds %struct.dts_data, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %eint_use_ext_res95.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %eint_use_ext_res95.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then93.i, %if.end89.i.if.end96.i_crit_edge
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %eint_comp_vth.i = getelementptr inbounds %struct.dts_data, ptr %78, i32 0, i32 10
  %call.i.i234.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.53, ptr noundef %eint_comp_vth.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i234.i)
  %tobool99.not.i = icmp sgt i32 %call.i.i234.i, -1
  br i1 %tobool99.not.i, label %if.end96.i.if.end103.i_crit_edge, label %if.then100.i

if.end96.i.if.end103.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103.i

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 4
  %eint_comp_vth102.i = getelementptr inbounds %struct.dts_data, ptr %80, i32 0, i32 10
  %81 = ptrtoint ptr %eint_comp_vth102.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %eint_comp_vth102.i, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then100.i, %if.end96.i.if.end103.i_crit_edge
  %call.i.i235.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.54, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i235.i)
  %tobool105.not.i = icmp sgt i32 %call.i.i235.i, -1
  br i1 %tobool105.not.i, label %if.end107.i, label %if.end107.thread.i

if.end107.thread.i:                               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %tmp.i, align 4
  br label %if.then109.i

if.end107.i:                                      ; preds = %if.end103.i
  %83 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr241.i = load i32, ptr %tmp.i, align 4
  %84 = zext i32 %.pr241.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %.pr241.i, label %if.end107.i.do.body47_crit_edge [
    i32 0, label %if.end107.i.if.then109.i_crit_edge
    i32 1, label %if.then122.i
    i32 2, label %if.then138.i
  ]

if.end107.i.if.then109.i_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then109.i

if.end107.i.do.body47_crit_edge:                  ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body47

if.then109.i:                                     ; preds = %if.end107.i.if.then109.i_crit_edge, %if.end107.thread.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %three_key.i) #5
  %caps110.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 4
  %85 = call ptr @memset(ptr %three_key.i, i32 255, i32 16)
  %86 = ptrtoint ptr %caps110.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %caps110.i, align 4
  %or111.i = or i32 %87, 256
  store i32 %or111.i, ptr %caps110.i, align 4
  %call.i236.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.55, ptr noundef nonnull %three_key.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i236.i)
  %tobool114.not.i = icmp sgt i32 %call.i236.i, -1
  br i1 %tobool114.not.i, label %if.then115.i, label %if.then109.i.if.end119.i_crit_edge

if.then109.i.if.end119.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119.i

if.then115.i:                                     ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = getelementptr inbounds [4 x i32], ptr %three_key.i, i32 0, i32 1
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data, align 4
  %three_key117.i = getelementptr inbounds %struct.dts_data, ptr %90, i32 0, i32 5
  %91 = call ptr @memcpy(ptr %three_key117.i, ptr %88, i32 12)
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then115.i, %if.then109.i.if.end119.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %three_key.i) #5
  br label %do.body47

if.then122.i:                                     ; preds = %if.end107.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %four_key.i) #5
  %caps123.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 4
  %92 = call ptr @memset(ptr %four_key.i, i32 255, i32 20)
  %93 = ptrtoint ptr %caps123.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %caps123.i, align 4
  %or124.i = or i32 %94, 512
  store i32 %or124.i, ptr %caps123.i, align 4
  %call.i237.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.56, ptr noundef nonnull %four_key.i, i32 noundef 5, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i237.i)
  %tobool127.not.i = icmp sgt i32 %call.i237.i, -1
  br i1 %tobool127.not.i, label %if.then128.i, label %do.end.i

if.then128.i:                                     ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = getelementptr inbounds [5 x i32], ptr %four_key.i, i32 0, i32 1
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 4
  %four_key130.i = getelementptr inbounds %struct.dts_data, ptr %97, i32 0, i32 6
  %98 = call ptr @memcpy(ptr %four_key130.i, ptr %95, i32 16)
  br label %if.end135.i

do.end.i:                                         ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev38, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.57) #8
  br label %if.end135.i

if.end135.i:                                      ; preds = %do.end.i, %if.then128.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %four_key.i) #5
  br label %do.body47

if.then138.i:                                     ; preds = %if.end107.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %three_key139.i) #5
  %caps140.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 4
  %101 = call ptr @memset(ptr %three_key139.i, i32 255, i32 16)
  %102 = ptrtoint ptr %caps140.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %caps140.i, align 4
  %or141.i = or i32 %103, 1024
  store i32 %or141.i, ptr %caps140.i, align 4
  %call.i238.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i246, ptr noundef nonnull @.str.60, ptr noundef nonnull %three_key139.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i238.i)
  %tobool144.not.i = icmp sgt i32 %call.i238.i, -1
  br i1 %tobool144.not.i, label %if.then145.i, label %if.then138.i.if.end150.i_crit_edge

if.then138.i.if.end150.i_crit_edge:               ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150.i

if.then145.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #7
  %104 = getelementptr inbounds [4 x i32], ptr %three_key139.i, i32 0, i32 1
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %three_key147.i = getelementptr inbounds %struct.dts_data, ptr %106, i32 0, i32 5
  %107 = call ptr @memcpy(ptr %three_key147.i, ptr %104, i32 12)
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then145.i, %if.then138.i.if.end150.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %three_key139.i) #5
  br label %do.body47

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %pwm_deb.i) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

do.body47:                                        ; preds = %if.end150.i, %if.end135.i, %if.end119.i, %if.end107.i.do.body47_crit_edge
  %108 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev38, align 4
  %caps158.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 4
  %110 = ptrtoint ptr %caps158.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %caps158.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.62, i32 noundef %111) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %pwm_deb.i) #5
  %res_lock = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 8
  call void @__mutex_init(ptr noundef %res_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @mt6359_accdet_probe.__key) #5
  %call50 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %accdet_irq = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 5
  %112 = ptrtoint ptr %accdet_irq to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call50, ptr %accdet_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool52.not = icmp eq i32 %call50, 0
  br i1 %tobool52.not, label %do.body47.if.end64_crit_edge, label %if.then53

do.body47.if.end64_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then53:                                        ; preds = %do.body47
  %call56 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call50, ptr noundef null, ptr noundef nonnull @mt6359_accdet_irq, i32 noundef 8196, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then53.if.end64_crit_edge, label %do.end61

if.then53.if.end64_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.end61:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call56) #8
  br label %cleanup

if.end64:                                         ; preds = %if.then53.if.end64_crit_edge, %do.body47.if.end64_crit_edge
  %113 = ptrtoint ptr %caps158.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %caps158.i, align 4
  %and = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end64
  %call67 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #5
  %accdet_eint0 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 6
  %115 = ptrtoint ptr %accdet_eint0 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call67, ptr %accdet_eint0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool69.not = icmp eq i32 %call67, 0
  br i1 %tobool69.not, label %if.then66.if.end102_crit_edge, label %if.then70

if.then66.if.end102_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then70:                                        ; preds = %if.then66
  %call73 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call67, ptr noundef null, ptr noundef nonnull @mt6359_accdet_irq, i32 noundef 8196, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then70.if.end102_crit_edge, label %do.end78

if.then70.if.end102_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

do.end78:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call73) #8
  br label %cleanup

if.else:                                          ; preds = %if.end64
  %and83 = and i32 %114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else.if.end102_crit_edge, label %if.then85

if.else.if.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then85:                                        ; preds = %if.else
  %call86 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #5
  %accdet_eint1 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 7
  %116 = ptrtoint ptr %accdet_eint1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call86, ptr %accdet_eint1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool88.not = icmp eq i32 %call86, 0
  br i1 %tobool88.not, label %if.then85.if.end102_crit_edge, label %if.then89

if.then85.if.end102_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then89:                                        ; preds = %if.then85
  %call92 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call86, ptr noundef null, ptr noundef nonnull @mt6359_accdet_irq, i32 noundef 8196, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then89.if.end102_crit_edge, label %do.end97

if.then89.if.end102_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

do.end97:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call92) #8
  br label %cleanup

if.end102:                                        ; preds = %if.then89.if.end102_crit_edge, %if.then85.if.end102_crit_edge, %if.else.if.end102_crit_edge, %if.then70.if.end102_crit_edge, %if.then66.if.end102_crit_edge
  %call103 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.24, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.25) #5
  %accdet_workqueue = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 17
  %117 = ptrtoint ptr %accdet_workqueue to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call103, ptr %accdet_workqueue, align 4
  %accdet_work = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 16
  call void @__init_work(ptr noundef %accdet_work, i32 noundef 0) #5
  %118 = ptrtoint ptr %accdet_work to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -64, ptr %accdet_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 16, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @mt6359_accdet_probe.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry109 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 16, i32 1
  %119 = ptrtoint ptr %entry109 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %entry109, ptr %entry109, align 4
  %prev.i = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 16, i32 1, i32 1
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %entry109, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 16, i32 2
  %121 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @mt6359_accdet_work, ptr %func, align 4
  %122 = ptrtoint ptr %accdet_workqueue to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %accdet_workqueue, align 4
  %tobool114.not = icmp eq ptr %123, null
  br i1 %tobool114.not, label %do.end118, label %if.end120

do.end118:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  br label %do.end155

if.end120:                                        ; preds = %if.end102
  %call121 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.24, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.31) #5
  %jd_workqueue = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 19
  %124 = ptrtoint ptr %jd_workqueue to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call121, ptr %jd_workqueue, align 4
  %jd_work = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 18
  call void @__init_work(ptr noundef %jd_work, i32 noundef 0) #5
  %125 = ptrtoint ptr %jd_work to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -64, ptr %jd_work, align 4
  %lockdep_map128 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 18, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map128, ptr noundef nonnull @.str.33, ptr noundef nonnull @mt6359_accdet_probe.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry130 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 18, i32 1
  %126 = ptrtoint ptr %entry130 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %entry130, ptr %entry130, align 4
  %prev.i250 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 18, i32 1, i32 1
  %127 = ptrtoint ptr %prev.i250 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %entry130, ptr %prev.i250, align 4
  %func132 = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 18, i32 2
  %128 = ptrtoint ptr %func132 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @mt6359_accdet_jd_work, ptr %func132, align 4
  %129 = ptrtoint ptr %jd_workqueue to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %jd_workqueue, align 4
  %tobool136.not = icmp eq ptr %130, null
  br i1 %tobool136.not, label %do.end140, label %if.end142

do.end140:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #8
  %131 = ptrtoint ptr %accdet_workqueue to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %accdet_workqueue, align 4
  call void @destroy_workqueue(ptr noundef %132) #5
  br label %do.end155

if.end142:                                        ; preds = %if.end120
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %133 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call144 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mt6359_accdet_soc_driver, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end151, label %do.end149

do.end149:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end151:                                        ; preds = %if.end142
  %jd_sts = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 15
  %134 = ptrtoint ptr %jd_sts to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 3, ptr %jd_sts, align 4
  %jack_type = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 10
  %135 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %jack_type, align 4
  %btn_type = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 11
  %136 = ptrtoint ptr %btn_type to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %btn_type, align 4
  %accdet_status = getelementptr inbounds %struct.mt6359_accdet, ptr %call.i, i32 0, i32 12
  %137 = ptrtoint ptr %accdet_status to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 3, ptr %accdet_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %138 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %reg.i, align 4
  %139 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap26, align 4
  %call.i.i251 = call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 9866, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %141(i32 noundef 429496000) #5
  %142 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap26, align 4
  %call.i160.i = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef 9866, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 214748000) #5
  %145 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data, align 4
  %pwm_deb.i253 = getelementptr inbounds %struct.dts_data, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %pwm_deb.i253 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pwm_deb.i253, align 4
  %debounce0.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %debounce0.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %debounce0.i, align 4
  %151 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap26, align 4
  %call.i161.i = call i32 @regmap_write(ptr noundef %152, i32 noundef 9880, i32 noundef %150) #5
  %153 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data, align 4
  %pwm_deb4.i = getelementptr inbounds %struct.dts_data, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %pwm_deb4.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pwm_deb4.i, align 4
  %debounce1.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %debounce1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %debounce1.i, align 4
  %159 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regmap26, align 4
  %call3.i.i = call i32 @regmap_write(ptr noundef %160, i32 noundef 9882, i32 noundef %158) #5
  %161 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data, align 4
  %pwm_deb6.i = getelementptr inbounds %struct.dts_data, ptr %162, i32 0, i32 4
  %163 = ptrtoint ptr %pwm_deb6.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pwm_deb6.i, align 4
  %debounce3.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %debounce3.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %debounce3.i, align 4
  %167 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regmap26, align 4
  %call9.i.i = call i32 @regmap_write(ptr noundef %168, i32 noundef 9886, i32 noundef %166) #5
  %169 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data, align 4
  %pwm_deb8.i = getelementptr inbounds %struct.dts_data, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %pwm_deb8.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pwm_deb8.i, align 4
  %debounce4.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %172, i32 0, i32 7
  %173 = ptrtoint ptr %debounce4.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %debounce4.i, align 4
  %175 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap26, align 4
  %call12.i.i = call i32 @regmap_write(ptr noundef %176, i32 noundef 9888, i32 noundef %174) #5
  %177 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data, align 4
  %pwm_deb10.i = getelementptr inbounds %struct.dts_data, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %pwm_deb10.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pwm_deb10.i, align 4
  %eint_debounce0.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %180, i32 0, i32 10
  %181 = ptrtoint ptr %eint_debounce0.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %eint_debounce0.i, align 4
  %183 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regmap26, align 4
  %call.i.i.i254 = call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef 9892, i32 noundef 15, i32 noundef %182, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %185 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data, align 4
  %pwm_deb12.i = getelementptr inbounds %struct.dts_data, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %pwm_deb12.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pwm_deb12.i, align 4
  %eint_debounce1.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %188, i32 0, i32 11
  %189 = ptrtoint ptr %eint_debounce1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %eint_debounce1.i, align 4
  %191 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regmap26, align 4
  %shl18.i.i = shl i32 %190, 4
  %call.i51.i.i = call i32 @regmap_update_bits_base(ptr noundef %192, i32 noundef 9892, i32 noundef 240, i32 noundef %shl18.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %193 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data, align 4
  %pwm_deb14.i = getelementptr inbounds %struct.dts_data, ptr %194, i32 0, i32 4
  %195 = ptrtoint ptr %pwm_deb14.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pwm_deb14.i, align 4
  %eint_debounce3.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %196, i32 0, i32 13
  %197 = ptrtoint ptr %eint_debounce3.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %eint_debounce3.i, align 4
  %199 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regmap26, align 4
  %shl26.i.i = shl i32 %198, 12
  %call.i53.i.i = call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef 9892, i32 noundef 61440, i32 noundef %shl26.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %201 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %data, align 4
  %pwm_deb16.i = getelementptr inbounds %struct.dts_data, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %pwm_deb16.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pwm_deb16.i, align 4
  %eint_inverter_debounce.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %204, i32 0, i32 14
  %205 = ptrtoint ptr %eint_inverter_debounce.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %eint_inverter_debounce.i, align 4
  %207 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regmap26, align 4
  %call30.i.i = call i32 @regmap_write(ptr noundef %208, i32 noundef 9894, i32 noundef %206) #5
  %209 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regmap26, align 4
  %call.i162.i = call i32 @regmap_update_bits_base(ptr noundef %210, i32 noundef 8992, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %211 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regmap26, align 4
  %call.i163.i = call i32 @regmap_update_bits_base(ptr noundef %212, i32 noundef 8992, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %213 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regmap26, align 4
  %call.i164.i = call i32 @regmap_update_bits_base(ptr noundef %214, i32 noundef 9512, i32 noundef 12288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %215 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regmap26, align 4
  %call.i165.i = call i32 @regmap_update_bits_base(ptr noundef %216, i32 noundef 9512, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %217 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regmap26, align 4
  %219 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %data, align 4
  %pwm_deb27.i = getelementptr inbounds %struct.dts_data, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %pwm_deb27.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pwm_deb27.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 4
  %sub.i = add i32 %224, -1
  %call28.i = call i32 @regmap_write(ptr noundef %218, i32 noundef 9870, i32 noundef %sub.i) #5
  %225 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regmap26, align 4
  %227 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %data, align 4
  %pwm_deb31.i = getelementptr inbounds %struct.dts_data, ptr %228, i32 0, i32 4
  %229 = ptrtoint ptr %pwm_deb31.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pwm_deb31.i, align 4
  %pwm_thresh.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %pwm_thresh.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %pwm_thresh.i, align 4
  %sub32.i = add i32 %232, -1
  %call33.i = call i32 @regmap_write(ptr noundef %226, i32 noundef 9872, i32 noundef %sub32.i) #5
  %233 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regmap26, align 4
  %235 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %data, align 4
  %pwm_deb36.i = getelementptr inbounds %struct.dts_data, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %pwm_deb36.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pwm_deb36.i, align 4
  %fall_delay.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %238, i32 0, i32 2
  %239 = ptrtoint ptr %fall_delay.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %fall_delay.i, align 4
  %shl.i = shl i32 %240, 15
  %rise_delay.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %238, i32 0, i32 3
  %241 = ptrtoint ptr %rise_delay.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rise_delay.i, align 4
  %or.i = or i32 %shl.i, %242
  %call39.i = call i32 @regmap_write(ptr noundef %234, i32 noundef 9874, i32 noundef %or.i) #5
  %243 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regmap26, align 4
  %call41.i = call i32 @regmap_read(ptr noundef %244, i32 noundef 9512, ptr noundef nonnull %reg.i) #5
  %245 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %data, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %248)
  %cmp.i255 = icmp ult i32 %248, 8
  br i1 %cmp.i255, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  %249 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regmap26, align 4
  %251 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %reg.i, align 4
  %shl46.i = shl nuw nsw i32 %248, 4
  %or47.i = or i32 %shl46.i, %252
  %or48.i = or i32 %or47.i, 4
  %call49.i = call i32 @regmap_write(ptr noundef %250, i32 noundef 9512, i32 noundef %or48.i) #5
  br label %if.end68.i

if.else.i:                                        ; preds = %if.end151
  %253 = zext i32 %248 to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %248, label %if.else.i.if.end68.i_crit_edge [
    i32 8, label %if.then53.i
    i32 9, label %if.then62.i
  ]

if.else.i.if.end68.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

if.then53.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %254 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regmap26, align 4
  %256 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %reg.i, align 4
  %or56.i = or i32 %257, 12292
  %call57.i = call i32 @regmap_write(ptr noundef %255, i32 noundef 9512, i32 noundef %or56.i) #5
  br label %if.end68.i

if.then62.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %258 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regmap26, align 4
  %260 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %reg.i, align 4
  %or65.i = or i32 %261, 4100
  %call66.i = call i32 @regmap_write(ptr noundef %259, i32 noundef 9512, i32 noundef %or65.i) #5
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then62.i, %if.then53.i, %if.else.i.if.end68.i_crit_edge, %if.then.i
  %262 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regmap26, align 4
  %call70.i = call i32 @regmap_read(ptr noundef %263, i32 noundef 9516, ptr noundef nonnull %reg.i) #5
  %264 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %data, align 4
  %mic_mode.i256 = getelementptr inbounds %struct.dts_data, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %mic_mode.i256 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %mic_mode.i256, align 4
  %268 = zext i32 %267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %267, label %if.end68.i.if.end105.i_crit_edge [
    i32 1, label %if.then73.i
    i32 2, label %if.then85.i258
    i32 6, label %if.then95.i
  ]

if.end68.i.if.end105.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105.i

if.then73.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %269 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regmap26, align 4
  %271 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %reg.i, align 4
  %or75.i = or i32 %272, 15
  %call76.i = call i32 @regmap_write(ptr noundef %270, i32 noundef 9516, i32 noundef %or75.i) #5
  %273 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %regmap26, align 4
  %call.i166.i = call i32 @regmap_update_bits_base(ptr noundef %274, i32 noundef 9518, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %275 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regmap26, align 4
  %call.i167.i = call i32 @regmap_update_bits_base(ptr noundef %276, i32 noundef 9522, i32 noundef 6144, i32 noundef 6144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end105.i

if.then85.i258:                                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %277 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regmap26, align 4
  %279 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %reg.i, align 4
  %or87.i257 = or i32 %280, 143
  %call88.i = call i32 @regmap_write(ptr noundef %278, i32 noundef 9516, i32 noundef %or87.i257) #5
  %281 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regmap26, align 4
  %call.i168.i = call i32 @regmap_update_bits_base(ptr noundef %282, i32 noundef 9518, i32 noundef 12288, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end105.i

if.then95.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %283 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regmap26, align 4
  %285 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %reg.i, align 4
  %or97.i = or i32 %286, 143
  %call98.i = call i32 @regmap_write(ptr noundef %284, i32 noundef 9516, i32 noundef %or97.i) #5
  %287 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regmap26, align 4
  %call.i169.i = call i32 @regmap_update_bits_base(ptr noundef %288, i32 noundef 9512, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %289 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regmap26, align 4
  %call.i170.i = call i32 @regmap_update_bits_base(ptr noundef %290, i32 noundef 9518, i32 noundef 12288, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then95.i, %if.then85.i258, %if.then73.i, %if.end68.i.if.end105.i_crit_edge
  %291 = ptrtoint ptr %caps158.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %caps158.i, align 4
  %and.i = and i32 %292, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i260 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i260, label %if.end105.i.mt6359_accdet_init.exit_crit_edge, label %if.then106.i

if.end105.i.mt6359_accdet_init.exit_crit_edge:    ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6359_accdet_init.exit

if.then106.i:                                     ; preds = %if.end105.i
  %and.i.i = and i32 %292, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #7
  %293 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %regmap26, align 4
  %call.i.i172.i = call i32 @regmap_update_bits_base(ptr noundef %294, i32 noundef 9520, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.then106.i
  %and2.i.i = and i32 %292, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i.if.end7.i.i_crit_edge, label %if.then4.i.i

if.else.i.i.if.end7.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %295 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %regmap26, align 4
  %call.i87.i.i = call i32 @regmap_update_bits_base(ptr noundef %296, i32 noundef 9520, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %if.else.i.i.if.end7.i.i_crit_edge, %if.then.i.i
  %297 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %regmap26, align 4
  %call.i88.i.i = call i32 @regmap_update_bits_base(ptr noundef %298, i32 noundef 9522, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %299 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regmap26, align 4
  %call.i89.i.i = call i32 @regmap_update_bits_base(ptr noundef %300, i32 noundef 9442, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %301 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %data, align 4
  %eint_detect_mode.i.i = getelementptr inbounds %struct.dts_data, ptr %302, i32 0, i32 8
  %303 = ptrtoint ptr %eint_detect_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %eint_detect_mode.i.i, align 4
  %.off.i.i = add i32 %304, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %if.then19.i.i, label %if.end7.i.i.if.end55.i.i_crit_edge

if.end7.i.i.if.end55.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i.i

if.then19.i.i:                                    ; preds = %if.end7.i.i
  %eint_use_ext_res.i.i = getelementptr inbounds %struct.dts_data, ptr %302, i32 0, i32 9
  %305 = ptrtoint ptr %eint_use_ext_res.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %eint_use_ext_res.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %306)
  %cmp21.i.i = icmp eq i32 %306, 1
  %307 = ptrtoint ptr %caps158.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %caps158.i, align 4
  %and24.i.i = and i32 %308, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.else38.i.i

if.then22.i.i:                                    ; preds = %if.then19.i.i
  br i1 %tobool25.not.i.i, label %if.else29.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %309 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %regmap26, align 4
  %call.i90.i.i = call i32 @regmap_update_bits_base(ptr noundef %310, i32 noundef 9516, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end55.i.i

if.else29.i.i:                                    ; preds = %if.then22.i.i
  %and31.i.i = and i32 %308, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.else29.i.i.if.end55.i.i_crit_edge, label %if.then33.i.i

if.else29.i.i.if.end55.i.i_crit_edge:             ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i.i

if.then33.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %311 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %regmap26, align 4
  %call.i91.i.i = call i32 @regmap_update_bits_base(ptr noundef %312, i32 noundef 9518, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end55.i.i

if.else38.i.i:                                    ; preds = %if.then19.i.i
  br i1 %tobool25.not.i.i, label %if.else45.i.i, label %if.then42.i.i

if.then42.i.i:                                    ; preds = %if.else38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %313 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regmap26, align 4
  %call.i92.i.i = call i32 @regmap_update_bits_base(ptr noundef %314, i32 noundef 9516, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end55.i.i

if.else45.i.i:                                    ; preds = %if.else38.i.i
  %and47.i.i = and i32 %308, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.else45.i.i.if.end55.i.i_crit_edge, label %if.then49.i.i

if.else45.i.i.if.end55.i.i_crit_edge:             ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i.i

if.then49.i.i:                                    ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %315 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %regmap26, align 4
  %call.i93.i.i = call i32 @regmap_update_bits_base(ptr noundef %316, i32 noundef 9518, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then49.i.i, %if.else45.i.i.if.end55.i.i_crit_edge, %if.then42.i.i, %if.then33.i.i, %if.else29.i.i.if.end55.i.i_crit_edge, %if.then26.i.i, %if.end7.i.i.if.end55.i.i_crit_edge
  %317 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %data, align 4
  %eint_detect_mode57.i.i = getelementptr inbounds %struct.dts_data, ptr %318, i32 0, i32 8
  %319 = ptrtoint ptr %eint_detect_mode57.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %eint_detect_mode57.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %320)
  %cmp58.not.i.i = icmp eq i32 %320, 1
  br i1 %cmp58.not.i.i, label %if.end55.i.i.config_eint_init_by_mode.exit.i_crit_edge, label %if.then59.i.i

if.end55.i.i.config_eint_init_by_mode.exit.i_crit_edge: ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_eint_init_by_mode.exit.i

if.then59.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %321 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regmap26, align 4
  %call.i94.i.i = call i32 @regmap_update_bits_base(ptr noundef %322, i32 noundef 9522, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %config_eint_init_by_mode.exit.i

config_eint_init_by_mode.exit.i:                  ; preds = %if.then59.i.i, %if.end55.i.i.config_eint_init_by_mode.exit.i_crit_edge
  %323 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regmap26, align 4
  %325 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %data, align 4
  %eint_comp_vth.i.i = getelementptr inbounds %struct.dts_data, ptr %326, i32 0, i32 10
  %327 = ptrtoint ptr %eint_comp_vth.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %eint_comp_vth.i.i, align 4
  %shl.i.i = shl i32 %328, 4
  %call65.i.i = call i32 @regmap_write(ptr noundef %324, i32 noundef 9518, i32 noundef %shl.i.i) #5
  %329 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %regmap26, align 4
  %331 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %data, align 4
  %pwm_deb.i.i = getelementptr inbounds %struct.dts_data, ptr %332, i32 0, i32 4
  %333 = ptrtoint ptr %pwm_deb.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %pwm_deb.i.i, align 4
  %eint_pwm_width.i.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %334, i32 0, i32 8
  %335 = ptrtoint ptr %eint_pwm_width.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %eint_pwm_width.i.i, align 4
  %shl.i176.i = shl i32 %336, 4
  %eint_pwm_thresh.i.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %334, i32 0, i32 9
  %337 = ptrtoint ptr %eint_pwm_thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %eint_pwm_thresh.i.i, align 4
  %or.i.i = or i32 %shl.i176.i, %338
  %call.i177.i = call i32 @regmap_write(ptr noundef %330, i32 noundef 9876, i32 noundef %or.i.i) #5
  %339 = ptrtoint ptr %caps158.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %caps158.i, align 4
  %and.i179.i = and i32 %340, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179.i)
  %tobool.not.i180.i = icmp eq i32 %and.i179.i, 0
  br i1 %tobool.not.i180.i, label %if.else.i181.i, label %config_eint_init_by_mode.exit.i.if.end11.sink.split.i.i_crit_edge

config_eint_init_by_mode.exit.i.if.end11.sink.split.i.i_crit_edge: ; preds = %config_eint_init_by_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.sink.split.i.i

if.else.i181.i:                                   ; preds = %config_eint_init_by_mode.exit.i
  %and6.i.i = and i32 %340, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i181.i.if.end11.i.i_crit_edge, label %if.else.i181.i.if.end11.sink.split.i.i_crit_edge

if.else.i181.i.if.end11.sink.split.i.i_crit_edge: ; preds = %if.else.i181.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.sink.split.i.i

if.else.i181.i.if.end11.i.i_crit_edge:            ; preds = %if.else.i181.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i

if.end11.sink.split.i.i:                          ; preds = %if.else.i181.i.if.end11.sink.split.i.i_crit_edge, %config_eint_init_by_mode.exit.i.if.end11.sink.split.i.i_crit_edge
  %.sink78.i.i = phi i32 [ 39, %config_eint_init_by_mode.exit.i.if.end11.sink.split.i.i_crit_edge ], [ 1217, %if.else.i181.i.if.end11.sink.split.i.i_crit_edge ]
  %341 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regmap26, align 4
  %call10.i.i = call i32 @regmap_write(ptr noundef %342, i32 noundef 9902, i32 noundef %.sink78.i.i) #5
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end11.sink.split.i.i, %if.else.i181.i.if.end11.i.i_crit_edge
  %343 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %regmap26, align 4
  %call.i.i182.i = call i32 @regmap_update_bits_base(ptr noundef %344, i32 noundef 9900, i32 noundef 28672, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %345 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regmap26, align 4
  %call15.i.i = call i32 @regmap_write(ptr noundef %346, i32 noundef 9904, i32 noundef 256) #5
  %347 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %regmap26, align 4
  %call.i73.i.i = call i32 @regmap_update_bits_base(ptr noundef %348, i32 noundef 9866, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %349 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %regmap26, align 4
  %call19.i.i = call i32 @regmap_write(ptr noundef %350, i32 noundef 9868, i32 noundef 103) #5
  %351 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %data, align 4
  %eint_detect_mode.i183.i = getelementptr inbounds %struct.dts_data, ptr %352, i32 0, i32 8
  %353 = ptrtoint ptr %eint_detect_mode.i183.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %eint_detect_mode.i183.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %354)
  %cmp.i.i = icmp eq i32 %354, 1
  %355 = ptrtoint ptr %caps158.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %caps158.i, align 4
  %and23.i.i = and i32 %356, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i.i, label %if.else37.i.i

if.then21.i.i:                                    ; preds = %if.end11.i.i
  br i1 %tobool24.not.i.i, label %if.else28.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %357 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %regmap26, align 4
  %call.i74.i.i = call i32 @regmap_update_bits_base(ptr noundef %358, i32 noundef 9866, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %mt6359_accdet_init.exit

if.else28.i.i:                                    ; preds = %if.then21.i.i
  %and30.i.i = and i32 %356, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.else28.i.i.mt6359_accdet_init.exit_crit_edge, label %if.then32.i.i

if.else28.i.i.mt6359_accdet_init.exit_crit_edge:  ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6359_accdet_init.exit

if.then32.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %359 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %regmap26, align 4
  %call.i75.i.i = call i32 @regmap_update_bits_base(ptr noundef %360, i32 noundef 9866, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %mt6359_accdet_init.exit

if.else37.i.i:                                    ; preds = %if.end11.i.i
  br i1 %tobool24.not.i.i, label %if.else44.i.i, label %if.then41.i.i

if.then41.i.i:                                    ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %361 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %regmap26, align 4
  %call.i76.i.i = call i32 @regmap_update_bits_base(ptr noundef %362, i32 noundef 9866, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %mt6359_accdet_init.exit

if.else44.i.i:                                    ; preds = %if.else37.i.i
  %and46.i.i = and i32 %356, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.else44.i.i.mt6359_accdet_init.exit_crit_edge, label %if.then48.i.i

if.else44.i.i.mt6359_accdet_init.exit_crit_edge:  ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6359_accdet_init.exit

if.then48.i.i:                                    ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %363 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %regmap26, align 4
  %call.i77.i.i = call i32 @regmap_update_bits_base(ptr noundef %364, i32 noundef 9866, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %mt6359_accdet_init.exit

mt6359_accdet_init.exit:                          ; preds = %if.then48.i.i, %if.else44.i.i.mt6359_accdet_init.exit_crit_edge, %if.then41.i.i, %if.then32.i.i, %if.else28.i.i.mt6359_accdet_init.exit_crit_edge, %if.then25.i.i, %if.end105.i.mt6359_accdet_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  %365 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %call.i, align 4
  %tobool.not.i262 = icmp eq ptr %366, null
  br i1 %tobool.not.i262, label %mt6359_accdet_init.exit.cleanup_crit_edge, label %if.end.i264

mt6359_accdet_init.exit.cleanup_crit_edge:        ; preds = %mt6359_accdet_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i264:                                      ; preds = %mt6359_accdet_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %367 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %jack_type, align 4
  %369 = ptrtoint ptr %btn_type to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %btn_type, align 4
  %or.i263 = or i32 %370, %368
  call void @snd_soc_jack_report(ptr noundef nonnull %366, i32 noundef %or.i263, i32 noundef 30723) #5
  br label %cleanup

do.end155:                                        ; preds = %do.end140, %do.end118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end155, %if.end.i264, %mt6359_accdet_init.exit.cleanup_crit_edge, %do.end149, %do.end97, %do.end78, %do.end61, %do.end44, %if.then29, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then29 ], [ -22, %do.end44 ], [ %call56, %do.end61 ], [ %call73, %do.end78 ], [ %call144, %do.end149 ], [ -1, %do.end155 ], [ %call92, %do.end97 ], [ -12, %do.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %mt6359_accdet_init.exit.cleanup_crit_edge ], [ 0, %if.end.i264 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_accdet_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %irq_val = alloca i32, align 4
  %val = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_val) #5
  %0 = ptrtoint ptr %irq_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 4
  %res_lock = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %res_lock, i32 noundef 0) #5
  %regmap = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 9900, ptr noundef nonnull %irq_val) #5
  %5 = ptrtoint ptr %irq_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 9900, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call3 = call i64 @ktime_get() #5
  %add.i = add i64 %call3, 1000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.then
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %10, i32 noundef 9900, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %for.cond.do.end40_crit_edge

for.cond.do.end40_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

lor.lhs.false:                                    ; preds = %for.cond
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %and15 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_read(ptr noundef %14, i32 noundef 9900, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool30.not = icmp eq i32 %call25, 0
  br i1 %tobool30.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end40_crit_edge

for.end.do.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %and31 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.end42, label %lor.rhs.do.end40_crit_edge

lor.rhs.do.end40_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

do.end40:                                         ; preds = %lor.rhs.do.end40_crit_edge, %for.end.do.end40_crit_edge, %for.cond.do.end40_crit_edge
  %tobool30.not289.ph = phi i32 [ -110, %lor.rhs.do.end40_crit_edge ], [ %call25, %for.end.do.end40_crit_edge ], [ %call13, %for.cond.do.end40_crit_edge ]
  %dev = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %tobool30.not289.ph) #8
  br label %cleanup

if.end42:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i265 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9900, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i266 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9012, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %accdet_workqueue = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 17
  %23 = ptrtoint ptr %accdet_workqueue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %accdet_workqueue, align 4
  %accdet_work = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 16
  %call.i267 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %accdet_work) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %and48 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else.if.end121_crit_edge, label %if.then50

if.else.if.end121_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then50:                                        ; preds = %if.else
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i268 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 9900, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call58 = call i64 @ktime_get() #5
  %add.i269 = add i64 %call58, 1000000
  br label %for.cond72

for.cond72:                                       ; preds = %land.lhs.true82.for.cond72_crit_edge, %if.then50
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call74 = call i32 @regmap_read(ptr noundef %28, i32 noundef 9900, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %for.cond72.do.end113_crit_edge

for.cond72.do.end113_crit_edge:                   ; preds = %for.cond72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

lor.lhs.false76:                                  ; preds = %for.cond72
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value, align 4
  %and77 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %cmp78 = icmp eq i32 %and77, 0
  br i1 %cmp78, label %lor.lhs.false76.lor.rhs98_crit_edge, label %land.lhs.true82

lor.lhs.false76.lor.rhs98_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs98

land.lhs.true82:                                  ; preds = %lor.lhs.false76
  %call83 = call i64 @ktime_get() #5
  %cmp3.i271 = icmp sgt i64 %call83, %add.i269
  br i1 %cmp3.i271, label %for.end95, label %land.lhs.true82.for.cond72_crit_edge

land.lhs.true82.for.cond72_crit_edge:             ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond72

for.end95:                                        ; preds = %land.lhs.true82
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call88 = call i32 @regmap_read(ptr noundef %32, i32 noundef 9900, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool97.not = icmp eq i32 %call88, 0
  br i1 %tobool97.not, label %for.end95.lor.rhs98_crit_edge, label %for.end95.do.end113_crit_edge

for.end95.do.end113_crit_edge:                    ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

for.end95.lor.rhs98_crit_edge:                    ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs98

lor.rhs98:                                        ; preds = %for.end95.lor.rhs98_crit_edge, %lor.lhs.false76.lor.rhs98_crit_edge
  %33 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value, align 4
  %and99 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %cmp100 = icmp eq i32 %and99, 0
  br i1 %cmp100, label %if.end116, label %lor.rhs98.do.end113_crit_edge

lor.rhs98.do.end113_crit_edge:                    ; preds = %lor.rhs98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

do.end113:                                        ; preds = %lor.rhs98.do.end113_crit_edge, %for.end95.do.end113_crit_edge, %for.cond72.do.end113_crit_edge
  %tobool97.not298.ph = phi i32 [ -110, %lor.rhs98.do.end113_crit_edge ], [ %call88, %for.end95.do.end113_crit_edge ], [ %call74, %for.cond72.do.end113_crit_edge ]
  %dev114 = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev114, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %tobool97.not298.ph) #8
  br label %cleanup

if.end116:                                        ; preds = %lor.rhs98
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i274 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 9900, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i275 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 9012, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end121

if.end121:                                        ; preds = %if.end116, %if.else.if.end121_crit_edge
  %41 = ptrtoint ptr %irq_val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_val, align 4
  %and122 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.if.end195_crit_edge, label %if.then124

if.end121.if.end195_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

if.then124:                                       ; preds = %if.end121
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i276 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 9900, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call132 = call i64 @ktime_get() #5
  %add.i277 = add i64 %call132, 1000000
  br label %for.cond146

for.cond146:                                      ; preds = %land.lhs.true156.for.cond146_crit_edge, %if.then124
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call148 = call i32 @regmap_read(ptr noundef %46, i32 noundef 9900, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %lor.lhs.false150, label %for.cond146.do.end187_crit_edge

for.cond146.do.end187_crit_edge:                  ; preds = %for.cond146
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end187

lor.lhs.false150:                                 ; preds = %for.cond146
  %47 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %value, align 4
  %and151 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %cmp152 = icmp eq i32 %and151, 0
  br i1 %cmp152, label %lor.lhs.false150.lor.rhs172_crit_edge, label %land.lhs.true156

lor.lhs.false150.lor.rhs172_crit_edge:            ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs172

land.lhs.true156:                                 ; preds = %lor.lhs.false150
  %call157 = call i64 @ktime_get() #5
  %cmp3.i279 = icmp sgt i64 %call157, %add.i277
  br i1 %cmp3.i279, label %for.end169, label %land.lhs.true156.for.cond146_crit_edge

land.lhs.true156.for.cond146_crit_edge:           ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond146

for.end169:                                       ; preds = %land.lhs.true156
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call162 = call i32 @regmap_read(ptr noundef %50, i32 noundef 9900, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool171.not = icmp eq i32 %call162, 0
  br i1 %tobool171.not, label %for.end169.lor.rhs172_crit_edge, label %for.end169.do.end187_crit_edge

for.end169.do.end187_crit_edge:                   ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end187

for.end169.lor.rhs172_crit_edge:                  ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs172

lor.rhs172:                                       ; preds = %for.end169.lor.rhs172_crit_edge, %lor.lhs.false150.lor.rhs172_crit_edge
  %51 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %value, align 4
  %and173 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %cmp174 = icmp eq i32 %and173, 0
  br i1 %cmp174, label %if.end190, label %lor.rhs172.do.end187_crit_edge

lor.rhs172.do.end187_crit_edge:                   ; preds = %lor.rhs172
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end187

do.end187:                                        ; preds = %lor.rhs172.do.end187_crit_edge, %for.end169.do.end187_crit_edge, %for.cond146.do.end187_crit_edge
  %tobool171.not307.ph = phi i32 [ -110, %lor.rhs172.do.end187_crit_edge ], [ %call162, %for.end169.do.end187_crit_edge ], [ %call148, %for.cond146.do.end187_crit_edge ]
  %dev188 = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 1
  %53 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev188, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %tobool171.not307.ph) #8
  br label %cleanup

if.end190:                                        ; preds = %lor.rhs172
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i282 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 9900, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call.i283 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 9012, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end195

if.end195:                                        ; preds = %if.end190, %if.end121.if.end195_crit_edge
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call197 = call i32 @regmap_read(ptr noundef %60, i32 noundef 9916, ptr noundef nonnull %val) #5
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  %shr198 = lshr i32 %62, 6
  %and199 = and i32 %shr198, 3
  %jd_sts = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 15
  %63 = ptrtoint ptr %jd_sts to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and199, ptr %jd_sts, align 4
  call fastcc void @mt6359_accdet_jd_setting(ptr noundef %data)
  %jd_workqueue = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 19
  %64 = ptrtoint ptr %jd_workqueue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %jd_workqueue, align 4
  %jd_work = getelementptr inbounds %struct.mt6359_accdet, ptr %data, i32 0, i32 18
  %call.i284 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %jd_work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %do.end187, %do.end113, %if.end42, %do.end40
  %retval.0 = phi i32 [ 0, %do.end40 ], [ 0, %do.end113 ], [ 0, %do.end187 ], [ 1, %if.end195 ], [ 1, %if.end42 ]
  call void @mutex_unlock(ptr noundef %res_lock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt6359_accdet_work(ptr noundef %work) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -152
  %res_lock = getelementptr i8, ptr %work, i32 -120
  tail call void @mutex_lock_nested(ptr noundef %res_lock, i32 noundef 0) #5
  %accdet_status = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %accdet_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accdet_status, align 4
  %pre_accdet_status = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %pre_accdet_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %pre_accdet_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val.i, align 4
  %regmap.i = getelementptr i8, ptr %work, i32 -144
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 9914, ptr noundef nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %7, 6
  %and.i = and i32 %shr.i, 3
  %8 = ptrtoint ptr %accdet_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %accdet_status, align 4
  %9 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %and.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %entry
  %jack_type.i = getelementptr i8, ptr %work, i32 -24
  %10 = ptrtoint ptr %jack_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jack_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  %btn_type.i.i = getelementptr i8, ptr %work, i32 -20
  %12 = ptrtoint ptr %btn_type.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %btn_type.i.i, align 4
  %cali_voltage.i.i = getelementptr i8, ptr %work, i32 -8
  %13 = ptrtoint ptr %cali_voltage.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cali_voltage.i.i, align 4
  %caps.i.i.i = getelementptr i8, ptr %work, i32 -136
  %15 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %data34.i.i.i = getelementptr i8, ptr %work, i32 -140
  %17 = ptrtoint ptr %data34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data34.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %down.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %down.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %down.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %14)
  %cmp.i.i.i = icmp ugt i32 %20, %14
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i
  %up.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %up.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %up.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %14)
  %cmp3.not.i.i.i = icmp ugt i32 %22, %14
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then4.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then4.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %btn_type.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8192, ptr %btn_type.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then4.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %up7.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %up7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %up7.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %14)
  %cmp8.i.i.i = icmp ugt i32 %25, %14
  br i1 %cmp8.i.i.i, label %land.lhs.true9.i.i.i, label %if.end.i.i.i.if.end15.i.i.i_crit_edge

if.end.i.i.i.if.end15.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %if.end.i.i.i
  %voice.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %voice.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %voice.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %14)
  %cmp12.not.i.i.i = icmp ugt i32 %27, %14
  br i1 %cmp12.not.i.i.i, label %land.lhs.true9.i.i.i.if.end15.i.i.i_crit_edge, label %if.then13.i.i.i

land.lhs.true9.i.i.i.if.end15.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i.i

if.then13.i.i.i:                                  ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %btn_type.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4096, ptr %btn_type.i.i, align 4
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.then13.i.i.i, %land.lhs.true9.i.i.i.if.end15.i.i.i_crit_edge, %if.end.i.i.i.if.end15.i.i.i_crit_edge
  %voice18.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %voice18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %voice18.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %14)
  %cmp19.i.i.i = icmp ugt i32 %30, %14
  br i1 %cmp19.i.i.i, label %land.lhs.true20.i.i.i, label %if.end15.i.i.i.if.end26.i.i.i_crit_edge

if.end15.i.i.i.if.end26.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i.i

land.lhs.true20.i.i.i:                            ; preds = %if.end15.i.i.i
  %four_key17.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 6
  %31 = ptrtoint ptr %four_key17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %four_key17.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %14)
  %cmp23.not.i.i.i = icmp ugt i32 %32, %14
  br i1 %cmp23.not.i.i.i, label %land.lhs.true20.i.i.i.if.end26.i.i.i_crit_edge, label %if.then24.i.i.i

land.lhs.true20.i.i.i.if.end26.i.i.i_crit_edge:   ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i.i

if.then24.i.i.i:                                  ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %btn_type.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2048, ptr %btn_type.i.i, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.then24.i.i.i, %land.lhs.true20.i.i.i.if.end26.i.i.i_crit_edge, %if.end15.i.i.i.if.end26.i.i.i_crit_edge
  %four_key28.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 6
  %34 = ptrtoint ptr %four_key28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %four_key28.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %14)
  %cmp30.i.i.i = icmp ugt i32 %35, %14
  br i1 %cmp30.i.i.i, label %if.end26.i.i.i.if.end64.sink.split.i.i.i_crit_edge, label %if.end26.i.i.i.check_jack_btn_type.exit_crit_edge

if.end26.i.i.i.check_jack_btn_type.exit_crit_edge: ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_jack_btn_type.exit

if.end26.i.i.i.if.end64.sink.split.i.i.i_crit_edge: ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then.i
  %down35.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %down35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %down35.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %14)
  %cmp36.i.i.i = icmp ugt i32 %37, %14
  br i1 %cmp36.i.i.i, label %land.lhs.true37.i.i.i, label %if.else.i.i.i.if.end44.i.i.i_crit_edge

if.else.i.i.i.if.end44.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i.i.i

land.lhs.true37.i.i.i:                            ; preds = %if.else.i.i.i
  %up40.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %up40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %up40.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %14)
  %cmp41.not.i.i.i = icmp ugt i32 %39, %14
  br i1 %cmp41.not.i.i.i, label %land.lhs.true37.i.i.i.if.end44.i.i.i_crit_edge, label %if.then42.i.i.i

land.lhs.true37.i.i.i.if.end44.i.i.i_crit_edge:   ; preds = %land.lhs.true37.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i.i.i

if.then42.i.i.i:                                  ; preds = %land.lhs.true37.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %btn_type.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8192, ptr %btn_type.i.i, align 4
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then42.i.i.i, %land.lhs.true37.i.i.i.if.end44.i.i.i_crit_edge, %if.else.i.i.i.if.end44.i.i.i_crit_edge
  %up47.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %up47.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %up47.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %14)
  %cmp48.i.i.i = icmp ugt i32 %42, %14
  br i1 %cmp48.i.i.i, label %land.lhs.true49.i.i.i, label %if.end44.i.i.i.if.end56.i.i.i_crit_edge

if.end44.i.i.i.if.end56.i.i.i_crit_edge:          ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i.i.i

land.lhs.true49.i.i.i:                            ; preds = %if.end44.i.i.i
  %three_key46.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 5
  %43 = ptrtoint ptr %three_key46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %three_key46.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %14)
  %cmp53.not.i.i.i = icmp ugt i32 %44, %14
  br i1 %cmp53.not.i.i.i, label %land.lhs.true49.i.i.i.if.end56.i.i.i_crit_edge, label %if.then54.i.i.i

land.lhs.true49.i.i.i.if.end56.i.i.i_crit_edge:   ; preds = %land.lhs.true49.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i.i.i

if.then54.i.i.i:                                  ; preds = %land.lhs.true49.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %btn_type.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4096, ptr %btn_type.i.i, align 4
  br label %if.end56.i.i.i

if.end56.i.i.i:                                   ; preds = %if.then54.i.i.i, %land.lhs.true49.i.i.i.if.end56.i.i.i_crit_edge, %if.end44.i.i.i.if.end56.i.i.i_crit_edge
  %three_key58.i.i.i = getelementptr inbounds %struct.dts_data, ptr %18, i32 0, i32 5
  %46 = ptrtoint ptr %three_key58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %three_key58.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %14)
  %cmp60.i.i.i = icmp ugt i32 %47, %14
  br i1 %cmp60.i.i.i, label %if.end56.i.i.i.if.end64.sink.split.i.i.i_crit_edge, label %if.end56.i.i.i.check_jack_btn_type.exit_crit_edge

if.end56.i.i.i.check_jack_btn_type.exit_crit_edge: ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_jack_btn_type.exit

if.end56.i.i.i.if.end64.sink.split.i.i.i_crit_edge: ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.sink.split.i.i.i

if.end64.sink.split.i.i.i:                        ; preds = %if.end56.i.i.i.if.end64.sink.split.i.i.i_crit_edge, %if.end26.i.i.i.if.end64.sink.split.i.i.i_crit_edge
  %48 = ptrtoint ptr %btn_type.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16384, ptr %btn_type.i.i, align 4
  br label %check_jack_btn_type.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %jack_type.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %jack_type.i, align 4
  br label %check_jack_btn_type.exit

sw.bb3.i:                                         ; preds = %entry
  %jack_type4.i = getelementptr i8, ptr %work, i32 -24
  %50 = ptrtoint ptr %jack_type4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %jack_type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp5.i = icmp eq i32 %51, 3
  br i1 %cmp5.i, label %if.then6.i, label %if.else7.i

if.then6.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  %btn_type.i24.i = getelementptr i8, ptr %work, i32 -20
  %52 = ptrtoint ptr %btn_type.i24.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %btn_type.i24.i, align 4
  br label %check_jack_btn_type.exit

if.else7.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %jack_type4.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %jack_type4.i, align 4
  %54 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i, align 4
  %call.i53.i.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 9892, i32 noundef 61440, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %check_jack_btn_type.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %jack_type11.i = getelementptr i8, ptr %work, i32 -24
  %56 = ptrtoint ptr %jack_type11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %jack_type11.i, align 4
  br label %check_jack_btn_type.exit

check_jack_btn_type.exit:                         ; preds = %sw.default.i, %if.else7.i, %if.then6.i, %if.else.i, %if.end64.sink.split.i.i.i, %if.end56.i.i.i.check_jack_btn_type.exit_crit_edge, %if.end26.i.i.i.check_jack_btn_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %jack_plugged = getelementptr i8, ptr %work, i32 -28
  %57 = ptrtoint ptr %jack_plugged to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %jack_plugged, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not = icmp eq i8 %58, 0
  br i1 %tobool.not, label %check_jack_btn_type.exit.if.end_crit_edge, label %land.lhs.true

check_jack_btn_type.exit.if.end_crit_edge:        ; preds = %check_jack_btn_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %check_jack_btn_type.exit
  %59 = ptrtoint ptr %pre_accdet_status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pre_accdet_status, align 4
  %61 = ptrtoint ptr %accdet_status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %accdet_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.not = icmp eq i32 %60, %62
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %jack_type.i12 = getelementptr i8, ptr %work, i32 -24
  %65 = ptrtoint ptr %jack_type.i12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %jack_type.i12, align 4
  %btn_type.i = getelementptr i8, ptr %work, i32 -20
  %67 = ptrtoint ptr %btn_type.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %btn_type.i, align 4
  %or.i = or i32 %68, %66
  call void @snd_soc_jack_report(ptr noundef nonnull %64, i32 noundef %or.i, i32 noundef 30723) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %check_jack_btn_type.exit.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %res_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt6359_accdet_jd_work(ptr noundef %work) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %add.ptr = getelementptr i8, ptr %work, i32 -200
  %res_lock = getelementptr i8, ptr %work, i32 -168
  tail call void @mutex_lock_nested(ptr noundef %res_lock, i32 noundef 0) #5
  %jd_sts = getelementptr i8, ptr %work, i32 -52
  %1 = ptrtoint ptr %jd_sts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %jd_sts, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %2, label %entry.if.end51_crit_edge [
    i32 0, label %if.then
    i32 3, label %if.then46
  ]

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then:                                          ; preds = %entry
  %jack_plugged = getelementptr i8, ptr %work, i32 -76
  %4 = ptrtoint ptr %jack_plugged to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %jack_plugged, align 4
  %regmap = getelementptr i8, ptr %work, i32 -192
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 9866, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 9866, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call3 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call3, 1000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.then
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %10, i32 noundef 9866, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.do.end40_crit_edge

for.cond.do.end40_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

lor.lhs.false:                                    ; preds = %for.cond
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call19 = call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_read(ptr noundef %14, i32 noundef 9866, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool30.not = icmp eq i32 %call24, 0
  br i1 %tobool30.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end40_crit_edge

for.end.do.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %and31 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %lor.rhs.if.end41_crit_edge, label %lor.rhs.do.end40_crit_edge

lor.rhs.do.end40_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

lor.rhs.if.end41_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.end40:                                         ; preds = %lor.rhs.do.end40_crit_edge, %for.end.do.end40_crit_edge, %for.cond.do.end40_crit_edge
  %tobool30.not91.ph = phi i32 [ -110, %lor.rhs.do.end40_crit_edge ], [ %call24, %for.end.do.end40_crit_edge ], [ %call14, %for.cond.do.end40_crit_edge ]
  %dev = getelementptr i8, ptr %work, i32 -196
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.74, i32 noundef %tobool30.not91.ph) #8
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %lor.rhs.if.end41_crit_edge
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i82 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9866, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end51

if.then46:                                        ; preds = %entry
  %jack_plugged47 = getelementptr i8, ptr %work, i32 -76
  %21 = ptrtoint ptr %jack_plugged47 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %jack_plugged47, align 4
  %data = getelementptr i8, ptr %work, i32 -188
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %pwm_deb = getelementptr inbounds %struct.dts_data, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %pwm_deb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pwm_deb, align 4
  %debounce3 = getelementptr inbounds %struct.pwm_deb_settings, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %debounce3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debounce3, align 4
  %regmap8.i = getelementptr i8, ptr %work, i32 -192
  %28 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap8.i, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 9886, i32 noundef %27) #5
  %30 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap8.i, align 4
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 9866, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %32 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %value.i, align 4
  %33 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap8.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 9900, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #5
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then46
  %35 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap8.i, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 9900, ptr noundef nonnull %value.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.cond.i.do.end35.i_crit_edge

for.cond.i.do.end35.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35.i

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %37 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i, align 4
  %and.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp11.i = icmp eq i32 %and.i, 0
  br i1 %cmp11.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call15.i = call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %39 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap8.i, align 4
  %call20.i = call i32 @regmap_read(ptr noundef %40, i32 noundef 9900, ptr noundef nonnull %value.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool25.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool25.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end35.i_crit_edge

for.end.i.do.end35.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %41 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value.i, align 4
  %and26.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %cmp27.i = icmp eq i32 %and26.i, 0
  br i1 %cmp27.i, label %lor.rhs.i.if.end36.i_crit_edge, label %lor.rhs.i.do.end35.i_crit_edge

lor.rhs.i.do.end35.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35.i

lor.rhs.i.if.end36.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

do.end35.i:                                       ; preds = %lor.rhs.i.do.end35.i_crit_edge, %for.end.i.do.end35.i_crit_edge, %for.cond.i.do.end35.i_crit_edge
  %tobool25.not74.ph.i = phi i32 [ -110, %lor.rhs.i.do.end35.i_crit_edge ], [ %call20.i, %for.end.i.do.end35.i_crit_edge ], [ %call10.i, %for.cond.i.do.end35.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %work, i32 -196
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.75, i32 noundef %tobool25.not74.ph.i) #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end35.i, %lor.rhs.i.if.end36.i_crit_edge
  %45 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap8.i, align 4
  %call.i67.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 9900, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %47 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap8.i, align 4
  %call.i68.i = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 9012, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %pwm_deb.i = getelementptr inbounds %struct.dts_data, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %pwm_deb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pwm_deb.i, align 4
  %debounce0.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %debounce0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debounce0.i, align 4
  %55 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap8.i, align 4
  %call.i69.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 9880, i32 noundef %54) #5
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %pwm_deb42.i = getelementptr inbounds %struct.dts_data, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %pwm_deb42.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pwm_deb42.i, align 4
  %debounce1.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %debounce1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debounce1.i, align 4
  %63 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap8.i, align 4
  %call3.i.i = call i32 @regmap_write(ptr noundef %64, i32 noundef 9882, i32 noundef %62) #5
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %pwm_deb44.i = getelementptr inbounds %struct.dts_data, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %pwm_deb44.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pwm_deb44.i, align 4
  %debounce3.i = getelementptr inbounds %struct.pwm_deb_settings, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %debounce3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debounce3.i, align 4
  %71 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap8.i, align 4
  %call9.i.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 9886, i32 noundef %70) #5
  %jack_type.i = getelementptr i8, ptr %work, i32 -72
  %73 = ptrtoint ptr %jack_type.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %jack_type.i, align 4
  %btn_type.i = getelementptr i8, ptr %work, i32 -68
  %74 = ptrtoint ptr %btn_type.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %btn_type.i, align 4
  %accdet_status.i = getelementptr i8, ptr %work, i32 -64
  %75 = ptrtoint ptr %accdet_status.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %accdet_status.i, align 4
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %if.end36.i.mt6359_accdet_recover_jd_setting.exit_crit_edge, label %if.end.i.i

if.end36.i.mt6359_accdet_recover_jd_setting.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6359_accdet_recover_jd_setting.exit

if.end.i.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @snd_soc_jack_report(ptr noundef nonnull %77, i32 noundef 0, i32 noundef 30723) #5
  br label %mt6359_accdet_recover_jd_setting.exit

mt6359_accdet_recover_jd_setting.exit:            ; preds = %if.end.i.i, %if.end36.i.mt6359_accdet_recover_jd_setting.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  br label %if.end51

if.end51:                                         ; preds = %mt6359_accdet_recover_jd_setting.exit, %if.end41, %entry.if.end51_crit_edge
  %caps = getelementptr i8, ptr %work, i32 -184
  %78 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %caps, align 4
  %and52 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  %80 = ptrtoint ptr %jd_sts to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %jd_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %cmp.i84 = icmp eq i32 %81, 3
  br i1 %cmp.i84, label %if.then.i, label %if.then54.if.end55_crit_edge

if.then54.if.end55_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then.i:                                        ; preds = %if.then54
  %data.i.i = getelementptr i8, ptr %work, i32 -188
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %eint_detect_mode.i.i = getelementptr inbounds %struct.dts_data, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %eint_detect_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %eint_detect_mode.i.i, align 4
  %.off.i.i = add i32 %85, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i85_crit_edge

if.then.i.if.end.i.i85_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i85

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i.i = getelementptr i8, ptr %work, i32 -192
  %86 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 9522, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end.i.i85

if.end.i.i85:                                     ; preds = %if.then.i.i, %if.then.i.if.end.i.i85_crit_edge
  %88 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i, align 4
  %eint_detect_mode5.i.i = getelementptr inbounds %struct.dts_data, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %eint_detect_mode5.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %eint_detect_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %cmp6.i.i = icmp eq i32 %91, 4
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end.i.i85.recover_eint_analog_setting.exit.i_crit_edge

if.end.i.i85.recover_eint_analog_setting.exit.i_crit_edge: ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %recover_eint_analog_setting.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i85
  %92 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %caps, align 4
  %and.i.i = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i86 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i86, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap9.i.i = getelementptr i8, ptr %work, i32 -192
  %94 = ptrtoint ptr %regmap9.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap9.i.i, align 4
  %call.i30.i.i = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 9516, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %if.then7.i.i
  %and12.i.i = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.else.i.i.if.end18.i.i_crit_edge, label %if.then14.i.i

if.else.i.i.if.end18.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap15.i.i = getelementptr i8, ptr %work, i32 -192
  %96 = ptrtoint ptr %regmap15.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap15.i.i, align 4
  %call.i31.i.i = call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 9518, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then14.i.i, %if.else.i.i.if.end18.i.i_crit_edge, %if.then8.i.i
  %regmap19.i.i = getelementptr i8, ptr %work, i32 -192
  %98 = ptrtoint ptr %regmap19.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap19.i.i, align 4
  %call.i32.i.i = call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 9516, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %recover_eint_analog_setting.exit.i

recover_eint_analog_setting.exit.i:               ; preds = %if.end18.i.i, %if.end.i.i85.recover_eint_analog_setting.exit.i_crit_edge
  %100 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %caps, align 4
  %and.i4.i = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.not.i5.i = icmp eq i32 %and.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.else.i6.i, label %recover_eint_analog_setting.exit.i.if.end7.sink.split.i.i_crit_edge

recover_eint_analog_setting.exit.i.if.end7.sink.split.i.i_crit_edge: ; preds = %recover_eint_analog_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.sink.split.i.i

if.else.i6.i:                                     ; preds = %recover_eint_analog_setting.exit.i
  %and2.i.i = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.else.i6.i.if.end7.i.i_crit_edge, label %if.else.i6.i.if.end7.sink.split.i.i_crit_edge

if.else.i6.i.if.end7.sink.split.i.i_crit_edge:    ; preds = %if.else.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.sink.split.i.i

if.else.i6.i.if.end7.i.i_crit_edge:               ; preds = %if.else.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.end7.sink.split.i.i:                           ; preds = %if.else.i6.i.if.end7.sink.split.i.i_crit_edge, %recover_eint_analog_setting.exit.i.if.end7.sink.split.i.i_crit_edge
  %.sink63.i.i = phi i32 [ 1024, %recover_eint_analog_setting.exit.i.if.end7.sink.split.i.i_crit_edge ], [ 2048, %if.else.i6.i.if.end7.sink.split.i.i_crit_edge ]
  %regmap5.i.i = getelementptr i8, ptr %work, i32 -192
  %102 = ptrtoint ptr %regmap5.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap5.i.i, align 4
  %call.i58.i.i = call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 9866, i32 noundef %.sink63.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end7.sink.split.i.i, %if.else.i6.i.if.end7.i.i_crit_edge
  %104 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i.i, align 4
  %eint_detect_mode.i8.i = getelementptr inbounds %struct.dts_data, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %eint_detect_mode.i8.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %eint_detect_mode.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %107)
  %cmp.i.i = icmp eq i32 %107, 4
  br i1 %cmp.i.i, label %if.then8.i9.i, label %if.end7.i.i.if.end24.i.i_crit_edge

if.end7.i.i.if.end24.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i.i

if.then8.i9.i:                                    ; preds = %if.end7.i.i
  %108 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %caps, align 4
  %and10.i.i = and i32 %109, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else15.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.then8.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap13.i.i = getelementptr i8, ptr %work, i32 -192
  %110 = ptrtoint ptr %regmap13.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap13.i.i, align 4
  %call.i59.i.i = call i32 @regmap_update_bits_base(ptr noundef %111, i32 noundef 9902, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end24.i.i

if.else15.i.i:                                    ; preds = %if.then8.i9.i
  %and17.i.i = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.else15.i.i.if.end24.i.i_crit_edge, label %if.then19.i.i

if.else15.i.i.if.end24.i.i_crit_edge:             ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i.i

if.then19.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap20.i.i = getelementptr i8, ptr %work, i32 -192
  %112 = ptrtoint ptr %regmap20.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap20.i.i, align 4
  %call.i60.i.i = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 9902, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then19.i.i, %if.else15.i.i.if.end24.i.i_crit_edge, %if.then12.i.i, %if.end7.i.i.if.end24.i.i_crit_edge
  %114 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i.i, align 4
  %eint_detect_mode26.i.i = getelementptr inbounds %struct.dts_data, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %eint_detect_mode26.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %eint_detect_mode26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp27.not.i.i = icmp eq i32 %117, 1
  br i1 %cmp27.not.i.i, label %if.end24.i.i.if.end55_crit_edge, label %if.then28.i.i

if.end24.i.i.if.end55_crit_edge:                  ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then28.i.i:                                    ; preds = %if.end24.i.i
  %118 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %caps, align 4
  %and30.i.i = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.else35.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap33.i.i = getelementptr i8, ptr %work, i32 -192
  %120 = ptrtoint ptr %regmap33.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap33.i.i, align 4
  %call.i61.i.i = call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 9866, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end55

if.else35.i.i:                                    ; preds = %if.then28.i.i
  %and37.i.i = and i32 %119, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.else35.i.i.if.end55_crit_edge, label %if.then39.i.i

if.else35.i.i.if.end55_crit_edge:                 ; preds = %if.else35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then39.i.i:                                    ; preds = %if.else35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap40.i.i = getelementptr i8, ptr %work, i32 -192
  %122 = ptrtoint ptr %regmap40.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap40.i.i, align 4
  %call.i62.i.i = call i32 @regmap_update_bits_base(ptr noundef %123, i32 noundef 9866, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then39.i.i, %if.else35.i.i.if.end55_crit_edge, %if.then32.i.i, %if.end24.i.i.if.end55_crit_edge, %if.then54.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  call void @mutex_unlock(ptr noundef %res_lock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt6359_accdet_jd_setting(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_sts = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %jd_sts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jd_sts, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %1, label %do.body [
    i32 0, label %if.then
    i32 3, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.if.end7.sink.split.i_crit_edge

if.then.if.end7.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.sink.split.i

if.else.i:                                        ; preds = %if.then
  %and2.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end7.i_crit_edge, label %if.else.i.if.end7.sink.split.i_crit_edge

if.else.i.if.end7.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.sink.split.i

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.end7.sink.split.i:                             ; preds = %if.else.i.if.end7.sink.split.i_crit_edge, %if.then.if.end7.sink.split.i_crit_edge
  %.sink4.i = phi i32 [ 64, %if.then.if.end7.sink.split.i_crit_edge ], [ 256, %if.else.i.if.end7.sink.split.i_crit_edge ]
  %regmap5.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap5.i, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 9866, i32 noundef %.sink4.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.sink.split.i, %if.else.i.if.end7.i_crit_edge
  %data.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %eint_detect_mode.i = getelementptr inbounds %struct.dts_data, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %eint_detect_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eint_detect_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.i = icmp eq i32 %10, 4
  br i1 %cmp.i, label %if.then8.i, label %if.end7.i.adjust_eint_digital_setting.exit_crit_edge

if.end7.i.adjust_eint_digital_setting.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adjust_eint_digital_setting.exit

if.then8.i:                                       ; preds = %if.end7.i
  %11 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps.i, align 4
  %and10.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else15.i, label %if.then8.i.if.end24.sink.split.i_crit_edge

if.then8.i.if.end24.sink.split.i_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.sink.split.i

if.else15.i:                                      ; preds = %if.then8.i
  %and17.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else15.i.adjust_eint_digital_setting.exit_crit_edge, label %if.else15.i.if.end24.sink.split.i_crit_edge

if.else15.i.if.end24.sink.split.i_crit_edge:      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.sink.split.i

if.else15.i.adjust_eint_digital_setting.exit_crit_edge: ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adjust_eint_digital_setting.exit

if.end24.sink.split.i:                            ; preds = %if.else15.i.if.end24.sink.split.i_crit_edge, %if.then8.i.if.end24.sink.split.i_crit_edge
  %.sink5.i = phi i32 [ 32, %if.then8.i.if.end24.sink.split.i_crit_edge ], [ 1024, %if.else15.i.if.end24.sink.split.i_crit_edge ]
  %regmap13.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %regmap13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap13.i, align 4
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 9902, i32 noundef %.sink5.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %adjust_eint_digital_setting.exit

adjust_eint_digital_setting.exit:                 ; preds = %if.end24.sink.split.i, %if.else15.i.adjust_eint_digital_setting.exit_crit_edge, %if.end7.i.adjust_eint_digital_setting.exit_crit_edge
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %eint_detect_mode.i2 = getelementptr inbounds %struct.dts_data, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %eint_detect_mode.i2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eint_detect_mode.i2, align 4
  %.off.i = add i32 %18, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %adjust_eint_digital_setting.exit.if.end.i_crit_edge

adjust_eint_digital_setting.exit.if.end.i_crit_edge: ; preds = %adjust_eint_digital_setting.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %adjust_eint_digital_setting.exit
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9522, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %adjust_eint_digital_setting.exit.if.end.i_crit_edge
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %eint_detect_mode5.i = getelementptr inbounds %struct.dts_data, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %eint_detect_mode5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eint_detect_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp6.i = icmp eq i32 %24, 4
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.if.end11_crit_edge

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps.i, align 4
  %and.i4 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %if.else.i7, label %if.then8.i6

if.then8.i6:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap9.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 2
  %27 = ptrtoint ptr %regmap9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap9.i, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 9516, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end18.i

if.else.i7:                                       ; preds = %if.then7.i
  %and12.i = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else.i7.if.end18.i_crit_edge, label %if.then14.i

if.else.i7.if.end18.i_crit_edge:                  ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #7
  %regmap15.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 2
  %29 = ptrtoint ptr %regmap15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap15.i, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 9518, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.else.i7.if.end18.i_crit_edge, %if.then8.i6
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %eint_use_ext_res.i = getelementptr inbounds %struct.dts_data, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %eint_use_ext_res.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eint_use_ext_res.i, align 4
  %.off1.i = add i32 %34, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off1.i)
  %switch2.i = icmp ult i32 %.off1.i, 2
  br i1 %switch2.i, label %if.then25.i, label %if.end18.i.if.end11_crit_edge

if.end18.i.if.end11_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then25.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap26.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 2
  %35 = ptrtoint ptr %regmap26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap26.i, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 9516, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end11

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 3
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %pwm_deb = getelementptr inbounds %struct.dts_data, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %pwm_deb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pwm_deb, align 4
  %eint_debounce0 = getelementptr inbounds %struct.pwm_deb_settings, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %eint_debounce0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eint_debounce0, align 4
  %regmap14.i = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 2
  %43 = ptrtoint ptr %regmap14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap14.i, align 4
  %call.i.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 9892, i32 noundef 15, i32 noundef %42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6359_accdet_jd_setting.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6359_accdet_jd_setting, %if.then9)) #5
          to label %if.end11 [label %if.then9], !srcloc !159

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mt6359_accdet, ptr %priv, i32 0, i32 1
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6359_accdet_jd_setting.__UNIQUE_ID_ddebug238, ptr noundef %46, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.then4, %if.then25.i, %if.end18.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !114, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__ksymtab_mt6359_accdet_enable_jack_detect, !1, !"__ksymtab_mt6359_accdet_enable_jack_detect", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 923, i32 1}
!2 = !{ptr @__initcall__kmod_mt6359_accdet__240_1060_mt6359_accdet_driver_init6, !3, !"__initcall__kmod_mt6359_accdet__240_1060_mt6359_accdet_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1060, i32 1}
!4 = !{ptr @__exitcall_mt6359_accdet_driver_exit, !3, !"__exitcall_mt6359_accdet_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1063, i32 1}
!7 = !{ptr @__UNIQUE_ID_author242, !8, !"__UNIQUE_ID_author242", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1064, i32 1}
!9 = !{ptr @__UNIQUE_ID_file243, !10, !"__UNIQUE_ID_file243", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1065, i32 1}
!11 = !{ptr @__UNIQUE_ID_license244, !10, !"__UNIQUE_ID_license244", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1055, i32 11}
!14 = !{ptr @mt6359_accdet_driver, !15, !"mt6359_accdet_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1053, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 931, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mt6359_accdet_probe.__UNIQUE_ID_ddebug239, !17, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 953, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt6359_accdet_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt6359_accdet_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 961, i32 3}
!30 = !{ptr @mt6359_accdet_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt6359_accdet_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mt6359_accdet_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 964, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 971, i32 7}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 973, i32 4}
!39 = !{ptr @mt6359_accdet_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mt6359_accdet_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 986, i32 8}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 988, i32 5}
!45 = !{ptr @mt6359_accdet_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt6359_accdet_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1001, i32 8}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1003, i32 5}
!51 = !{ptr @mt6359_accdet_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt6359_accdet_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1011, i32 27}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mt6359_accdet_probe.__key.26, !57, !"__key", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1012, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1014, i32 3}
!61 = !{ptr @mt6359_accdet_probe._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mt6359_accdet_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1019, i32 23}
!65 = !{ptr @mt6359_accdet_probe.__key.32, !66, !"__key", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1020, i32 2}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1022, i32 3}
!70 = !{ptr @mt6359_accdet_probe._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mt6359_accdet_probe._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1032, i32 3}
!74 = !{ptr @mt6359_accdet_probe._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mt6359_accdet_probe._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 1049, i32 2}
!78 = !{ptr @mt6359_accdet_probe._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mt6359_accdet_probe._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 564, i32 35}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 569, i32 35}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 574, i32 35}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 579, i32 41}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 585, i32 35}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 590, i32 35}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 598, i32 35}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 605, i32 35}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 615, i32 35}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 624, i32 35}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 631, i32 35}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 636, i32 35}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 644, i32 8}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 655, i32 8}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 662, i32 4}
!110 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mt6359_accdet_parse_dt._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @mt6359_accdet_parse_dt._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 670, i32 8}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 678, i32 2}
!118 = !{ptr @mt6359_accdet_parse_dt._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mt6359_accdet_parse_dt._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 480, i32 4}
!122 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @mt6359_accdet_irq._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @mt6359_accdet_irq._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @mt6359_accdet_irq._entry.66, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 503, i32 5}
!127 = !{ptr @mt6359_accdet_irq._entry_ptr.67, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @mt6359_accdet_irq._entry.68, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 526, i32 5}
!130 = !{ptr @mt6359_accdet_irq._entry_ptr.69, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 151, i32 3}
!133 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mt6359_accdet_jd_setting.__UNIQUE_ID_ddebug238, !132, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 317, i32 3}
!137 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @accdet_set_debounce._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @accdet_set_debounce._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 440, i32 4}
!142 = !{ptr @mt6359_accdet_jd_work._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mt6359_accdet_jd_work._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 250, i32 3}
!146 = !{ptr @mt6359_accdet_recover_jd_setting._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @mt6359_accdet_recover_jd_setting._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @mt6359_accdet_soc_driver, !149, !"mt6359_accdet_soc_driver", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/mt6359-accdet.c", i32 59, i32 46}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i64 2148335892, i64 2148335897, i64 2148335910, i64 2148335954, i64 2148335988, i64 2148336009}
!160 = !{i8 0, i8 2}
