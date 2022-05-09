; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cx20442.c_pt.bc'
source_filename = "../sound/soc/codecs/cx20442.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+v253_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_v253_ops\09\09\09\09"
module asm "\09.long\09__crc_v253_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v253_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22v253_ops\22\09\09\09\09\09"
module asm "__kstrtabns_v253_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.107, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.107 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.80, %struct.anon.81, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.80 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.81 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cx20442_priv = type { ptr, ptr, i8 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx20442\00", [24 x i8] zeroinitializer }, align 32
@v253_ops = dso_local global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 0, ptr @v253_open, ptr @v253_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v253_hangup, ptr @v253_receive, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_v253_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_v253_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_v253_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v253_ops to i32), ptr @__kstrtab_v253_ops, ptr @__kstrtabns_v253_ops }, section "___ksymtab_gpl+v253_ops", align 4
@__initcall__kmod_snd_soc_cx20442__295_430_cx20442_platform_driver_init6 = internal global ptr @cx20442_platform_driver_init, section ".initcall6.init", align 4
@cx20442_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cx20442_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cx20442_platform_driver_exit = internal global ptr @cx20442_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [69 x i8] c"snd_soc_cx20442.description=ASoC CX20442-11 voice modem codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [42 x i8] c"snd_soc_cx20442.author=Janusz Krzysztofik\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [54 x i8] c"snd_soc_cx20442.file=sound/soc/codecs/snd-soc-cx20442\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [28 x i8] c"snd_soc_cx20442.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [45 x i8] c"snd_soc_cx20442.alias=platform:cx20442-codec\00", section ".modinfo", align 1
@v253_init = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ate0m0q0+fclass=8\0D\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx20442-codec\00", [18 x i8] zeroinitializer }, align 32
@cx20442_component_dev = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @cx20442_dapm_widgets, i32 16, ptr @cx20442_audio_map, i32 14, ptr @cx20442_component_probe, ptr @cx20442_component_remove, ptr null, ptr null, ptr @cx20442_read_reg_cache, ptr @cx20442_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx20442_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cx20442_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.33, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.12, i64 4, i32 2, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.10, i64 4, i32 2, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@cx20442_audio_map = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.2, ptr null, ptr @.str.6, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.3, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.4, ptr null, ptr @.str.16, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.17, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TELOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AGCOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPKOUT Mixer\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TELOUT Amp\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPKOUT Amp\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPKOUT AGC\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Input Mixer\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TELIN Bias\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MIC AGC\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TELIN\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIC\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AGCIN\00", [26 x i8] zeroinitializer }, align 32
@cx20442_dapm_widgets = internal constant { [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [704 x i8] } { [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.3, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.4, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.6, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.7, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.9, ptr @.str.10, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.11, ptr @.str.12, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.14, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.15, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [704 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"POR\00", [28 x i8] zeroinitializer }, align 32
@cx20442_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 356, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get POR supply (%d)\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx20442_component_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cx20442.c\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx20442_component_probe._entry_ptr = internal global ptr @cx20442_component_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at+vsp=%d\0D\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at+vls=%d\0D\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at+vls=%d;+vsp=%d\0D\00", [45 x i8] zeroinitializer }, align 32
@cx20442_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.24, ptr @.str.32, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cx20442\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx20442_write\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx20442-voice\00", [18 x i8] zeroinitializer }, align 32
@switch.table.cx20442_write = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 1, i32 2, i32 2, i32 2, i32 19, i32 -22, i32 0, i32 -22, i32 19, i32 -22, i32 -22, i32 -22, i32 19], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8, i64 12]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 282, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"v253_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 281, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"cx20442_platform_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 423, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"v253_init\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 209, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 425, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"cx20442_component_dev\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 401, i32 46 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"cx20442_dai\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 296, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"cx20442_audio_map\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 64, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 39, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 40, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 41, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 43, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 45, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 46, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 47, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 49, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 50, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 52, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 54, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 55, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 57, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 59, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 60, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 61, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"cx20442_dapm_widgets\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 38, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 352, i32 47 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 356, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 182, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 184, i32 40 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 187, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 192, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [30 x i8] c"../sound/soc/codecs/cx20442.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 297, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"switch.table.cx20442_write\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_cx20442_platform_driver_exit, ptr @__initcall__kmod_snd_soc_cx20442__295_430_cx20442_platform_driver_init6, ptr @__ksymtab_v253_ops, ptr @cx20442_component_probe._entry, ptr @cx20442_component_probe._entry_ptr, ptr @cx20442_platform_driver_exit, ptr @.str, ptr @v253_ops, ptr @cx20442_platform_driver, ptr @v253_init, ptr @.str.1, ptr @cx20442_component_dev, ptr @cx20442_dai, ptr @cx20442_audio_map, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @cx20442_dapm_widgets, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @switch.table.cx20442_write], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v253_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx20442_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v253_init to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx20442_component_dev to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx20442_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx20442_audio_map to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx20442_dapm_widgets to i32), i32 2880, i32 3584, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx20442_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx20442_write to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v253_open(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disc_data, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %6 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %receive_room, align 4
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %call6 = tail call i32 %8(ptr noundef %tty, ptr noundef nonnull @v253_init, i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 18
  br i1 %cmp.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %disc_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @v253_close(ptr nocapture noundef %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  store ptr null, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %pop_time = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 55
  %9 = ptrtoint ptr %pop_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pop_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @v253_hangup(ptr nocapture noundef %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  store ptr null, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.v253_close.exit_crit_edge, label %if.end.i

entry.v253_close.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %v253_close.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %pop_time.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 55
  %9 = ptrtoint ptr %pop_time.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pop_time.i, align 4
  br label %v253_close.exit

v253_close.exit:                                  ; preds = %if.end.i, %entry.v253_close.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @v253_receive(ptr noundef %tty, ptr nocapture noundef readnone %cp, ptr nocapture noundef readnone %fp, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tty, ptr %5, align 4
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %pop_time = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 55
  %11 = ptrtoint ptr %pop_time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %pop_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx20442_platform_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cx20442_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx20442_platform_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @cx20442_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx20442_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @cx20442_component_dev, ptr noundef nonnull @cx20442_dai, i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx20442_component_probe(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call1 = tail call ptr @regulator_get(ptr noundef %2, ptr noundef nonnull @.str.21) #9
  %por = getelementptr inbounds %struct.cx20442_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %por to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %por, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call1 to i32
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef %4) #13
  %cmp8 = icmp eq ptr %call1, inttoptr (i32 -19 to ptr)
  %spec.store.select = select i1 %cmp8, i32 -517, i32 %4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %pop_time = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 55
  %13 = ptrtoint ptr %pop_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pop_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.then4 ], [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx20442_component_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_hangup(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %por = getelementptr inbounds %struct.cx20442_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %por to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %por, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @regulator_put(ptr noundef %7) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i13 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i13, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx20442_read_reg_cache(ptr nocapture noundef readonly %component, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp.not = icmp eq i32 %reg, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %reg_cache = getelementptr inbounds %struct.cx20442_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg_cache to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_cache, align 4
  %conv = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx20442_write(ptr nocapture noundef readonly %component, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  %buf = alloca [18 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp.not = icmp eq i32 %reg, 0
  %4 = call ptr @memset(ptr %buf, i32 255, i32 18)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %reg_cache = getelementptr inbounds %struct.cx20442_priv, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %reg_cache to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_cache, align 4
  %conv5 = trunc i32 %value to i8
  store i8 %conv5, ptr %reg_cache, align 4
  %13 = and i8 %conv5, -17
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end4.cleanup_crit_edge [
    i8 0, label %if.end4.sw.epilog.i101_crit_edge
    i8 8, label %if.end4.if.end12_crit_edge
    i8 4, label %if.end4.if.end12_crit_edge158
    i8 12, label %if.end4.if.end12_crit_edge159
    i8 2, label %if.end4.sw.bb2.i_crit_edge
    i8 1, label %if.end4.sw.bb2.i_crit_edge160
    i8 3, label %if.end4.sw.bb2.i_crit_edge161
    i8 6, label %sw.epilog.i101.thread
  ]

if.end4.sw.bb2.i_crit_edge161:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end4.sw.bb2.i_crit_edge160:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end4.sw.bb2.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end4.if.end12_crit_edge159:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.if.end12_crit_edge158:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.sw.epilog.i101_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i101

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end4.sw.bb2.i_crit_edge, %if.end4.sw.bb2.i_crit_edge160, %if.end4.sw.bb2.i_crit_edge161
  br label %if.end12

if.end12:                                         ; preds = %sw.bb2.i, %if.end4.if.end12_crit_edge, %if.end4.if.end12_crit_edge158, %if.end4.if.end12_crit_edge159
  %retval.0.i100.ph = phi i32 [ 2, %sw.bb2.i ], [ 19, %if.end4.if.end12_crit_edge ], [ 19, %if.end4.if.end12_crit_edge158 ], [ 19, %if.end4.if.end12_crit_edge159 ]
  %15 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %13, label %if.end12.sw.epilog.i101_crit_edge [
    i8 8, label %if.end12.if.end18.thread_crit_edge
    i8 4, label %if.end12.if.end18.thread_crit_edge162
    i8 12, label %if.end12.if.end18.thread_crit_edge163
  ]

if.end12.if.end18.thread_crit_edge163:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end12.if.end18.thread_crit_edge162:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end12.if.end18.thread_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end12.sw.epilog.i101_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i101

if.end18.thread:                                  ; preds = %if.end12.if.end18.thread_crit_edge, %if.end12.if.end18.thread_crit_edge162, %if.end12.if.end18.thread_crit_edge163
  %and2.i = lshr i32 %value, 4
  %and2.lobit.i = and i32 %and2.i, 1
  br label %lor.lhs.false21

sw.epilog.i101:                                   ; preds = %if.end12.sw.epilog.i101_crit_edge, %if.end4.sw.epilog.i101_crit_edge
  %retval.0.i100.ph137 = phi i32 [ %retval.0.i100.ph, %if.end12.sw.epilog.i101_crit_edge ], [ 1, %if.end4.sw.epilog.i101_crit_edge ]
  %and5.i = and i32 %value, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end18, label %sw.epilog.i101.cleanup_crit_edge

sw.epilog.i101.cleanup_crit_edge:                 ; preds = %sw.epilog.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.i101.thread:                            ; preds = %if.end4
  %and5.i152 = and i32 %value, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i152)
  %tobool6.not.i153 = icmp eq i32 %and5.i152, 0
  br i1 %tobool6.not.i153, label %sw.epilog.i101.thread.lor.lhs.false21_crit_edge, label %sw.epilog.i101.thread.cleanup_crit_edge

sw.epilog.i101.thread.cleanup_crit_edge:          ; preds = %sw.epilog.i101.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.i101.thread.lor.lhs.false21_crit_edge:  ; preds = %sw.epilog.i101.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false21

if.end18:                                         ; preds = %sw.epilog.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i100.ph137)
  %cmp19 = icmp eq i32 %retval.0.i100.ph137, 1
  br i1 %cmp19, label %if.end18.if.then26_crit_edge, label %if.end18.lor.lhs.false21_crit_edge

if.end18.lor.lhs.false21_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false21

if.end18.if.then26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i8 %12, -17
  br label %if.then26

lor.lhs.false21:                                  ; preds = %if.end18.lor.lhs.false21_crit_edge, %sw.epilog.i101.thread.lor.lhs.false21_crit_edge, %if.end18.thread
  %retval.0.i102.ph149 = phi i32 [ %and2.lobit.i, %if.end18.thread ], [ 0, %if.end18.lor.lhs.false21_crit_edge ], [ 0, %sw.epilog.i101.thread.lor.lhs.false21_crit_edge ]
  %retval.0.i100.ph136.ph148 = phi i32 [ %retval.0.i100.ph, %if.end18.thread ], [ %retval.0.i100.ph137, %if.end18.lor.lhs.false21_crit_edge ], [ 0, %sw.epilog.i101.thread.lor.lhs.false21_crit_edge ]
  %16 = and i8 %12, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %16)
  %17 = icmp ult i8 %16, 13
  br i1 %17, label %switch.lookup, label %lor.lhs.false21.cx20442_pm_to_v253_vls.exit108_crit_edge

lor.lhs.false21.cx20442_pm_to_v253_vls.exit108_crit_edge: ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx20442_pm_to_v253_vls.exit108

switch.lookup:                                    ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  %18 = sext i8 %16 to i32
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.cx20442_write, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cx20442_pm_to_v253_vls.exit108

cx20442_pm_to_v253_vls.exit108:                   ; preds = %switch.lookup, %lor.lhs.false21.cx20442_pm_to_v253_vls.exit108_crit_edge
  %retval.0.i107 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %lor.lhs.false21.cx20442_pm_to_v253_vls.exit108_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i100.ph136.ph148, i32 %retval.0.i107)
  %cmp24 = icmp eq i32 %retval.0.i100.ph136.ph148, %retval.0.i107
  br i1 %cmp24, label %cx20442_pm_to_v253_vls.exit108.if.then26_crit_edge, label %if.else

cx20442_pm_to_v253_vls.exit108.if.then26_crit_edge: ; preds = %cx20442_pm_to_v253_vls.exit108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %cx20442_pm_to_v253_vls.exit108.if.then26_crit_edge, %if.end18.if.then26_crit_edge
  %and.i110.pre-phi = phi i8 [ %.pre, %if.end18.if.then26_crit_edge ], [ %16, %cx20442_pm_to_v253_vls.exit108.if.then26_crit_edge ]
  %retval.0.i102144 = phi i32 [ 0, %if.end18.if.then26_crit_edge ], [ %retval.0.i102.ph149, %cx20442_pm_to_v253_vls.exit108.if.then26_crit_edge ]
  %conv.i109 = zext i8 %12 to i32
  %20 = zext i8 %and.i110.pre-phi to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %and.i110.pre-phi, label %sw.epilog.i117 [
    i8 8, label %if.then26.sw.bb.i113_crit_edge
    i8 4, label %if.then26.sw.bb.i113_crit_edge164
    i8 12, label %if.then26.sw.bb.i113_crit_edge165
  ]

if.then26.sw.bb.i113_crit_edge165:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i113

if.then26.sw.bb.i113_crit_edge164:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i113

if.then26.sw.bb.i113_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i113

sw.bb.i113:                                       ; preds = %if.then26.sw.bb.i113_crit_edge, %if.then26.sw.bb.i113_crit_edge164, %if.then26.sw.bb.i113_crit_edge165
  %and2.i111 = lshr i32 %conv.i109, 4
  %and2.lobit.i112 = and i32 %and2.i111, 1
  br label %cx20442_pm_to_v253_vsp.exit119

sw.epilog.i117:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i114 = and i32 %conv.i109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i114)
  %tobool6.not.i115 = icmp eq i32 %and5.i114, 0
  %cond.i116 = select i1 %tobool6.not.i115, i32 0, i32 -22
  br label %cx20442_pm_to_v253_vsp.exit119

cx20442_pm_to_v253_vsp.exit119:                   ; preds = %sw.epilog.i117, %sw.bb.i113
  %retval.0.i118 = phi i32 [ %cond.i116, %sw.epilog.i117 ], [ %and2.lobit.i112, %sw.bb.i113 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i102144, i32 %retval.0.i118)
  %cmp29 = icmp eq i32 %retval.0.i102144, %retval.0.i118
  br i1 %cmp29, label %cx20442_pm_to_v253_vsp.exit119.cleanup_crit_edge, label %if.end32

cx20442_pm_to_v253_vsp.exit119.cleanup_crit_edge: ; preds = %cx20442_pm_to_v253_vsp.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %cx20442_pm_to_v253_vsp.exit119
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 18, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i102144)
  br label %if.end45

if.else:                                          ; preds = %cx20442_pm_to_v253_vls.exit108
  %conv.i120 = zext i8 %12 to i32
  %21 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %16, label %sw.epilog.i128 [
    i8 8, label %if.else.sw.bb.i124_crit_edge
    i8 4, label %if.else.sw.bb.i124_crit_edge166
    i8 12, label %if.else.sw.bb.i124_crit_edge167
  ]

if.else.sw.bb.i124_crit_edge167:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i124

if.else.sw.bb.i124_crit_edge166:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i124

if.else.sw.bb.i124_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i124

sw.bb.i124:                                       ; preds = %if.else.sw.bb.i124_crit_edge, %if.else.sw.bb.i124_crit_edge166, %if.else.sw.bb.i124_crit_edge167
  %and2.i122 = lshr i32 %conv.i120, 4
  %and2.lobit.i123 = and i32 %and2.i122, 1
  br label %cx20442_pm_to_v253_vsp.exit130

sw.epilog.i128:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i125 = and i32 %conv.i120, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i125)
  %tobool6.not.i126 = icmp eq i32 %and5.i125, 0
  %cond.i127 = select i1 %tobool6.not.i126, i32 0, i32 -22
  br label %cx20442_pm_to_v253_vsp.exit130

cx20442_pm_to_v253_vsp.exit130:                   ; preds = %sw.epilog.i128, %sw.bb.i124
  %retval.0.i129 = phi i32 [ %cond.i127, %sw.epilog.i128 ], [ %and2.lobit.i123, %sw.bb.i124 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i102.ph149, i32 %retval.0.i129)
  %cmp36 = icmp eq i32 %retval.0.i102.ph149, %retval.0.i129
  br i1 %cmp36, label %if.then38, label %if.else41

if.then38:                                        ; preds = %cx20442_pm_to_v253_vsp.exit130
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 18, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i100.ph136.ph148)
  br label %if.end45

if.else41:                                        ; preds = %cx20442_pm_to_v253_vsp.exit130
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 18, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i100.ph136.ph148, i32 noundef %retval.0.i102.ph149)
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.then38, %if.end32
  %len.0 = phi i32 [ %call33, %if.end32 ], [ %call40, %if.then38 ], [ %call43, %if.else41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %len.0)
  %cmp46 = icmp ugt i32 %len.0, 17
  br i1 %cmp46, label %if.end45.cleanup_crit_edge, label %do.body, !prof !98

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx20442_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx20442_write, %if.then60)) #9
          to label %do.end [label %if.then60], !srcloc !99

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx20442_write.__UNIQUE_ID_ddebug294, ptr noundef %23, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef nonnull %buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then60, %do.body
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %ops64 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ops64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops64, align 4
  %write65 = getelementptr inbounds %struct.tty_operations, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %write65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write65, align 4
  %call68 = call i32 %29(ptr noundef %25, ptr noundef nonnull %buf, i32 noundef %len.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call68, i32 %len.0)
  %cmp69.not = icmp eq i32 %call68, %len.0
  %. = select i1 %cmp69.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end45.cleanup_crit_edge, %cx20442_pm_to_v253_vsp.exit119.cleanup_crit_edge, %sw.epilog.i101.thread.cleanup_crit_edge, %sw.epilog.i101.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %cx20442_pm_to_v253_vsp.exit119.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ], [ %., %do.end ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %sw.epilog.i101.cleanup_crit_edge ], [ -22, %sw.epilog.i101.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx20442_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %por = getelementptr inbounds %struct.cx20442_priv, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %por to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %por, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %8 to i32
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @regulator_enable(ptr noundef %8) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %dapm.i.i30 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %10 = ptrtoint ptr %dapm.i.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dapm.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp11.not = icmp eq i32 %11, 2
  br i1 %cmp11.not, label %if.end13, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb9
  %por14 = getelementptr inbounds %struct.cx20442_priv, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %por14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %por14, align 4
  %cmp.i31 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %13 to i32
  br label %sw.epilog

if.else19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 @regulator_disable(ptr noundef %13) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else19, %if.then16, %sw.bb9.sw.epilog_crit_edge, %if.else, %if.then3, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb9.sw.epilog_crit_edge ], [ %14, %if.then16 ], [ %call21, %if.else19 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %9, %if.then3 ], [ %call7, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !74, !76, !78, !80, !82, !83, !84, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cx20442.c", i32 282, i32 10}
!2 = !{ptr @v253_ops, !3, !"v253_ops", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/cx20442.c", i32 281, i32 22}
!4 = !{ptr @__ksymtab_v253_ops, !5, !"__ksymtab_v253_ops", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/cx20442.c", i32 289, i32 1}
!6 = !{ptr @__initcall__kmod_snd_soc_cx20442__295_430_cx20442_platform_driver_init6, !7, !"__initcall__kmod_snd_soc_cx20442__295_430_cx20442_platform_driver_init6", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/cx20442.c", i32 430, i32 1}
!8 = !{ptr @__exitcall_cx20442_platform_driver_exit, !7, !"__exitcall_cx20442_platform_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description296, !10, !"__UNIQUE_ID_description296", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/cx20442.c", i32 432, i32 1}
!11 = !{ptr @__UNIQUE_ID_author297, !12, !"__UNIQUE_ID_author297", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/cx20442.c", i32 433, i32 1}
!13 = !{ptr @__UNIQUE_ID_file298, !14, !"__UNIQUE_ID_file298", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/cx20442.c", i32 434, i32 1}
!15 = !{ptr @__UNIQUE_ID_license299, !14, !"__UNIQUE_ID_license299", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias300, !17, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/cx20442.c", i32 435, i32 1}
!18 = !{ptr @v253_init, !19, !"v253_init", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/cx20442.c", i32 209, i32 19}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/cx20442.c", i32 425, i32 11}
!22 = !{ptr @cx20442_platform_driver, !23, !"cx20442_platform_driver", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/cx20442.c", i32 423, i32 31}
!24 = !{ptr @cx20442_component_dev, !25, !"cx20442_component_dev", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/cx20442.c", i32 401, i32 46}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/cx20442.c", i32 39, i32 2}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/cx20442.c", i32 40, i32 2}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/cx20442.c", i32 41, i32 2}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/cx20442.c", i32 43, i32 2}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/cx20442.c", i32 45, i32 2}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/cx20442.c", i32 46, i32 2}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/cx20442.c", i32 47, i32 2}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/cx20442.c", i32 49, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/cx20442.c", i32 50, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/cx20442.c", i32 52, i32 2}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cx20442.c", i32 54, i32 2}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/cx20442.c", i32 55, i32 2}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/cx20442.c", i32 57, i32 2}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/cx20442.c", i32 59, i32 2}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/cx20442.c", i32 60, i32 2}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/cx20442.c", i32 61, i32 2}
!60 = !{ptr @cx20442_dapm_widgets, !61, !"cx20442_dapm_widgets", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/cx20442.c", i32 38, i32 41}
!62 = !{ptr @cx20442_audio_map, !63, !"cx20442_audio_map", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/cx20442.c", i32 64, i32 40}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/cx20442.c", i32 352, i32 47}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/cx20442.c", i32 356, i32 3}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @cx20442_component_probe._entry, !67, !"_entry", i1 false, i1 false}
!73 = !{ptr @cx20442_component_probe._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/cx20442.c", i32 182, i32 40}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cx20442.c", i32 184, i32 40}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/cx20442.c", i32 187, i32 6}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cx20442.c", i32 192, i32 2}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cx20442_write.__UNIQUE_ID_ddebug294, !81, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/cx20442.c", i32 297, i32 10}
!87 = !{ptr @cx20442_dai, !88, !"cx20442_dai", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/cx20442.c", i32 296, i32 34}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2148503952, i64 2148503957, i64 2148503970, i64 2148504014, i64 2148504048, i64 2148504069}
