; ModuleID = '/llk/IR_all_yes/sound/soc/ux500/mop500.c_pt.bc'
source_filename = "../sound/soc/ux500/mop500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.95, ptr }
%union.anon.95 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }

@__initcall__kmod_snd_soc_ux500_mach_mop500__248_169_snd_soc_mop500_driver_init6 = internal global ptr @snd_soc_mop500_driver_init, section ".initcall6.init", align 4
@snd_soc_mop500_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mop500_probe, ptr @mop500_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @snd_soc_mop500_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_soc_mop500_driver_exit = internal global ptr @snd_soc_mop500_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file249 = internal constant [73 x i8] c"snd_soc_ux500_mach_mop500.file=sound/soc/ux500/snd-soc-ux500-mach-mop500\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [41 x i8] c"snd_soc_ux500_mach_mop500.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [63 x i8] c"snd_soc_ux500_mach_mop500.description=ASoC MOP500 board driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [43 x i8] c"snd_soc_ux500_mach_mop500.author=Ola Lilja\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd-soc-mop500\00", [17 x i8] zeroinitializer }, align 32
@snd_soc_mop500_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,snd-soc-mop500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mop500_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_soc_ux500_mach_mop500\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mop500_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/ux500/mop500.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: Enter.\0A\00", [20 x i8] zeroinitializer }, align 32
@mop500_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.12, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mop500_dai_links, i32 2, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@mop500_probe.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Card %s: Set platform drvdata.\0A\00", [60 x i8] zeroinitializer }, align 32
@mop500_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Card %s: num_links = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mop500_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Card %s: DAI-link 0: name = %s\0A\00", [60 x i8] zeroinitializer }, align 32
@mop500_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Card %s: DAI-link 0: stream_name = %s\0A\00", [53 x i8] zeroinitializer }, align 32
@mop500_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 136, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error: snd_soc_register_card failed (%d)!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mop500_probe._entry_ptr = internal global ptr @mop500_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MOP500-card\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ab8500_0\00", [23 x i8] zeroinitializer }, align 32
@link1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.16 }], [20 x i8] zeroinitializer }, align 32
@link1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.17, ptr null, ptr @.str.18 }], [20 x i8] zeroinitializer }, align 32
@link1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.16, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@mop500_ab8500_ops = external dso_local constant [0 x %struct.snd_soc_ops], align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ab8500_1\00", [23 x i8] zeroinitializer }, align 32
@link2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.19 }], [20 x i8] zeroinitializer }, align 32
@link2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.17, ptr null, ptr @.str.20 }], [20 x i8] zeroinitializer }, align 32
@link2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.19, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@mop500_dai_links = internal global { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [56 x i8] } { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.13, ptr @.str.13, ptr @link1_cpus, i32 1, ptr @link1_codecs, i32 1, ptr @link1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @mop500_ab8500_machine_init, ptr null, ptr null, ptr @mop500_ab8500_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.14, ptr @.str.14, ptr @link2_cpus, i32 1, ptr @link2_codecs, i32 1, ptr @link2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mop500_ab8500_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ux500-msp-i2s.1\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500-codec.0\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-codec-dai.0\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ux500-msp-i2s.3\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-codec-dai.1\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stericsson,cpu-dai\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stericsson,audio-codec\00", [41 x i8] zeroinitializer }, align 32
@mop500_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 84, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Phandle missing or invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mop500_of_probe\00", [16 x i8] zeroinitializer }, align 32
@mop500_of_probe._entry_ptr = internal global ptr @mop500_of_probe._entry, section ".printk_index", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stericsson,card-name\00", [43 x i8] zeroinitializer }, align 32
@mop500_remove.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.4, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mop500_remove\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"snd_soc_mop500_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 160, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 162, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"snd_soc_mop500_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 154, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 110, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"mop500_card\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 54, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 120, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 125, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 127, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 129, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 135, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 55, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 39, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"link1_cpus\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"link1_codecs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"link1_platforms\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 46, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"link2_cpus\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"link2_codecs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"link2_platforms\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"mop500_dai_links\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 37, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 27, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 32, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 79, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 81, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 84, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 100, i32 43 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [28 x i8] c"../sound/soc/ux500/mop500.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 145, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_snd_soc_mop500_driver_exit, ptr @__initcall__kmod_snd_soc_ux500_mach_mop500__248_169_snd_soc_mop500_driver_init6, ptr @mop500_of_probe._entry, ptr @mop500_of_probe._entry_ptr, ptr @mop500_probe._entry, ptr @mop500_probe._entry_ptr, ptr @snd_soc_mop500_driver_exit, ptr @snd_soc_mop500_driver, ptr @.str, ptr @snd_soc_mop500_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mop500_card, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @link1_cpus, ptr @link1_codecs, ptr @link1_platforms, ptr @.str.14, ptr @link2_cpus, ptr @link2_codecs, ptr @link2_platforms, ptr @mop500_dai_links, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_mop500_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_mop500_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mop500_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mop500_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mop500_dai_links to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mop500_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_mop500_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_soc_mop500_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_mop500_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_soc_mop500_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mop500_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i55.i = alloca %struct.of_phandle_args, align 4
  %args.i49.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mop500_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mop500_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mop500_probe.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mop500_card, i32 0, i32 5), align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.do.body12_crit_edge, label %if.then6

