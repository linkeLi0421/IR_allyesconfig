; ModuleID = '/llk/IR_all_yes/sound/soc/generic/simple-card.c_pt.bc'
source_filename = "../sound/soc/generic/simple-card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.link_info = type { i32, i32, [512 x %struct.prop_nums] }
%struct.prop_nums = type { i32, i32, i32, i32 }
%struct.asoc_simple_priv = type { %struct.snd_soc_card, ptr, %struct.asoc_simple_jack, %struct.asoc_simple_jack, ptr, ptr, ptr, %struct.snd_soc_dai_link_component, ptr, ptr, ptr, ptr, i8 }
%struct.asoc_simple_jack = type { %struct.snd_soc_jack, %struct.snd_soc_jack_pin, %struct.snd_soc_jack_gpio }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.asoc_simple_card_info = type { ptr, ptr, ptr, ptr, i32, %struct.asoc_simple_dai, %struct.asoc_simple_dai }
%struct.asoc_simple_dai = type { ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.simple_dai_props = type { ptr, ptr, ptr, ptr, ptr, %struct.asoc_simple_data, ptr, ptr, %struct.prop_nums, i32 }
%struct.asoc_simple_data = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_snd_soc_simple_card__240_751_asoc_simple_card_init6 = internal global ptr @asoc_simple_card_init, section ".initcall6.init", align 4
@asoc_simple_card = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_simple_probe, ptr @asoc_simple_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @simple_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asoc_simple_card_exit = internal global ptr @asoc_simple_card_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias241 = internal constant [52 x i8] c"snd_soc_simple_card.alias=platform:asoc-simple-card\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [63 x i8] c"snd_soc_simple_card.file=sound/soc/generic/snd-soc-simple-card\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [35 x i8] c"snd_soc_simple_card.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [55 x i8] c"snd_soc_simple_card.description=ASoC Simple Sound Card\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [80 x i8] c"snd_soc_simple_card.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asoc-simple-card\00", [47 x i8] zeroinitializer }, align 32
@simple_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-audio-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-scu-audio-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"simple-card\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parse error\0A\00", [19 x i8] zeroinitializer }, align 32
@asoc_simple_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 683, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no info for asoc-simple-card\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asoc_simple_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/generic/simple-card.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asoc_simple_probe._entry_ptr = internal global ptr @asoc_simple_probe._entry, section ".printk_index", align 4
@asoc_simple_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"insufficient asoc_simple_card_info settings\0A\00", [51 x i8] zeroinitializer }, align 32
@asoc_simple_probe._entry_ptr.10 = internal global ptr @asoc_simple_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"simple-audio-card,\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"simple-audio-card,dai-link\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"simple-audio-card,codec\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"simple-audio-card,plat\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plat\00", [27 x i8] zeroinitializer }, align 32
@simple_count_noml._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 509, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"too many links\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"simple_count_noml\00", [46 x i8] zeroinitializer }, align 32
@simple_count_noml._entry_ptr = internal global ptr @simple_count_noml._entry, section ".printk_index", align 4
@simple_count_dpcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.5, i32 530, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"simple_count_dpcm\00", [46 x i8] zeroinitializer }, align 32
@simple_count_dpcm._entry_ptr = internal global ptr @simple_count_dpcm._entry, section ".printk_index", align 4
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"simple-audio-card,aux-devs\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@simple_dai_link_of.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_soc_simple_card\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"simple_dai_link_of\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"link_of (%pOF)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%splat\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%smclk-fs\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sound-dai\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#sound-dai-cells\00", [47 x i8] zeroinitializer }, align 32
@simple_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @asoc_simple_startup, ptr @asoc_simple_shutdown, ptr @asoc_simple_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_dai_link_of_dpcm.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"simple_dai_link_of_dpcm\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_of DPCM (%pOF)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fe.%s\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"be.%s\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"simple-audio-card,prefix\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prefix\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"asoc_simple_card\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 741, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 743, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"simple_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 733, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 648, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 669, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 683, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 692, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 619, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 356, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 372, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 372, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 379, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 379, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 509, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 530, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 496, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 293, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 299, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 305, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 321, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 127, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 69, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 69, i32 46 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"simple_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 25, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 212, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 233, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 253, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 257, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [35 x i8] c"../sound/soc/generic/simple-card.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 259, i32 11 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_asoc_simple_card_exit, ptr @__initcall__kmod_snd_soc_simple_card__240_751_asoc_simple_card_init6, ptr @asoc_simple_card_exit, ptr @asoc_simple_probe._entry, ptr @asoc_simple_probe._entry.8, ptr @asoc_simple_probe._entry_ptr, ptr @asoc_simple_probe._entry_ptr.10, ptr @simple_count_dpcm._entry, ptr @simple_count_dpcm._entry_ptr, ptr @simple_count_noml._entry, ptr @simple_count_noml._entry_ptr, ptr @asoc_simple_card, ptr @.str, ptr @simple_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @simple_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_simple_card to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_simple_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_simple_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_count_noml._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_count_dpcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_simple_card_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_simple_card, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asoc_simple_card_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_simple_card) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_simple_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1496, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup80_crit_edge, label %if.end

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev2, align 4
  %probe = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 12
  %4 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @simple_soc_probe, ptr %probe, align 4
  %driver_name = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %driver_name, align 4
  %call.i151 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8200, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i151, null
  br i1 %tobool4.not, label %if.end.cleanup80_crit_edge, label %if.end6

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end9.thread, label %simple_get_dais_count.exit

if.end9.thread:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %num.i = getelementptr inbounds %struct.link_info, ptr %call.i151, i32 0, i32 2
  %10 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num.i, align 4
  %codecs.i = getelementptr inbounds %struct.link_info, ptr %call.i151, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %codecs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %codecs.i, align 4
  %platforms.i = getelementptr inbounds %struct.link_info, ptr %call.i151, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %platforms.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %platforms.i, align 4
  %13 = ptrtoint ptr %call.i151 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call.i151, align 4
  br label %if.end12

simple_get_dais_count.exit:                       ; preds = %if.end6
  %call.i152 = tail call fastcc i32 @simple_for_each_link(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i151, ptr noundef nonnull @simple_count_noml, ptr noundef nonnull @simple_count_dpcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp = icmp slt i32 %call.i152, 0
  br i1 %cmp, label %simple_get_dais_count.exit.cleanup80_crit_edge, label %if.end9

simple_get_dais_count.exit.cleanup80_crit_edge:   ; preds = %simple_get_dais_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end9:                                          ; preds = %simple_get_dais_count.exit
  %14 = ptrtoint ptr %call.i151 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %call.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %if.end9.cleanup80_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end9.cleanup80_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.end9.thread
  %call13 = tail call i32 @asoc_simple_init_priv(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i151) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup80_crit_edge, label %if.end16

if.end12.cleanup80_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end16:                                         ; preds = %if.end12
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %if.end16.if.else_crit_edge, label %land.lhs.true

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end16
  %call18 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %1) #7
  br i1 %call18, label %if.then19, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %call.i153 = tail call i32 @asoc_simple_parse_widgets(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp.i = icmp slt i32 %call.i153, 0
  br i1 %cmp.i, label %if.then19.if.then22_crit_edge, label %if.end.i154

if.then19.if.then22_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end.i154:                                      ; preds = %if.then19
  %call1.i = tail call i32 @asoc_simple_parse_routing(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i154.if.then22_crit_edge, label %if.end4.i

if.end.i154.if.then22_crit_edge:                  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end4.i:                                        ; preds = %if.end.i154
  %call5.i = tail call i32 @asoc_simple_parse_pin_switches(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.if.then22_crit_edge, label %if.end8.i

if.end4.i.if.then22_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end8.i:                                        ; preds = %if.end4.i
  %15 = call ptr @memset(ptr %call.i151, i32 0, i32 8200)
  %call9.i = tail call fastcc i32 @simple_for_each_link(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i151, ptr noundef nonnull @simple_dai_link_of, ptr noundef nonnull @simple_dai_link_of_dpcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.if.then22_crit_edge, label %if.end12.i

if.end8.i.if.then22_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = tail call i32 @asoc_simple_parse_card_name(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.if.then22_crit_edge, label %simple_parse_of.exit

if.end12.i.if.then22_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

simple_parse_of.exit:                             ; preds = %if.end12.i
  %call17.i = tail call i32 @snd_soc_of_parse_aux_devs(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp21 = icmp slt i32 %call17.i, 0
  br i1 %cmp21, label %simple_parse_of.exit.if.then22_crit_edge, label %simple_parse_of.exit.if.end74_crit_edge

simple_parse_of.exit.if.end74_crit_edge:          ; preds = %simple_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

simple_parse_of.exit.if.then22_crit_edge:         ; preds = %simple_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %simple_parse_of.exit.if.then22_crit_edge, %if.end12.i.if.then22_crit_edge, %if.end8.i.if.then22_crit_edge, %if.end4.i.if.then22_crit_edge, %if.end.i154.if.then22_crit_edge, %if.then19.if.then22_crit_edge
  %retval.0.i155161 = phi i32 [ %call17.i, %simple_parse_of.exit.if.then22_crit_edge ], [ %call13.i, %if.end12.i.if.then22_crit_edge ], [ %call9.i, %if.end8.i.if.then22_crit_edge ], [ %call5.i, %if.end4.i.if.then22_crit_edge ], [ %call1.i, %if.end.i154.if.then22_crit_edge ], [ %call.i153, %if.then19.if.then22_crit_edge ]
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i155161, ptr noundef nonnull @.str.2) #7
  br label %err

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end16.if.else_crit_edge
  %dai_link25 = getelementptr inbounds %struct.asoc_simple_priv, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %dai_link25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai_link25, align 4
  %dai_props26 = getelementptr inbounds %struct.asoc_simple_priv, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %dai_props26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dai_props26, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data, align 8
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %do.end, label %if.end29

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %cleanup80

if.end29:                                         ; preds = %if.else
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool30.not = icmp eq ptr %23, null
  br i1 %tobool30.not, label %if.end29.do.end44_crit_edge, label %lor.lhs.false

if.end29.do.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

lor.lhs.false:                                    ; preds = %if.end29
  %codec_dai = getelementptr inbounds %struct.asoc_simple_card_info, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %codec_dai to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %codec_dai, align 4
  %tobool32.not = icmp eq ptr %25, null
  br i1 %tobool32.not, label %lor.lhs.false.do.end44_crit_edge, label %lor.lhs.false33

lor.lhs.false.do.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %codec = getelementptr inbounds %struct.asoc_simple_card_info, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %codec, align 4
  %tobool34.not = icmp eq ptr %27, null
  br i1 %tobool34.not, label %lor.lhs.false33.do.end44_crit_edge, label %lor.lhs.false35

lor.lhs.false33.do.end44_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %platform36 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %platform36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform36, align 4
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %lor.lhs.false35.do.end44_crit_edge, label %lor.lhs.false38

lor.lhs.false35.do.end44_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %cpu_dai = getelementptr inbounds %struct.asoc_simple_card_info, ptr %21, i32 0, i32 5
  %30 = ptrtoint ptr %cpu_dai to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu_dai, align 4
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %lor.lhs.false38.do.end44_crit_edge, label %if.end45

lor.lhs.false38.do.end44_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end44:                                         ; preds = %lor.lhs.false38.do.end44_crit_edge, %lor.lhs.false35.do.end44_crit_edge, %lor.lhs.false33.do.end44_crit_edge, %lor.lhs.false.do.end44_crit_edge, %if.end29.do.end44_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  br label %cleanup80

if.end45:                                         ; preds = %lor.lhs.false38
  %cpus46 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 2
  %32 = ptrtoint ptr %cpus46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cpus46, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %dai_name, align 4
  %codecs49 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 4
  %35 = ptrtoint ptr %codecs49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %codecs49, align 4
  %37 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %codec, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %36, align 4
  %40 = ptrtoint ptr %codec_dai to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %codec_dai, align 4
  %dai_name54 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %36, i32 0, i32 2
  %42 = ptrtoint ptr %dai_name54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %dai_name54, align 4
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 6
  %43 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platforms, align 4
  %45 = ptrtoint ptr %platform36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform36, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %44, align 4
  %card57 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %21, i32 0, i32 1
  %48 = ptrtoint ptr %card57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card57, align 4
  %tobool58.not = icmp eq ptr %49, null
  br i1 %tobool58.not, label %cond.false, label %if.end45.cond.end_crit_edge

if.end45.cond.end_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end45.cond.end_crit_edge
  %cond = phi ptr [ %51, %cond.false ], [ %49, %if.end45.cond.end_crit_edge ]
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cond, ptr %call.i, align 4
  %53 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %21, align 4
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %17, align 4
  %56 = load ptr, ptr %21, align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 1
  %57 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %stream_name, align 4
  %daifmt = getelementptr inbounds %struct.asoc_simple_card_info, ptr %21, i32 0, i32 4
  %58 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %daifmt, align 4
  %dai_fmt = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 11
  %60 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %dai_fmt, align 4
  %init = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 13
  %61 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @asoc_simple_dai_init, ptr %init, align 4
  %62 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %19, align 4
  %64 = call ptr @memcpy(ptr %63, ptr %cpu_dai, i32 32)
  %codec_dai67 = getelementptr inbounds %struct.simple_dai_props, ptr %19, i32 0, i32 1
  %65 = ptrtoint ptr %codec_dai67 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %codec_dai67, align 4
  %67 = call ptr @memcpy(ptr %66, ptr %codec_dai, i32 32)
  br label %if.end74

if.end74:                                         ; preds = %cond.end, %simple_parse_of.exit.if.end74_crit_edge
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 57
  %68 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %drvdata.i, align 4
  %call75 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.err_crit_edge, label %if.end78

if.end74.err_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end78:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i151) #7
  br label %cleanup80

err:                                              ; preds = %if.end74.err_crit_edge, %if.then22
  %ret.0 = phi i32 [ %retval.0.i155161, %if.then22 ], [ %call75, %if.end74.err_crit_edge ]
  %call79 = tail call i32 @asoc_simple_clean_reference(ptr noundef nonnull %call.i) #7
  br label %cleanup80

cleanup80:                                        ; preds = %err, %if.end78, %do.end44, %do.end, %if.end12.cleanup80_crit_edge, %if.end9.cleanup80_crit_edge, %simple_get_dais_count.exit.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.1 = phi i32 [ %ret.0, %err ], [ 0, %if.end78 ], [ -12, %entry.cleanup80_crit_edge ], [ -12, %if.end.cleanup80_crit_edge ], [ %call.i152, %simple_get_dais_count.exit.cleanup80_crit_edge ], [ -22, %if.end9.cleanup80_crit_edge ], [ %call13, %if.end12.cleanup80_crit_edge ], [ -22, %do.end44 ], [ -22, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_soc_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %hp_jack = getelementptr inbounds %struct.asoc_simple_priv, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @asoc_simple_init_jack(ptr noundef %card, ptr noundef %hp_jack, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mic_jack = getelementptr inbounds %struct.asoc_simple_priv, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @asoc_simple_init_jack(ptr noundef %card, ptr noundef %mic_jack, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %2 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_priv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_dai_init(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_clean_reference(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_jack(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @simple_for_each_link(ptr noundef %priv, ptr noundef %li, ptr nocapture noundef readonly %func_noml, ptr nocapture noundef readonly %func_dpcm) unnamed_addr #2 align 64 {
entry:
  %adata.i = alloca %struct.asoc_simple_data, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.link_info, ptr %li, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %cpu, align 4
  %dev1.i = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %1 = getelementptr inbounds %struct.asoc_simple_data, ptr %adata.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i = call ptr @of_device_get_match_data(ptr noundef %3) #7
  %call2.i = call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.12) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call ptr @of_node_get(ptr noundef %5) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %cond11.i = phi ptr [ @.str.15, %if.then.i ], [ @.str.16, %for.body.if.end.i_crit_edge ]
  %cond.i = phi ptr [ @.str.13, %if.then.i ], [ @.str.14, %for.body.if.end.i_crit_edge ]
  %node.0.i = phi ptr [ %call3.i, %if.then.i ], [ %call2.i, %for.body.if.end.i_crit_edge ]
  %tobool22.not.i = icmp eq ptr %call.i, null
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end.i
  %node.1.i = phi ptr [ %node.0.i, %if.end.i ], [ %call52.i, %cleanup.i.do.body.i_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.end.i ], [ %ret.1.lcssa.i, %cleanup.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %adata.i) #7
  %6 = ptrtoint ptr %adata.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %adata.i, align 8, !annotation !97
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %1, align 4, !annotation !97
  %call.i.i = call ptr @of_get_next_child(ptr noundef %node.1.i, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %do.body.i.of_get_child_count.exit.i_crit_edge, label %do.body.i.for.body.i.i_crit_edge

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

do.body.i.of_get_child_count.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %do.body.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef %node.1.i, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %do.body.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %do.body.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %call6.i = call ptr @of_get_child_by_name(ptr noundef %node.1.i, ptr noundef nonnull %cond.i) #7
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %of_get_child_count.exit.i.__simple_for_each_link.exit.thread_crit_edge, label %if.end9.i

of_get_child_count.exit.i.__simple_for_each_link.exit.thread_crit_edge: ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__simple_for_each_link.exit.thread

if.end9.i:                                        ; preds = %of_get_child_count.exit.i
  %call12.i = call ptr @of_get_child_by_name(ptr noundef %node.1.i, ptr noundef nonnull %cond11.i) #7
  %8 = ptrtoint ptr %adata.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %adata.i, align 8
  %call13.i = call ptr @of_get_next_child(ptr noundef %node.1.i, ptr noundef null) #7
  %cmp.not125.i = icmp eq ptr %call13.i, null
  br i1 %cmp.not125.i, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %np.0126.i = phi ptr [ %call14.i, %for.body.i.for.body.i_crit_edge ], [ %call13.i, %if.end9.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %call.i107.i = call ptr @of_get_parent(ptr noundef nonnull %np.0126.i) #7
  call void @asoc_simple_parse_convert(ptr noundef %10, ptr noundef nonnull @.str.11, ptr noundef nonnull %adata.i) #7
  call void @asoc_simple_parse_convert(ptr noundef %call.i107.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %adata.i) #7
  call void @asoc_simple_parse_convert(ptr noundef %call.i107.i, ptr noundef null, ptr noundef nonnull %adata.i) #7
  call void @asoc_simple_parse_convert(ptr noundef nonnull %np.0126.i, ptr noundef null, ptr noundef nonnull %adata.i) #7
  call void @of_node_put(ptr noundef %call.i107.i) #7
  %call14.i = call ptr @of_get_next_child(ptr noundef %node.1.i, ptr noundef nonnull %np.0126.i) #7
  %cmp.not.i = icmp eq ptr %call14.i, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end9.i.for.end.i_crit_edge
  %call15.i = call ptr @of_get_next_child(ptr noundef %node.1.i, ptr noundef null) #7
  %cmp17.not127.i = icmp eq ptr %call15.i, null
  br i1 %cmp17.not127.i, label %for.end.i.cleanup.i_crit_edge, label %for.body18.lr.ph.i

for.end.i.cleanup.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body18.lr.ph.i:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num.0.lcssa.i.i)
  %cmp23.i = icmp sgt i32 %num.0.lcssa.i.i, 2
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc49.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %np.1130.i = phi ptr [ %call15.i, %for.body18.lr.ph.i ], [ %call50.i, %for.inc49.i.for.body18.i_crit_edge ]
  %ret.1128.i = phi i32 [ %ret.0.i, %for.body18.lr.ph.i ], [ %ret.3.i, %for.inc49.i.for.body18.i_crit_edge ]
  %cmp19.i = icmp eq ptr %call12.i, %np.1130.i
  br i1 %cmp19.i, label %for.body18.i.for.inc49.i_crit_edge, label %if.end21.i

for.body18.i.for.inc49.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc49.i

if.end21.i:                                       ; preds = %for.body18.i
  br i1 %tobool22.not.i, label %if.end21.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end21.i.if.else.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  br i1 %cmp23.i, label %land.lhs.true.i.if.then27.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then27.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %adata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %adata.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool24.not.i = icmp eq i32 %12, 0
  br i1 %tobool24.not.i, label %lor.lhs.false25.i, label %lor.lhs.false.i.if.then27.i_crit_edge

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool26.not.i = icmp eq i32 %14, 0
  br i1 %tobool26.not.i, label %lor.lhs.false25.i.if.else.i_crit_edge, label %lor.lhs.false25.i.if.then27.i_crit_edge

lor.lhs.false25.i.if.then27.i_crit_edge:          ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

lor.lhs.false25.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then27.i:                                      ; preds = %lor.lhs.false25.i.if.then27.i_crit_edge, %lor.lhs.false.i.if.then27.i_crit_edge, %land.lhs.true.i.if.then27.i_crit_edge
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %cmp28.i = icmp eq ptr %np.1130.i, %call6.i
  %conv.i = zext i1 %cmp28.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp29.not.i = icmp eq i32 %16, %conv.i
  br i1 %cmp29.not.i, label %if.then27.i.if.end44.i_crit_edge, label %if.then27.i.if.end44.sink.split.i_crit_edge

if.then27.i.if.end44.sink.split.i_crit_edge:      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split.i

if.then27.i.if.end44.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.else.i:                                        ; preds = %lor.lhs.false25.i.if.else.i_crit_edge, %if.end21.i.if.else.i_crit_edge
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool36.not.i = icmp eq i32 %18, 0
  %cmp38.not.i = icmp eq ptr %np.1130.i, %call6.i
  %or.cond.i = select i1 %tobool36.not.i, i1 true, i1 %cmp38.not.i
  br i1 %or.cond.i, label %if.else.i.if.end44.i_crit_edge, label %if.else.i.if.end44.sink.split.i_crit_edge

if.else.i.if.end44.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split.i

if.else.i.if.end44.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.end44.sink.split.i:                            ; preds = %if.else.i.if.end44.sink.split.i_crit_edge, %if.then27.i.if.end44.sink.split.i_crit_edge
  %func_noml.sink.i = phi ptr [ %func_dpcm, %if.then27.i.if.end44.sink.split.i_crit_edge ], [ %func_noml, %if.else.i.if.end44.sink.split.i_crit_edge ]
  %call42.i = call i32 %func_noml.sink.i(ptr noundef %priv, ptr noundef nonnull %np.1130.i, ptr noundef nonnull %call6.i, ptr noundef %li, i1 noundef zeroext %tobool.not.i) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end44.sink.split.i, %if.else.i.if.end44.i_crit_edge, %if.then27.i.if.end44.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1128.i, %if.then27.i.if.end44.i_crit_edge ], [ %ret.1128.i, %if.else.i.if.end44.i_crit_edge ], [ %call42.i, %if.end44.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp45.i = icmp slt i32 %ret.2.i, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.end44.i.for.inc49.i_crit_edge

if.end44.i.for.inc49.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc49.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %call6.i) #7
  call void @of_node_put(ptr noundef nonnull %np.1130.i) #7
  br label %__simple_for_each_link.exit.thread

for.inc49.i:                                      ; preds = %if.end44.i.for.inc49.i_crit_edge, %for.body18.i.for.inc49.i_crit_edge
  %ret.3.i = phi i32 [ %ret.1128.i, %for.body18.i.for.inc49.i_crit_edge ], [ %ret.2.i, %if.end44.i.for.inc49.i_crit_edge ]
  %call50.i = call ptr @of_get_next_child(ptr noundef %node.1.i, ptr noundef nonnull %np.1130.i) #7
  %cmp17.not.i = icmp eq ptr %call50.i, null
  br i1 %cmp17.not.i, label %for.inc49.i.cleanup.i_crit_edge, label %for.inc49.i.for.body18.i_crit_edge

for.inc49.i.for.body18.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.inc49.i.cleanup.i_crit_edge:                  ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

__simple_for_each_link.exit.thread:               ; preds = %if.then47.i, %of_get_child_count.exit.i.__simple_for_each_link.exit.thread_crit_edge
  %ret.4.ph.i = phi i32 [ %ret.2.i, %if.then47.i ], [ -19, %of_get_child_count.exit.i.__simple_for_each_link.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %adata.i) #7
  call void @of_node_put(ptr noundef %node.1.i) #7
  br label %for.end

cleanup.i:                                        ; preds = %for.inc49.i.cleanup.i_crit_edge, %for.end.i.cleanup.i_crit_edge
  %ret.1.lcssa.i = phi i32 [ %ret.0.i, %for.end.i.cleanup.i_crit_edge ], [ %ret.3.i, %for.inc49.i.cleanup.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call6.i) #7
  %call52.i = call ptr @of_get_next_child(ptr noundef %5, ptr noundef %node.1.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %adata.i) #7
  %tobool58.not.i = icmp eq ptr %call52.i, null
  %or.cond106.i = select i1 %tobool.not.i, i1 true, i1 %tobool58.not.i
  br i1 %or.cond106.i, label %__simple_for_each_link.exit, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

__simple_for_each_link.exit:                      ; preds = %cleanup.i
  call void @of_node_put(ptr noundef %call52.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.lcssa.i)
  %cmp2 = icmp slt i32 %ret.1.lcssa.i, 0
  br i1 %cmp2, label %__simple_for_each_link.exit.for.end_crit_edge, label %for.inc

__simple_for_each_link.exit.for.end_crit_edge:    ; preds = %__simple_for_each_link.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %__simple_for_each_link.exit
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %cpu, align 4
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__simple_for_each_link.exit.for.end_crit_edge, %__simple_for_each_link.exit.thread
  %ret.1 = phi i32 [ %ret.4.ph.i, %__simple_for_each_link.exit.thread ], [ %ret.1.lcssa.i, %for.inc.for.end_crit_edge ], [ %ret.1.lcssa.i, %__simple_for_each_link.exit.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_count_noml(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %np, ptr nocapture noundef readnone %codec, ptr nocapture noundef %li, i1 noundef zeroext %is_top) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %li, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %1)
  %cmp = icmp sgt i32 %1, 511
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx, align 4
  %codecs = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1, i32 1
  %5 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %codecs, align 4
  %platforms = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1, i32 2
  %6 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %platforms, align 4
  %7 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %li, align 4
  %add = add i32 %8, 1
  store i32 %add, ptr %li, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_count_dpcm(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %np, ptr nocapture noundef readnone %codec, ptr nocapture noundef %li, i1 noundef zeroext %is_top) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %li, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %1)
  %cmp = icmp sgt i32 %1, 511
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #10
  br label %return

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.link_info, ptr %li, i32 0, i32 1
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx, align 4
  %platforms = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1, i32 2
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %codecs = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1, i32 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then2
  %codecs.sink = phi ptr [ %codecs, %if.else ], [ %platforms, %if.then2 ]
  %7 = ptrtoint ptr %codecs.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %codecs.sink, align 4
  %8 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %8)
  %storemerge.in = load i32, ptr %li, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %li, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_parse_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_widgets(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_pin_switches(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_dai_link_of(ptr nocapture noundef readonly %priv, ptr noundef %np, ptr noundef %codec, ptr nocapture noundef %li, i1 noundef zeroext %is_top) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %dai_name = alloca [64 x i8], align 1
  %prop = alloca [128 x i8], align 1
  %single_cpu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dai_link3 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 24
  %2 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link3, align 4
  %4 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %li, align 4
  %cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 2
  %6 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpus.i, align 4
  %codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 4
  %8 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %codecs.i, align 4
  %platforms.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 6
  %10 = ptrtoint ptr %platforms.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platforms.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dai_name) #7
  %12 = call ptr @memset(ptr %dai_name, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %prop) #7
  %13 = call ptr @memset(ptr %prop, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %single_cpu) #7
  %14 = ptrtoint ptr %single_cpu to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %single_cpu, align 4
  %call6 = tail call ptr @of_get_parent(ptr noundef %np) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @simple_dai_link_of.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@simple_dai_link_of, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @simple_dai_link_of.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %call6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spec.select = select i1 %is_top, ptr @.str.11, ptr @.str.21
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop, i32 noundef 128, ptr noundef nonnull @.str.25, ptr noundef nonnull %spec.select)
  %call16 = call ptr @of_get_child_by_name(ptr noundef %call6, ptr noundef nonnull %prop) #7
  %call17 = call fastcc i32 @simple_parse_node(ptr noundef %priv, ptr noundef %np, ptr noundef %li, ptr noundef nonnull %spec.select, ptr noundef nonnull %single_cpu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end.dai_link_of_err_crit_edge, label %if.end19

do.end.dai_link_of_err_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dai_link_of_err

if.end19:                                         ; preds = %do.end
  %call20 = call fastcc i32 @simple_parse_node(ptr noundef %priv, ptr noundef %codec, ptr noundef %li, ptr noundef nonnull %spec.select, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.dai_link_of_err_crit_edge, label %if.end23

if.end19.dai_link_of_err_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %dai_link_of_err

if.end23:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %15 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %tobool.not.i = icmp eq ptr %call16, null
  br i1 %tobool.not.i, label %if.end23.asoc_simple_parse_platform.exit.thread_crit_edge, label %if.end.i

if.end23.asoc_simple_parse_platform.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %asoc_simple_parse_platform.exit.thread

if.end.i:                                         ; preds = %if.end23
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call16, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %asoc_simple_parse_platform.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i, align 4
  %of_node.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_node.i, align 4
  br label %asoc_simple_parse_platform.exit.thread

asoc_simple_parse_platform.exit.thread:           ; preds = %if.end3.i, %if.end23.asoc_simple_parse_platform.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.end27

asoc_simple_parse_platform.exit:                  ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp25 = icmp slt i32 %call.i.i, 0
  br i1 %cmp25, label %asoc_simple_parse_platform.exit.dai_link_of_err_crit_edge, label %asoc_simple_parse_platform.exit.if.end27_crit_edge

asoc_simple_parse_platform.exit.if.end27_crit_edge: ; preds = %asoc_simple_parse_platform.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

asoc_simple_parse_platform.exit.dai_link_of_err_crit_edge: ; preds = %asoc_simple_parse_platform.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dai_link_of_err

if.end27:                                         ; preds = %asoc_simple_parse_platform.exit.if.end27_crit_edge, %asoc_simple_parse_platform.exit.thread
  %dai_name29 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %dai_name29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dai_name29, align 4
  %dai_name30 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %dai_name30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dai_name30, align 4
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dai_name, i32 noundef 64, ptr noundef nonnull @.str.26, ptr noundef %20, ptr noundef %22)
  %23 = ptrtoint ptr %single_cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %single_cpu, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %7, i32 noundef %24) #7
  call void @asoc_simple_canonicalize_platform(ptr noundef %11, ptr noundef %7) #7
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  %27 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dai_link3, align 4
  %29 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %li, align 4
  %dai_fmt.i = getelementptr %struct.snd_soc_dai_link, ptr %28, i32 %30, i32 11
  %call.i = call i32 @asoc_simple_parse_daifmt(ptr noundef %26, ptr noundef %call6, ptr noundef %codec, ptr noundef nonnull %spec.select, ptr noundef %dai_fmt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end27.dai_link_of_err_crit_edge, label %if.end.i61

if.end27.dai_link_of_err_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %dai_link_of_err

if.end.i61:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.snd_soc_dai_link, ptr %28, i32 %30
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %28, i32 %30, i32 13
  %31 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @asoc_simple_dai_init, ptr %init.i, align 4
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %28, i32 %30, i32 16
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @simple_ops, ptr %ops.i, align 4
  %call4.i = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %26, ptr noundef %add.ptr.i, ptr noundef nonnull %dai_name) #7
  br label %dai_link_of_err

dai_link_of_err:                                  ; preds = %if.end.i61, %if.end27.dai_link_of_err_crit_edge, %asoc_simple_parse_platform.exit.dai_link_of_err_crit_edge, %if.end19.dai_link_of_err_crit_edge, %do.end.dai_link_of_err_crit_edge
  %ret.0 = phi i32 [ %call17, %do.end.dai_link_of_err_crit_edge ], [ %call20, %if.end19.dai_link_of_err_crit_edge ], [ %call.i.i, %asoc_simple_parse_platform.exit.dai_link_of_err_crit_edge ], [ %call4.i, %if.end.i61 ], [ 0, %if.end27.dai_link_of_err_crit_edge ]
  call void @of_node_put(ptr noundef %call16) #7
  call void @of_node_put(ptr noundef %call6) #7
  %33 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %li, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %li, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %single_cpu) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %prop) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dai_name) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_dai_link_of_dpcm(ptr nocapture noundef readonly %priv, ptr noundef %np, ptr noundef %codec, ptr nocapture noundef %li, i1 noundef zeroext %is_top) #2 align 64 {
entry:
  %dai_name = alloca [64 x i8], align 1
  %is_single_links = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dai_link3 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 24
  %2 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link3, align 4
  %4 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %li, align 4
  %add.ptr = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5
  %dai_props4 = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dai_props4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_props4, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_parent(ptr noundef %np) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dai_name) #7
  %10 = call ptr @memset(ptr %dai_name, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @simple_dai_link_of_dpcm.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@simple_dai_link_of_dpcm, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @simple_dai_link_of_dpcm.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef %np) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spec.select = select i1 %is_top, ptr @.str.11, ptr @.str.21
  %cpu = getelementptr inbounds %struct.link_info, ptr %li, i32 0, i32 1
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %do.end
  %cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 2
  %13 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpus.i, align 4
  %platforms.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 6
  %15 = ptrtoint ptr %platforms.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platforms.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_single_links) #7
  %17 = ptrtoint ptr %is_single_links to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %is_single_links, align 4
  %dynamic = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 18
  %18 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %dynamic, align 4
  %bf.set20 = or i32 %bf.load, 9437184
  store i32 %bf.set20, ptr %dynamic, align 4
  %call21 = call fastcc i32 @simple_parse_node(ptr noundef %priv, ptr noundef %np, ptr noundef %li, ptr noundef nonnull %spec.select, ptr noundef nonnull %is_single_links)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %dai_name24 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %dai_name24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dai_name24, align 4
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dai_name, i32 noundef 64, ptr noundef nonnull @.str.32, ptr noundef %20)
  %21 = ptrtoint ptr %is_single_links to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %is_single_links, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %14, i32 noundef %22) #7
  call void @asoc_simple_canonicalize_platform(ptr noundef %16, ptr noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_single_links) #7
  br label %if.end47