do.end.do.body12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

if.then6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %2 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then6.of_parse_phandle.exit.i_crit_edge

if.then6.of_parse_phandle.exit.i_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.then6.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ null, %if.then6.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i49.i) #5
  %5 = call ptr @memset(ptr %args.i49.i, i32 255, i32 72)
  %call.i50.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i49.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.end.i52.i, label %of_parse_phandle.exit.i.of_parse_phandle.exit54.i_crit_edge

of_parse_phandle.exit.i.of_parse_phandle.exit54.i_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit54.i

if.end.i52.i:                                     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %args.i49.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i49.i, align 4
  br label %of_parse_phandle.exit54.i

of_parse_phandle.exit54.i:                        ; preds = %if.end.i52.i, %of_parse_phandle.exit.i.of_parse_phandle.exit54.i_crit_edge
  %retval.0.i53.i = phi ptr [ %7, %if.end.i52.i ], [ null, %of_parse_phandle.exit.i.of_parse_phandle.exit54.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i49.i) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i55.i) #5
  %8 = call ptr @memset(ptr %args.i55.i, i32 255, i32 72)
  %call.i56.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i55.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool.not.i57.i, label %if.end.i58.i, label %of_parse_phandle.exit54.i.of_parse_phandle.exit60.i_crit_edge

of_parse_phandle.exit54.i.of_parse_phandle.exit60.i_crit_edge: ; preds = %of_parse_phandle.exit54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit60.i

if.end.i58.i:                                     ; preds = %of_parse_phandle.exit54.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %args.i55.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i55.i, align 4
  br label %of_parse_phandle.exit60.i

of_parse_phandle.exit60.i:                        ; preds = %if.end.i58.i, %of_parse_phandle.exit54.i.of_parse_phandle.exit60.i_crit_edge
  %retval.0.i59.i = phi ptr [ %10, %if.end.i58.i ], [ null, %of_parse_phandle.exit54.i.of_parse_phandle.exit60.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i55.i) #5
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit60.i.mop500_of_probe.exit_crit_edge, label %land.lhs.true.i

of_parse_phandle.exit60.i.mop500_of_probe.exit_crit_edge: ; preds = %of_parse_phandle.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mop500_of_probe.exit

land.lhs.true.i:                                  ; preds = %of_parse_phandle.exit60.i
  %tobool6.not.i = icmp eq ptr %retval.0.i53.i, null
  %tobool8.not.i = icmp eq ptr %retval.0.i59.i, null
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.mop500_of_probe.exit_crit_edge, label %mop500_of_probe.exit.thread

land.lhs.true.i.mop500_of_probe.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mop500_of_probe.exit