cleanup:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_single_links) #7
  br label %out_put_node

if.else:                                          ; preds = %do.end
  %codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 4
  %23 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %codecs.i, align 4
  %no_pcm = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 18
  %25 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load29 = load i32, ptr %no_pcm, align 4
  %bf.set31 = or i32 %bf.load29, 16777216
  store i32 %bf.set31, ptr %no_pcm, align 4
  %be_hw_params_fixup = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 15
  %26 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @asoc_simple_be_hw_params_fixup, ptr %be_hw_params_fixup, align 4
  %codec_conf = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 6
  %27 = ptrtoint ptr %codec_conf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %codec_conf, align 4
  %call33 = tail call fastcc i32 @simple_parse_node(ptr noundef %priv, ptr noundef %np, ptr noundef %li, ptr noundef nonnull %spec.select, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.else.out_put_node_crit_edge, label %cleanup43.thread

if.else.out_put_node_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_node

cleanup43.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dai_name38 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %dai_name38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dai_name38, align 4
  %call39 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dai_name, i32 noundef 64, ptr noundef nonnull @.str.33, ptr noundef %30)
  %of_node40 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node40, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %9, ptr noundef %28, ptr noundef %32, ptr noundef nonnull @.str.34) #7
  %33 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node40, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %call, ptr noundef %28, ptr noundef %34, ptr noundef nonnull @.str.35) #7
  %35 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node40, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %np, ptr noundef %28, ptr noundef %36, ptr noundef nonnull @.str.35) #7
  br label %if.end47

if.end47:                                         ; preds = %cleanup43.thread, %cleanup.thread
  %adata = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 5
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_get_parent(ptr noundef %np) #7
  call void @asoc_simple_parse_convert(ptr noundef %38, ptr noundef nonnull @.str.11, ptr noundef %adata) #7
  call void @asoc_simple_parse_convert(ptr noundef %call.i, ptr noundef nonnull @.str.11, ptr noundef %adata) #7
  call void @asoc_simple_parse_convert(ptr noundef %call.i, ptr noundef null, ptr noundef %adata) #7
  call void @asoc_simple_parse_convert(ptr noundef %np, ptr noundef null, ptr noundef %adata) #7
  call void @of_node_put(ptr noundef %call.i) #7
  call void @snd_soc_dai_link_set_capabilities(ptr noundef %add.ptr) #7
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %41 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dai_link3, align 4
  %43 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %li, align 4
  %dai_fmt.i = getelementptr %struct.snd_soc_dai_link, ptr %42, i32 %44, i32 11
  %call.i102 = call i32 @asoc_simple_parse_daifmt(ptr noundef %40, ptr noundef %call, ptr noundef %codec, ptr noundef nonnull %spec.select, ptr noundef %dai_fmt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i = icmp slt i32 %call.i102, 0
  br i1 %cmp.i, label %if.end47.out_put_node_crit_edge, label %if.end.i

if.end47.out_put_node_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_node

if.end.i:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.snd_soc_dai_link, ptr %42, i32 %44
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %42, i32 %44, i32 13
  %45 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @asoc_simple_dai_init, ptr %init.i, align 4
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %42, i32 %44, i32 16
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @simple_ops, ptr %ops.i, align 4
  %call4.i = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %40, ptr noundef %add.ptr.i, ptr noundef nonnull %dai_name) #7
  br label %out_put_node