mop500_of_probe.exit.thread:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 2), align 4
  %of_node.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i.i, ptr %of_node.i, align 4
  %13 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 2), align 4
  %dai_name.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dai_name.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dai_name.i, align 4
  %15 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 6), align 4
  %of_node19.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %of_node19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i.i, ptr %of_node19.i, align 4
  %17 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 6), align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 4
  %19 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 4), align 4
  %of_node23.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %of_node23.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i59.i, ptr %of_node23.i, align 4
  %21 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 4), align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  %23 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 1, i32 2), align 4
  %of_node.1.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %of_node.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i53.i, ptr %of_node.1.i, align 4
  %25 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 1, i32 2), align 4
  %dai_name.1.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dai_name.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dai_name.1.i, align 4
  %27 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 1, i32 6), align 4
  %of_node19.1.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %of_node19.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i53.i, ptr %of_node19.1.i, align 4
  %29 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 1, i32 6), align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  %31 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 1, i32 4), align 4
  %of_node23.1.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %of_node23.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i59.i, ptr %of_node23.1.i, align 4
  %33 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 1, i32 4), align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %33, align 4
  %call30.i = call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @mop500_card, ptr noundef nonnull @.str.25) #5
  br label %do.body12

mop500_of_probe.exit:                             ; preds = %land.lhs.true.i.mop500_of_probe.exit_crit_edge, %of_parse_phandle.exit60.i.mop500_of_probe.exit_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  call void @of_node_put(ptr noundef %retval.0.i.i) #5
  call void @of_node_put(ptr noundef %retval.0.i53.i) #5
  call void @of_node_put(ptr noundef %retval.0.i59.i) #5
  br label %cleanup

do.body12:                                        ; preds = %mop500_of_probe.exit.thread, %do.end.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mop500_probe.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mop500_probe, %if.then24)) #5
          to label %do.end28 [label %if.then24], !srcloc !86

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %35 = load ptr, ptr @mop500_card, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mop500_probe.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef %35) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body12
  store ptr null, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mop500_card, i32 0, i32 57), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mop500_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mop500_probe, %if.then41)) #5
          to label %do.body46 [label %if.then41], !srcloc !86

if.then41:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  %36 = load ptr, ptr @mop500_card, align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mop500_card, i32 0, i32 25), align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mop500_probe.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %36, i32 noundef %37) #5
  br label %do.body46

do.body46:                                        ; preds = %if.then41, %do.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mop500_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mop500_probe, %if.then58)) #5
          to label %do.body63 [label %if.then58], !srcloc !86

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %38 = load ptr, ptr @mop500_card, align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mop500_card, i32 0, i32 24), align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mop500_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, ptr noundef %38, ptr noundef %41) #5
  br label %do.body63

do.body63:                                        ; preds = %if.then58, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mop500_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mop500_probe, %if.then75)) #5
          to label %do.end80 [label %if.then75], !srcloc !86

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  %42 = load ptr, ptr @mop500_card, align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mop500_card, i32 0, i32 24), align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %stream_name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream_name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mop500_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, ptr noundef %42, ptr noundef %45) #5
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %do.body63
  %call81 = call i32 @snd_soc_register_card(ptr noundef nonnull @mop500_card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end80.cleanup_crit_edge, label %do.end86

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end86:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call81) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %do.end80.cleanup_crit_edge, %mop500_of_probe.exit
  %retval.0 = phi i32 [ -22, %mop500_of_probe.exit ], [ %call81, %do.end86 ], [ 0, %do.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mop500_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mop500_remove.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mop500_remove, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mop500_remove.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.26) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @snd_soc_unregister_card(ptr noundef %1) #5
  tail call void @mop500_ab8500_remove(ptr noundef %1) #5
  %2 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 2), align 4
  %of_node.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 4
  tail call void @of_node_put(ptr noundef %4) #5
  %5 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 1, i32 2), align 4
  %of_node.1.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %of_node.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.1.i, align 4
  tail call void @of_node_put(ptr noundef %7) #5
  %8 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mop500_dai_links, i32 0, i32 0, i32 4), align 4
  %of_node1.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node1.i, align 4
  tail call void @of_node_put(ptr noundef %10) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mop500_ab8500_machine_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_unregister_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mop500_ab8500_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !72, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_snd_soc_ux500_mach_mop500__248_169_snd_soc_mop500_driver_init6, !1, !"__initcall__kmod_snd_soc_ux500_mach_mop500__248_169_snd_soc_mop500_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ux500/mop500.c", i32 169, i32 1}