out_put_node:                                     ; preds = %if.end.i, %if.end47.out_put_node_crit_edge, %if.else.out_put_node_crit_edge, %cleanup
  %ret.0 = phi i32 [ %call21, %cleanup ], [ %call33, %if.else.out_put_node_crit_edge ], [ %call4.i, %if.end.i ], [ 0, %if.end47.out_put_node_crit_edge ]
  %47 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %li, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %li, align 4
  call void @of_node_put(ptr noundef %call) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dai_name) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_aux_devs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @simple_parse_node(ptr nocapture noundef readonly %priv, ptr noundef %np, ptr nocapture noundef readonly %li, ptr noundef %prefix, ptr noundef writeonly %cpu) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %prop.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %dai_link3 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 24
  %4 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_link3, align 4
  %6 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %li, align 4
  %dai_props4 = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dai_props4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dai_props4, align 4
  %tobool.not = icmp eq ptr %cpu, null
  %add.ptr6 = getelementptr %struct.simple_dai_props, ptr %9, i32 %7
  %cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %5, i32 %7, i32 2
  %codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %5, i32 %7, i32 4
  %codec_dai = getelementptr %struct.simple_dai_props, ptr %9, i32 %7, i32 1
  %dlc.0.in = select i1 %tobool.not, ptr %codecs.i, ptr %cpus.i
  %dai.0.in = select i1 %tobool.not, ptr %codec_dai, ptr %add.ptr6
  %10 = ptrtoint ptr %dlc.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %dlc.0 = load ptr, ptr %dlc.0.in, align 4
  %11 = ptrtoint ptr %dai.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %dai.0 = load ptr, ptr %dai.0.in, align 4
  %call.i = tail call ptr @of_get_parent(ptr noundef %np) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %prop.i) #7
  %12 = call ptr @memset(ptr %prop.i, i32 255, i32 128)
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i, i32 noundef 128, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11) #7
  %mclk_fs.i = getelementptr %struct.simple_dai_props, ptr %9, i32 %7, i32 9
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull %prop.i, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #7
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i, i32 noundef 128, ptr noundef nonnull @.str.27, ptr noundef %prefix) #7
  %call.i.i16.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call.i, ptr noundef nonnull %prop.i, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #7
  %call.i.i17.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull %prop.i, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #7
  call void @of_node_put(ptr noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %prop.i) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %13 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %tobool.not.i = icmp eq ptr %np, null
  br i1 %tobool.not.i, label %entry.if.end13_crit_edge, label %if.end.i

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.asoc_simple_parse_dai.exit_crit_edge