!2 = !{ptr @__exitcall_snd_soc_mop500_driver_exit, !1, !"__exitcall_snd_soc_mop500_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file249, !4, !"__UNIQUE_ID_file249", i1 false, i1 false}
!4 = !{!"../sound/soc/ux500/mop500.c", i32 171, i32 1}
!5 = !{ptr @__UNIQUE_ID_license250, !4, !"__UNIQUE_ID_license250", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description251, !7, !"__UNIQUE_ID_description251", i1 false, i1 false}
!7 = !{!"../sound/soc/ux500/mop500.c", i32 172, i32 1}
!8 = !{ptr @__UNIQUE_ID_author252, !9, !"__UNIQUE_ID_author252", i1 false, i1 false}
!9 = !{!"../sound/soc/ux500/mop500.c", i32 173, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/ux500/mop500.c", i32 162, i32 11}
!12 = !{ptr @snd_soc_mop500_driver, !13, !"snd_soc_mop500_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/ux500/mop500.c", i32 160, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/ux500/mop500.c", i32 110, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mop500_probe.__UNIQUE_ID_ddebug242, !15, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/ux500/mop500.c", i32 120, i32 2}
!22 = !{ptr @mop500_probe.__UNIQUE_ID_ddebug243, !21, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/ux500/mop500.c", i32 125, i32 2}
!25 = !{ptr @mop500_probe.__UNIQUE_ID_ddebug244, !24, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/ux500/mop500.c", i32 127, i32 2}
!28 = !{ptr @mop500_probe.__UNIQUE_ID_ddebug245, !27, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/ux500/mop500.c", i32 129, i32 2}
!31 = !{ptr @mop500_probe.__UNIQUE_ID_ddebug246, !30, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/ux500/mop500.c", i32 135, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mop500_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @mop500_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/ux500/mop500.c", i32 55, i32 10}
!40 = !{ptr @mop500_card, !41, !"mop500_card", i1 false, i1 false}
!41 = !{!"../sound/soc/ux500/mop500.c", i32 54, i32 28}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/ux500/mop500.c", i32 39, i32 11}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/ux500/mop500.c", i32 46, i32 11}
!46 = !{ptr @mop500_dai_links, !47, !"mop500_dai_links", i1 false, i1 false}
!47 = !{!"../sound/soc/ux500/mop500.c", i32 37, i32 32}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/ux500/mop500.c", i32 27, i32 1}
!50 = !{ptr @link1_cpus, !49, !"link1_cpus", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @link1_codecs, !49, !"link1_codecs", i1 false, i1 false}
!54 = !{ptr @link1_platforms, !49, !"link1_platforms", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/ux500/mop500.c", i32 32, i32 1}
!57 = !{ptr @link2_cpus, !56, !"link2_cpus", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @link2_codecs, !56, !"link2_codecs", i1 false, i1 false}
!60 = !{ptr @link2_platforms, !56, !"link2_platforms", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/ux500/mop500.c", i32 79, i32 35}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/ux500/mop500.c", i32 81, i32 35}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/ux500/mop500.c", i32 84, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mop500_of_probe._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mop500_of_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/ux500/mop500.c", i32 100, i32 43}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/ux500/mop500.c", i32 145, i32 2}
!74 = !{ptr @mop500_remove.__UNIQUE_ID_ddebug247, !73, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!75 = !{ptr @snd_soc_mop500_match, !76, !"snd_soc_mop500_match", i1 false, i1 false}
!76 = !{!"../sound/soc/ux500/mop500.c", i32 154, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2149164550, i64 2149164555, i64 2149164568, i64 2149164612, i64 2149164646, i64 2149164667}