if.end.i.asoc_simple_parse_dai.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asoc_simple_parse_dai.exit

if.end3.i:                                        ; preds = %if.end.i
  %dai_name.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %dlc.0, i32 0, i32 2
  %call4.i = call i32 @snd_soc_of_get_dai_name(ptr noundef nonnull %np, ptr noundef %dai_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end3.i.asoc_simple_parse_dai.exit_crit_edge, label %if.end6.i

if.end3.i.asoc_simple_parse_dai.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asoc_simple_parse_dai.exit

if.end6.i:                                        ; preds = %if.end3.i
  %14 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i, align 4
  %of_node.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %dlc.0, i32 0, i32 1
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %of_node.i, align 4
  br i1 %tobool.not, label %if.end6.i.if.end13_crit_edge, label %if.then8.i

if.end6.i.if.end13_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %17 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not.i = icmp eq i32 %18, 0
  %lnot.ext.i = zext i1 %tobool9.not.i to i32
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %lnot.ext.i, ptr %cpu, align 4
  br label %if.end13

asoc_simple_parse_dai.exit:                       ; preds = %if.end3.i.asoc_simple_parse_dai.exit_crit_edge, %if.end.i.asoc_simple_parse_dai.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i.asoc_simple_parse_dai.exit_crit_edge ], [ %call4.i, %if.end3.i.asoc_simple_parse_dai.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then8.i, %if.end6.i.if.end13_crit_edge, %entry.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %call14 = call i32 @asoc_simple_parse_clk(ptr noundef %1, ptr noundef %np, ptr noundef %dai.0, ptr noundef %dlc.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %tx_slot_mask = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 5
  %rx_slot_mask = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 6
  %slots = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 3
  %slot_width = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 4
  %call18 = call i32 @snd_soc_of_parse_tdm_slot(ptr noundef %np, ptr noundef %tx_slot_mask, ptr noundef %rx_slot_mask, ptr noundef %slots, ptr noundef %slot_width) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %asoc_simple_parse_dai.exit
  %retval.0 = phi i32 [ %retval.0.i, %asoc_simple_parse_dai.exit ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_platform(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_tdm_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_daifmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_set_dailink_name(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_startup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_hw_params(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_be_hw_params_fixup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_parse_node_prefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_snd_soc_simple_card__240_751_asoc_simple_card_init6, !1, !"__initcall__kmod_snd_soc_simple_card__240_751_asoc_simple_card_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/generic/simple-card.c", i32 751, i32 1}
!2 = !{ptr @__exitcall_asoc_simple_card_exit, !1, !"__exitcall_asoc_simple_card_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias241, !4, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!4 = !{!"../sound/soc/generic/simple-card.c", i32 753, i32 1}
!5 = !{ptr @__UNIQUE_ID_file242, !6, !"__UNIQUE_ID_file242", i1 false, i1 false}
!6 = !{!"../sound/soc/generic/simple-card.c", i32 754, i32 1}
!7 = !{ptr @__UNIQUE_ID_license243, !6, !"__UNIQUE_ID_license243", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description244, !9, !"__UNIQUE_ID_description244", i1 false, i1 false}
!9 = !{!"../sound/soc/generic/simple-card.c", i32 755, i32 1}
!10 = !{ptr @__UNIQUE_ID_author245, !11, !"__UNIQUE_ID_author245", i1 false, i1 false}
!11 = !{!"../sound/soc/generic/simple-card.c", i32 756, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/generic/simple-card.c", i32 743, i32 11}
!14 = !{ptr @asoc_simple_card, !15, !"asoc_simple_card", i1 false, i1 false}
!15 = !{!"../sound/soc/generic/simple-card.c", i32 741, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/generic/simple-card.c", i32 648, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/generic/simple-card.c", i32 669, i32 28}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/generic/simple-card.c", i32 683, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @asoc_simple_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @asoc_simple_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/generic/simple-card.c", i32 692, i32 4}
!30 = !{ptr @asoc_simple_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @asoc_simple_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/generic/simple-card.c", i32 619, i32 8}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/generic/simple-card.c", i32 356, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/generic/simple-card.c", i32 372, i32 11}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/generic/simple-card.c", i32 372, i32 28}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/generic/simple-card.c", i32 379, i32 10}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/generic/simple-card.c", i32 379, i32 26}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/generic/simple-card.c", i32 509, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @simple_count_noml._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @simple_count_noml._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/generic/simple-card.c", i32 530, i32 3}
!51 = !{ptr @simple_count_dpcm._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @simple_count_dpcm._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/generic/simple-card.c", i32 496, i32 40}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/generic/simple-card.c", i32 293, i32 17}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/generic/simple-card.c", i32 299, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @simple_dai_link_of.__UNIQUE_ID_ddebug239, !58, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/generic/simple-card.c", i32 305, i32 31}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/generic/simple-card.c", i32 321, i32 4}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/generic/simple-card.c", i32 127, i32 31}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/generic/simple-card.c", i32 69, i32 41}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/generic/simple-card.c", i32 69, i32 46}
!72 = !{ptr @simple_ops, !73, !"simple_ops", i1 false, i1 false}
!73 = !{!"../sound/soc/generic/simple-card.c", i32 25, i32 33}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/generic/simple-card.c", i32 212, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @simple_dai_link_of_dpcm.__UNIQUE_ID_ddebug238, !75, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/generic/simple-card.c", i32 233, i32 40}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/generic/simple-card.c", i32 253, i32 40}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/generic/simple-card.c", i32 257, i32 12}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/generic/simple-card.c", i32 259, i32 11}
!86 = !{ptr @simple_of_match, !87, !"simple_of_match", i1 false, i1 false}
!87 = !{!"../sound/soc/generic/simple-card.c", i32 733, i32 34}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{i64 2148738651, i64 2148738656, i64 2148738669, i64 2148738713, i64 2148738747, i64 2148738768}
