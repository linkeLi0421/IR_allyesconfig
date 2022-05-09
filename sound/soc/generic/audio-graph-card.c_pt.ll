; ModuleID = '/llk/IR_all_yes/sound/soc/generic/audio-graph-card.c_pt.bc'
source_filename = "../sound/soc/generic/audio-graph-card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+audio_graph_parse_of\22, \22a\22\09"
module asm "\09.weak\09__crc_audio_graph_parse_of\09\09\09\09"
module asm "\09.long\09__crc_audio_graph_parse_of\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audio_graph_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22audio_graph_parse_of\22\09\09\09\09\09"
module asm "__kstrtabns_audio_graph_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.asoc_simple_priv = type { %struct.snd_soc_card, ptr, %struct.asoc_simple_jack, %struct.asoc_simple_jack, ptr, ptr, ptr, %struct.snd_soc_dai_link_component, ptr, ptr, ptr, ptr, i8 }
%struct.asoc_simple_jack = type { %struct.snd_soc_jack, %struct.snd_soc_jack_pin, %struct.snd_soc_jack_gpio }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.asoc_simple_data = type { i32, i32 }
%struct.link_info = type { i32, i32, [512 x %struct.prop_nums] }
%struct.prop_nums = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.simple_dai_props = type { ptr, ptr, ptr, ptr, ptr, %struct.asoc_simple_data, ptr, ptr, %struct.prop_nums, i32 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.asoc_simple_dai = type { ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pa\00", [29 x i8] zeroinitializer }, align 32
@audio_graph_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get amplifier gpio: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"audio_graph_parse_of\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sound/soc/generic/audio-graph-card.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@audio_graph_parse_of._entry_ptr = internal global ptr @audio_graph_parse_of._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parse error\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_audio_graph_parse_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_audio_graph_parse_of = external dso_local constant [0 x i8], align 1
@__ksymtab_audio_graph_parse_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audio_graph_parse_of to i32), ptr @__kstrtab_audio_graph_parse_of, ptr @__kstrtabns_audio_graph_parse_of }, section "___ksymtab_gpl+audio_graph_parse_of", align 4
@__initcall__kmod_snd_soc_audio_graph_card__242_744_graph_card_init6 = internal global ptr @graph_card_init, section ".initcall6.init", align 4
@graph_card = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @graph_probe, ptr @asoc_simple_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @graph_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_graph_card_exit = internal global ptr @graph_card_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias243 = internal constant [62 x i8] c"snd_soc_audio_graph_card.alias=platform:asoc-audio-graph-card\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [73 x i8] c"snd_soc_audio_graph_card.file=sound/soc/generic/snd-soc-audio-graph-card\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [40 x i8] c"snd_soc_audio_graph_card.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [65 x i8] c"snd_soc_audio_graph_card.description=ASoC Audio Graph Sound Card\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [85 x i8] c"snd_soc_audio_graph_card.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dais\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@graph_dai_link_of.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_soc_audio_graph_card\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"graph_dai_link_of\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"link_of (%pOF)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclk-fs\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@graph_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @asoc_simple_startup, ptr @asoc_simple_shutdown, ptr @asoc_simple_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@graph_dai_link_of_dpcm.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"graph_dai_link_of_dpcm\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_of DPCM (%pOF)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fe.%pOFP.%s\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"be.%pOFP.%s\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prefix\00", [25 x i8] zeroinitializer }, align 32
@graph_count_noml._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"too many links\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"graph_count_noml\00", [47 x i8] zeroinitializer }, align 32
@graph_count_noml._entry_ptr = internal global ptr @graph_count_noml._entry, section ".printk_index", align 4
@graph_count_noml.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Count As Normal\0A\00", [47 x i8] zeroinitializer }, align 32
@graph_count_dpcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.23, ptr @.str.3, i32 631, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"graph_count_dpcm\00", [47 x i8] zeroinitializer }, align 32
@graph_count_dpcm._entry_ptr = internal global ptr @graph_count_dpcm._entry, section ".printk_index", align 4
@graph_count_dpcm.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Count As DPCM\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asoc-audio-graph-card\00", [42 x i8] zeroinitializer }, align 32
@graph_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"audio-graph-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"audio-graph-scu-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Amplifier\00", [22 x i8] zeroinitializer }, align 32
@graph_dapm_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @graph_outdrv_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 556, i32 47 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 559, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 596, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"graph_card\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 735, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 447, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 182, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 377, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 388, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 199, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 81, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant [10 x i8] c"graph_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 52, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 283, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 302, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 337, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 343, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 608, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 618, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 631, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 646, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 737, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"graph_of_match\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 727, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 47, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"graph_dapm_widgets\00", align 1
@___asan_gen_.128 = private constant [40 x i8] c"../sound/soc/generic/audio-graph-card.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 46, i32 41 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_graph_card_exit, ptr @__initcall__kmod_snd_soc_audio_graph_card__242_744_graph_card_init6, ptr @__ksymtab_audio_graph_parse_of, ptr @audio_graph_parse_of._entry, ptr @audio_graph_parse_of._entry_ptr, ptr @graph_card_exit, ptr @graph_count_dpcm._entry, ptr @graph_count_dpcm._entry_ptr, ptr @graph_count_noml._entry, ptr @graph_count_noml._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @graph_card, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @graph_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @graph_of_match, ptr @.str.26, ptr @graph_dapm_widgets], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_graph_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_card to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_count_noml._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_count_dpcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_dapm_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audio_graph_parse_of(ptr noundef %priv, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8200, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %owner, align 4
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 4
  %call.i82 = tail call fastcc i32 @graph_for_each_link(ptr noundef %priv, ptr noundef nonnull %call.i, ptr noundef nonnull @graph_count_noml, ptr noundef nonnull @graph_count_dpcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp = icmp slt i32 %call.i82, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @asoc_simple_init_priv(ptr noundef %priv, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 3) #7
  %pa_gpio = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %pa_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %pa_gpio, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %5) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call i32 @asoc_simple_parse_widgets(ptr noundef %priv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @asoc_simple_parse_routing(ptr noundef %priv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %6 = call ptr @memset(ptr %call.i, i32 0, i32 8200)
  %call27 = tail call fastcc i32 @graph_for_each_link(ptr noundef %priv, ptr noundef nonnull %call.i, ptr noundef nonnull @graph_dai_link_of, ptr noundef nonnull @graph_dai_link_of_dpcm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.err_crit_edge, label %if.end30

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end30:                                         ; preds = %if.end26
  %call31 = tail call i32 @asoc_simple_parse_card_name(ptr noundef %priv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.err_crit_edge, label %if.end34

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end34:                                         ; preds = %if.end30
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 57
  %7 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %priv, ptr %drvdata.i, align 4
  %call35 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.err_crit_edge, label %if.end38

if.end34.err_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  br label %cleanup

err:                                              ; preds = %if.end34.err_crit_edge, %if.end30.err_crit_edge, %if.end26.err_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end26.err_crit_edge ], [ %call31, %if.end30.err_crit_edge ], [ %call35, %if.end34.err_crit_edge ]
  %call39 = tail call i32 @asoc_simple_clean_reference(ptr noundef %priv) #7
  %call40 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %ret.0, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end38, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then15, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then15 ], [ %call40, %err ], [ 0, %if.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i82, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_priv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_widgets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_routing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @graph_for_each_link(ptr noundef %priv, ptr noundef %li, ptr nocapture noundef readonly %func_noml, ptr nocapture noundef readonly %func_dpcm) unnamed_addr #0 align 64 {
entry:
  %it.i = alloca %struct.of_phandle_iterator, align 4
  %adata.i = alloca %struct.asoc_simple_data, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.link_info, ptr %li, i32 0, i32 1
  %dev1.i = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %0 = getelementptr inbounds %struct.asoc_simple_data, ptr %adata.i, i32 0, i32 1
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %cpu, align 4
  %node3.i = getelementptr inbounds %struct.of_phandle_iterator, ptr %it.i, i32 0, i32 8
  %force_dpcm.i.i = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it.i) #7
  %2 = call ptr @memset(ptr %it.i, i32 255, i32 36)
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %adata.i) #7
  %7 = ptrtoint ptr %adata.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %adata.i, align 8, !annotation !87
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %0, align 4, !annotation !87
  %call.i = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it.i, ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0) #7
  %call2.i = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp63.i = icmp eq i32 %call2.i, 0
  br i1 %cmp63.i, label %for.body.for.body.i_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %ret.065.i = phi i32 [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %codec_port_old.064.i = phi ptr [ %codec_port_old.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %for.body.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %node3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node3.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end20.i.while.cond.i_crit_edge, %for.body.i
  %cpu_ep.0.i = phi ptr [ null, %for.body.i ], [ %call4.i, %if.end20.i.while.cond.i_crit_edge ]
  %codec_port_old.1.i = phi ptr [ %codec_port_old.064.i, %for.body.i ], [ %call6.i, %if.end20.i.while.cond.i_crit_edge ]
  %ret.1.i = phi i32 [ %ret.065.i, %for.body.i ], [ %ret.2.i, %if.end20.i.while.cond.i_crit_edge ]
  %call4.i = call ptr @of_get_next_child(ptr noundef %10, ptr noundef %cpu_ep.0.i) #7
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %while.cond.i
  %call5.i = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %call4.i) #7
  %call6.i = call ptr @of_get_parent(ptr noundef %call5.i) #7
  %11 = ptrtoint ptr %adata.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %adata.i, align 8
  call fastcc void @graph_parse_convert(ptr noundef %4, ptr noundef %call5.i, ptr noundef nonnull %adata.i) #7
  call fastcc void @graph_parse_convert(ptr noundef %4, ptr noundef nonnull %call4.i, ptr noundef nonnull %adata.i) #7
  %12 = ptrtoint ptr %force_dpcm.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %force_dpcm.i.i, align 4
  %13 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then8.i_crit_edge

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool4.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.else.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.else.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i = call ptr @of_get_next_child(ptr noundef %call6.i, ptr noundef null) #7
  %cmp.not5.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.not5.i.i.i, label %if.end6.i.i.lor.lhs.false.i.i_crit_edge, label %if.end6.i.i.for.body.i.i.i_crit_edge

if.end6.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.end6.i.i
  br label %for.body.i.i.i

if.end6.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end6.i.i.for.body.i.i.i_crit_edge
  %num.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end6.i.i.for.body.i.i.i_crit_edge ]
  %child.06.i.i.i = phi ptr [ %call1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.end6.i.i.for.body.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %num.07.i.i.i, 1
  %call1.i.i.i = call ptr @of_get_next_child(ptr noundef %call6.i, ptr noundef nonnull %child.06.i.i.i) #7
  %cmp.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.not.i.i.i, label %of_get_child_count.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

of_get_child_count.exit.i.i:                      ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i.i)
  %cmp.i.i = icmp sgt i32 %inc.i.i.i, 1
  br i1 %cmp.i.i, label %of_get_child_count.exit.i.i.if.then8.i_crit_edge, label %of_get_child_count.exit.i.i.lor.lhs.false.i.i_crit_edge

of_get_child_count.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %of_get_child_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

of_get_child_count.exit.i.i.if.then8.i_crit_edge: ; preds = %of_get_child_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

lor.lhs.false.i.i:                                ; preds = %of_get_child_count.exit.i.i.lor.lhs.false.i.i_crit_edge, %if.end6.i.i.lor.lhs.false.i.i_crit_edge
  %14 = ptrtoint ptr %adata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %adata.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool7.not.i.i, label %parse_as_dpcm_link.exit.i, label %lor.lhs.false.i.i.if.then8.i_crit_edge

lor.lhs.false.i.i.if.then8.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

parse_as_dpcm_link.exit.i:                        ; preds = %lor.lhs.false.i.i
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool9.not.i.not.i, label %parse_as_dpcm_link.exit.i.if.else.i_crit_edge, label %parse_as_dpcm_link.exit.i.if.then8.i_crit_edge

parse_as_dpcm_link.exit.i.if.then8.i_crit_edge:   ; preds = %parse_as_dpcm_link.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

parse_as_dpcm_link.exit.i.if.else.i_crit_edge:    ; preds = %parse_as_dpcm_link.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then8.i:                                       ; preds = %parse_as_dpcm_link.exit.i.if.then8.i_crit_edge, %lor.lhs.false.i.i.if.then8.i_crit_edge, %of_get_child_count.exit.i.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not.i = icmp eq i32 %19, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %if.then8.i.if.end20.sink.split.i_crit_edge

if.then8.i.if.end20.sink.split.i_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.then8.i
  %cmp10.not.i = icmp eq ptr %codec_port_old.1.i, %call6.i
  %tobool11.not.i = icmp eq ptr %call5.i, null
  %or.cond.i = or i1 %tobool11.not.i, %cmp10.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end20.i_crit_edge, label %lor.lhs.false.i.if.end20.sink.split.i_crit_edge

lor.lhs.false.i.if.end20.sink.split.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split.i

lor.lhs.false.i.if.end20.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.else.i:                                        ; preds = %parse_as_dpcm_link.exit.i.if.else.i_crit_edge, %if.end.i.i.if.else.i_crit_edge
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not.i = icmp eq i32 %21, 0
  br i1 %tobool16.not.i, label %if.else.i.if.end20.i_crit_edge, label %if.else.i.if.end20.sink.split.i_crit_edge

if.else.i.if.end20.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split.i

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.end20.sink.split.i:                            ; preds = %if.else.i.if.end20.sink.split.i_crit_edge, %lor.lhs.false.i.if.end20.sink.split.i_crit_edge, %if.then8.i.if.end20.sink.split.i_crit_edge
  %func_noml.sink.i = phi ptr [ %func_dpcm, %lor.lhs.false.i.if.end20.sink.split.i_crit_edge ], [ %func_dpcm, %if.then8.i.if.end20.sink.split.i_crit_edge ], [ %func_noml, %if.else.i.if.end20.sink.split.i_crit_edge ]
  %call18.i = call i32 %func_noml.sink.i(ptr noundef %priv, ptr noundef nonnull %call4.i, ptr noundef %call5.i, ptr noundef %li) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %if.else.i.if.end20.i_crit_edge, %lor.lhs.false.i.if.end20.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %lor.lhs.false.i.if.end20.i_crit_edge ], [ %ret.1.i, %if.else.i.if.end20.i_crit_edge ], [ %call18.i, %if.end20.sink.split.i ]
  call void @of_node_put(ptr noundef %call5.i) #7
  call void @of_node_put(ptr noundef %call6.i) #7
  %cmp21.i = icmp slt i32 %ret.2.i, 0
  br i1 %cmp21.i, label %__graph_for_each_link.exit, label %if.end20.i.while.cond.i_crit_edge

if.end20.i.while.cond.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

for.inc.i:                                        ; preds = %while.cond.i
  %call24.i = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it.i) #7
  %cmp.i = icmp eq i32 %call24.i, 0
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc_crit_edge

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

__graph_for_each_link.exit:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %adata.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it.i) #7
  br label %for.end

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %adata.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it.i) #7
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %cpu, align 4
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__graph_for_each_link.exit
  %ret.1 = phi i32 [ %ret.2.i, %__graph_for_each_link.exit ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_dai_link_of(ptr nocapture noundef readonly %priv, ptr noundef %cpu_ep, ptr noundef %codec_ep, ptr nocapture noundef %li) #0 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_single_links) #7
  %13 = ptrtoint ptr %is_single_links to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %is_single_links, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @graph_dai_link_of.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@graph_dai_link_of, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @graph_dai_link_of.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %cpu_ep) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call9 = call fastcc i32 @graph_parse_node(ptr noundef %priv, ptr noundef %cpu_ep, ptr noundef %li, ptr noundef nonnull %is_single_links)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = call fastcc i32 @graph_parse_node(ptr noundef %priv, ptr noundef %codec_ep, ptr noundef %li, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %dai_name16 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %dai_name16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai_name16, align 4
  %dai_name17 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %dai_name17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai_name17, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dai_name, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %15, ptr noundef %17)
  %18 = ptrtoint ptr %is_single_links to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %is_single_links, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %7, i32 noundef %19) #7
  call void @asoc_simple_canonicalize_platform(ptr noundef %11, ptr noundef %7) #7
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  %22 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dai_link3, align 4
  %24 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %li, align 4
  %dai_fmt.i = getelementptr %struct.snd_soc_dai_link, ptr %23, i32 %25, i32 11
  %call.i = call i32 @asoc_simple_parse_daifmt(ptr noundef %21, ptr noundef %cpu_ep, ptr noundef %codec_ep, ptr noundef null, ptr noundef %dai_fmt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %graph_link_init.exit

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

graph_link_init.exit:                             ; preds = %if.end15
  %add.ptr.i = getelementptr %struct.snd_soc_dai_link, ptr %23, i32 %25
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %23, i32 %25, i32 13
  %26 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @asoc_simple_dai_init, ptr %init.i, align 4
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %23, i32 %25, i32 16
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @graph_ops, ptr %ops.i, align 4
  %ops4.i = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 11
  %28 = ptrtoint ptr %ops4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops4.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr @graph_ops, ptr %29
  store ptr %spec.store.select.i, ptr %ops.i, align 4
  %call9.i = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %21, ptr noundef %add.ptr.i, ptr noundef nonnull %dai_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp21 = icmp slt i32 %call9.i, 0
  br i1 %cmp21, label %graph_link_init.exit.cleanup_crit_edge, label %if.end23

graph_link_init.exit.cleanup_crit_edge:           ; preds = %graph_link_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %graph_link_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %li, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %li, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %graph_link_init.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call9, %do.end.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call9.i, %graph_link_init.exit.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_single_links) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dai_name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_dai_link_of_dpcm(ptr nocapture noundef readonly %priv, ptr noundef %cpu_ep, ptr noundef %codec_ep, ptr nocapture noundef %li) #0 align 64 {
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
  %cpu = getelementptr inbounds %struct.link_info, ptr %li, i32 0, i32 1
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %codec_ep.cpu_ep = select i1 %tobool.not, ptr %codec_ep, ptr %cpu_ep
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dai_name) #7
  %12 = call ptr @memset(ptr %dai_name, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @graph_dai_link_of_dpcm.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@graph_dai_link_of_dpcm, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @graph_dai_link_of_dpcm.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %codec_ep.cpu_ep) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end
  %cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 2
  %15 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpus.i, align 4
  %platforms.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 6
  %17 = ptrtoint ptr %platforms.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platforms.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_single_links) #7
  %19 = ptrtoint ptr %is_single_links to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %is_single_links, align 4
  %dynamic = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 18
  %20 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %dynamic, align 4
  %bf.set18 = or i32 %bf.load, 9437184
  store i32 %bf.set18, ptr %dynamic, align 4
  %call19 = call fastcc i32 @graph_parse_node(ptr noundef %priv, ptr noundef %cpu_ep, ptr noundef %li, ptr noundef nonnull %is_single_links)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup70.critedge

if.end22:                                         ; preds = %if.then12
  %of_node23 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %of_node23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node23, align 4
  %dai_name24 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %dai_name24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dai_name24, align 4
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dai_name, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %22, ptr noundef %24)
  %component_chaining = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 56
  %25 = ptrtoint ptr %component_chaining to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load26 = load i8, ptr %component_chaining, align 4
  %26 = and i8 %bf.load26, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not = icmp eq i8 %26, 0
  br i1 %tobool28.not, label %if.end22.if.end34_crit_edge, label %land.lhs.true

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end22
  %call.i = call ptr @snd_soc_find_dai_with_mutex(ptr noundef %16) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true.if.then30_crit_edge, label %land.lhs.true.i

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %component.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_soc_component, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver.i, align 4
  %pcm_construct.i = getelementptr inbounds %struct.snd_soc_component_driver, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %pcm_construct.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcm_construct.i, align 4
  %tobool1.not.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.end34_crit_edge

land.lhs.true.i.if.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %driver2.i = getelementptr inbounds %struct.snd_soc_dai, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %driver2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver2.i, align 4
  %pcm_new.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %pcm_new.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm_new.i, align 4
  %tobool3.not.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then30_crit_edge, label %lor.lhs.false.i.if.end34_crit_edge

lor.lhs.false.i.if.end34_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false.i.if.then30_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.i.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge
  %37 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load31 = load i32, ptr %dynamic, align 4
  %bf.set33 = or i32 %bf.load31, 16777216
  store i32 %bf.set33, ptr %dynamic, align 4
  %be_hw_params_fixup = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 15
  %38 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @asoc_simple_be_hw_params_fixup, ptr %be_hw_params_fixup, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %lor.lhs.false.i.if.end34_crit_edge, %land.lhs.true.i.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  %39 = ptrtoint ptr %is_single_links to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %is_single_links, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %16, i32 noundef %40) #7
  call void @asoc_simple_canonicalize_platform(ptr noundef %18, ptr noundef %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_single_links) #7
  br label %if.end66

if.else:                                          ; preds = %do.end
  %codec_conf = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 6
  %41 = ptrtoint ptr %codec_conf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %codec_conf, align 4
  %codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 4
  %43 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %codecs.i, align 4
  %no_pcm40 = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 18
  %45 = ptrtoint ptr %no_pcm40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load41 = load i32, ptr %no_pcm40, align 4
  %bf.set43 = or i32 %bf.load41, 16777216
  store i32 %bf.set43, ptr %no_pcm40, align 4
  %be_hw_params_fixup44 = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 15
  %46 = ptrtoint ptr %be_hw_params_fixup44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @asoc_simple_be_hw_params_fixup, ptr %be_hw_params_fixup44, align 4
  %call45 = tail call fastcc i32 @graph_parse_node(ptr noundef %priv, ptr noundef %codec_ep, ptr noundef %li, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %if.else.cleanup70_crit_edge, label %if.end47

if.else.cleanup70_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end47:                                         ; preds = %if.else
  %of_node49 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %of_node49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node49, align 4
  %dai_name50 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %44, i32 0, i32 2
  %49 = ptrtoint ptr %dai_name50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dai_name50, align 4
  %call51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dai_name, i32 noundef 64, ptr noundef nonnull @.str.18, ptr noundef %48, ptr noundef %50)
  %call52 = tail call ptr @of_get_parent(ptr noundef %codec_ep.cpu_ep) #7
  %call53 = tail call ptr @of_get_parent(ptr noundef %call52) #7
  %51 = ptrtoint ptr %of_node49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node49, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %9, ptr noundef %42, ptr noundef %52, ptr noundef nonnull @.str.19) #7
  %call55 = tail call zeroext i1 @of_node_name_eq(ptr noundef %call53, ptr noundef nonnull @.str.8) #7
  br i1 %call55, label %if.then56, label %if.end47.if.end58_crit_edge

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %of_node49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node49, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %call53, ptr noundef %42, ptr noundef %54, ptr noundef nonnull @.str.19) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end47.if.end58_crit_edge
  %55 = ptrtoint ptr %of_node49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node49, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %call52, ptr noundef %42, ptr noundef %56, ptr noundef nonnull @.str.19) #7
  tail call void @of_node_put(ptr noundef %call53) #7
  tail call void @of_node_put(ptr noundef %call52) #7
  br label %if.end66

if.end66:                                         ; preds = %if.end58, %if.end34
  %adata = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 5
  call fastcc void @graph_parse_convert(ptr noundef %1, ptr noundef %codec_ep.cpu_ep, ptr noundef %adata)
  call void @snd_soc_dai_link_set_capabilities(ptr noundef %add.ptr) #7
  %57 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1, align 4
  %59 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dai_link3, align 4
  %61 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %li, align 4
  %dai_fmt.i = getelementptr %struct.snd_soc_dai_link, ptr %60, i32 %62, i32 11
  %call.i132 = call i32 @asoc_simple_parse_daifmt(ptr noundef %58, ptr noundef %cpu_ep, ptr noundef %codec_ep, ptr noundef null, ptr noundef %dai_fmt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i = icmp slt i32 %call.i132, 0
  br i1 %cmp.i, label %if.end66.graph_link_init.exit_crit_edge, label %if.end.i134

if.end66.graph_link_init.exit_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %graph_link_init.exit

if.end.i134:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.snd_soc_dai_link, ptr %60, i32 %62
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %60, i32 %62, i32 13
  %63 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @asoc_simple_dai_init, ptr %init.i, align 4
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %60, i32 %62, i32 16
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @graph_ops, ptr %ops.i, align 4
  %ops4.i = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 11
  %65 = ptrtoint ptr %ops4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops4.i, align 4
  %tobool.not.i133 = icmp eq ptr %66, null
  %spec.store.select.i = select i1 %tobool.not.i133, ptr @graph_ops, ptr %66
  store ptr %spec.store.select.i, ptr %ops.i, align 4
  %call9.i = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %58, ptr noundef %add.ptr.i, ptr noundef nonnull %dai_name) #7
  br label %graph_link_init.exit

graph_link_init.exit:                             ; preds = %if.end.i134, %if.end66.graph_link_init.exit_crit_edge
  %retval.0.i135 = phi i32 [ %call9.i, %if.end.i134 ], [ %call.i132, %if.end66.graph_link_init.exit_crit_edge ]
  %67 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %li, align 4
  %inc = add i32 %68, 1
  store i32 %inc, ptr %li, align 4
  br label %cleanup70

cleanup70.critedge:                               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_single_links) #7
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup70.critedge, %graph_link_init.exit, %if.else.cleanup70_crit_edge
  %retval.2 = phi i32 [ %retval.0.i135, %graph_link_init.exit ], [ %call19, %cleanup70.critedge ], [ %call45, %if.else.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dai_name) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_clean_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_card_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @graph_card, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @graph_card_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @graph_card) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @graph_parse_convert(ptr nocapture noundef readonly %dev, ptr noundef %ep, ptr noundef %adata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_parent(ptr noundef %ep) #7
  %call1 = tail call ptr @of_get_parent(ptr noundef %call) #7
  %call2 = tail call ptr @of_graph_get_port_parent(ptr noundef %ep) #7
  tail call void @asoc_simple_parse_convert(ptr noundef %1, ptr noundef null, ptr noundef %adata) #7
  %call3 = tail call zeroext i1 @of_node_name_eq(ptr noundef %call1, ptr noundef nonnull @.str.8) #7
  br i1 %call3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @asoc_simple_parse_convert(ptr noundef %call1, ptr noundef null, ptr noundef %adata) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @asoc_simple_parse_convert(ptr noundef %call, ptr noundef null, ptr noundef %adata) #7
  tail call void @asoc_simple_parse_convert(ptr noundef %ep, ptr noundef null, ptr noundef %adata) #7
  tail call void @of_node_put(ptr noundef %call) #7
  tail call void @of_node_put(ptr noundef %call1) #7
  tail call void @of_node_put(ptr noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_parse_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @graph_parse_node(ptr nocapture noundef readonly %priv, ptr noundef %ep, ptr nocapture noundef readonly %li, ptr noundef writeonly %cpu) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.of_endpoint, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
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
  %call.i = tail call ptr @of_get_parent(ptr noundef %ep) #7
  %call1.i = tail call ptr @of_get_parent(ptr noundef %call.i) #7
  %mclk_fs.i = getelementptr %struct.simple_dai_props, ptr %9, i32 %7, i32 9
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #7
  %call3.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %call1.i, ptr noundef nonnull @.str.8) #7
  br i1 %call3.i, label %if.then.i, label %entry.graph_parse_mclk_fs.exit_crit_edge

entry.graph_parse_mclk_fs.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %graph_parse_mclk_fs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i18.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %call1.i, ptr noundef nonnull @.str.13, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #7
  br label %graph_parse_mclk_fs.exit

graph_parse_mclk_fs.exit:                         ; preds = %if.then.i, %entry.graph_parse_mclk_fs.exit_crit_edge
  %call.i.i19.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %call.i, ptr noundef nonnull @.str.13, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #7
  %call.i.i20.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %ep, ptr noundef nonnull @.str.13, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef %call.i) #7
  tail call void @of_node_put(ptr noundef %call1.i) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %12 = getelementptr inbounds i8, ptr %args.i, i32 12
  %13 = call ptr @memset(ptr %12, i32 255, i32 60)
  %tobool.not.i = icmp eq ptr %ep, null
  br i1 %tobool.not.i, label %graph_parse_mclk_fs.exit.if.end12_crit_edge, label %if.end.i

graph_parse_mclk_fs.exit.if.end12_crit_edge:      ; preds = %graph_parse_mclk_fs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.i:                                         ; preds = %graph_parse_mclk_fs.exit
  %call.i48 = tail call ptr @of_graph_get_port_parent(ptr noundef nonnull %ep) #7
  %14 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i48, ptr %args.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i.i) #7
  %15 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %info.i.i, align 4, !annotation !87
  %16 = getelementptr inbounds %struct.of_endpoint, ptr %info.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !87
  %18 = getelementptr inbounds %struct.of_endpoint, ptr %info.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %18, align 4, !annotation !87
  %call.i.i = tail call i32 @snd_soc_get_dai_id(ptr noundef nonnull %ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, -524
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.graph_get_dai_id.exit.i_crit_edge

if.end.i.graph_get_dai_id.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %graph_get_dai_id.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep, ptr noundef nonnull %info.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.if.end13.i.i_crit_edge

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call ptr @of_get_property(ptr noundef nonnull %ep, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  br label %graph_get_dai_id.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = call ptr @of_get_parent(ptr noundef nonnull %ep) #7
  %call9.i.i = call ptr @of_get_property(ptr noundef %call8.i.i, ptr noundef nonnull @.str.14, ptr noundef null) #7
  call void @of_node_put(ptr noundef %call8.i.i) #7
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.end7.i.i.if.end13.i.i_crit_edge, label %if.then11.i.i

if.end7.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %info.i.i, align 4
  br label %graph_get_dai_id.exit.i

if.end13.i.i:                                     ; preds = %if.end7.i.i.if.end13.i.i_crit_edge, %if.end.i.i.if.end13.i.i_crit_edge
  %call14.i.i = call ptr @of_graph_get_port_parent(ptr noundef nonnull %ep) #7
  %call15.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef %call14.i.i, ptr noundef null) #7
  %cmp16.not45.i.i = icmp eq ptr %call15.i.i, null
  br i1 %cmp16.not45.i.i, label %for.end.thread.i.i, label %if.end13.i.i.for.body.i.i_crit_edge

if.end13.i.i.for.body.i.i_crit_edge:              ; preds = %if.end13.i.i
  br label %for.body.i.i

for.end.thread.i.i:                               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef %call14.i.i) #7
  br label %24

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end13.i.i.for.body.i.i_crit_edge
  %id.048.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %if.end13.i.i.for.body.i.i_crit_edge ]
  %i.047.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body.i.i_crit_edge ]
  %endpoint.046.i.i = phi ptr [ %call20.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call15.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %cmp17.i.i = icmp eq ptr %endpoint.046.i.i, %ep
  %spec.select.i.i = select i1 %cmp17.i.i, i32 %i.047.i.i, i32 %id.048.i.i
  %inc.i.i = add i32 %i.047.i.i, 1
  %call20.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef %call14.i.i, ptr noundef nonnull %endpoint.046.i.i) #7
  %cmp16.not.i.i = icmp eq ptr %call20.i.i, null
  br i1 %cmp16.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @of_node_put(ptr noundef %call14.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp21.i.i = icmp slt i32 %spec.select.i.i, 0
  br i1 %cmp21.i.i, label %for.end.i.i._crit_edge, label %for.end.i.i.graph_get_dai_id.exit.i_crit_edge

for.end.i.i.graph_get_dai_id.exit.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %graph_get_dai_id.exit.i

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %24

24:                                               ; preds = %for.end.i.i._crit_edge, %for.end.thread.i.i
  br label %graph_get_dai_id.exit.i

graph_get_dai_id.exit.i:                          ; preds = %24, %for.end.i.i.graph_get_dai_id.exit.i_crit_edge, %if.then11.i.i, %if.then5.i.i, %if.end.i.graph_get_dai_id.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %21, %if.then5.i.i ], [ %23, %if.then11.i.i ], [ %call.i.i, %if.end.i.graph_get_dai_id.exit.i_crit_edge ], [ -19, %24 ], [ %spec.select.i.i, %for.end.i.i.graph_get_dai_id.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i.i) #7
  %args2.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %25 = ptrtoint ptr %args2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i, ptr %args2.i, align 4
  %call3.i49 = call i32 @of_graph_get_endpoint_count(ptr noundef %call.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i49)
  %cmp.i = icmp sgt i32 %call3.i49, 1
  %conv.i = zext i1 %cmp.i to i32
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %26 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %args_count.i, align 4
  %dai_name.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %dlc.0, i32 0, i32 2
  %call4.i = call i32 @snd_soc_get_dai_name(ptr noundef nonnull %args.i, ptr noundef %dai_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %asoc_simple_parse_dai.exit, label %if.end8.i

if.end8.i:                                        ; preds = %graph_get_dai_id.exit.i
  %of_node.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %dlc.0, i32 0, i32 1
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i48, ptr %of_node.i, align 4
  br i1 %tobool.not, label %if.end8.i.if.end12_crit_edge, label %if.then10.i

if.end8.i.if.end12_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 @of_graph_get_endpoint_count(ptr noundef %call.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 1
  %conv13.i = zext i1 %cmp12.i to i32
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv13.i, ptr %cpu, align 4
  br label %if.end12

asoc_simple_parse_dai.exit:                       ; preds = %graph_get_dai_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then10.i, %if.end8.i.if.end12_crit_edge, %graph_parse_mclk_fs.exit.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tx_slot_mask = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 5
  %rx_slot_mask = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 6
  %slots = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 3
  %slot_width = getelementptr inbounds %struct.asoc_simple_dai, ptr %dai.0, i32 0, i32 4
  %call13 = call i32 @snd_soc_of_parse_tdm_slot(ptr noundef %ep, ptr noundef %tx_slot_mask, ptr noundef %rx_slot_mask, ptr noundef %slots, ptr noundef %slot_width) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 @asoc_simple_parse_clk(ptr noundef %1, ptr noundef %ep, ptr noundef %dai.0, ptr noundef %dlc.0) #7
  %29 = call i32 @llvm.smin.i32(i32 %call17, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %asoc_simple_parse_dai.exit
  %retval.0 = phi i32 [ %call4.i, %asoc_simple_parse_dai.exit ], [ %call13, %if.end12.cleanup_crit_edge ], [ %29, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_platform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_tdm_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_daifmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_dai_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_set_dailink_name(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_startup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_shutdown(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_hw_params(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_be_hw_params_fixup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_parse_node_prefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_find_dai_with_mutex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_count_noml(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %cpu_ep, ptr nocapture noundef readnone %codec_ep, ptr nocapture noundef %li) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %li, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %3)
  %cmp = icmp sgt i32 %3, 511
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx, align 4
  %codecs = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3, i32 1
  %5 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %codecs, align 4
  %platforms = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3, i32 2
  %6 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %platforms, align 4
  %7 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %li, align 4
  %add = add i32 %8, 1
  store i32 %add, ptr %li, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @graph_count_noml.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@graph_count_noml, %if.then13)) #7
          to label %cleanup [label %if.then13], !srcloc !88

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @graph_count_noml.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then13 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_count_dpcm(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %cpu_ep, ptr nocapture noundef readnone %codec_ep, ptr nocapture noundef %li) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %li, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %3)
  %cmp = icmp sgt i32 %3, 511
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #10
  br label %cleanup

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
  %arrayidx = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx, align 4
  %platforms = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3, i32 2
  br label %do.body14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %codecs = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3, i32 1
  br label %do.body14

do.body14:                                        ; preds = %if.else, %if.then2
  %platforms.sink = phi ptr [ %platforms, %if.then2 ], [ %codecs, %if.else ]
  %7 = ptrtoint ptr %platforms.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %platforms.sink, align 4
  %8 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %8)
  %storemerge.in = load i32, ptr %li, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %li, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @graph_count_dpcm.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@graph_count_dpcm, %if.then18)) #7
          to label %cleanup [label %if.then18], !srcloc !88

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @graph_count_dpcm.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then18 ], [ 0, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1496, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 35
  %0 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @graph_dapm_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 36
  %1 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_dapm_widgets, align 4
  %probe = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @asoc_graph_card_probe, ptr %probe, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dpcm_selectable = getelementptr inbounds %struct.asoc_simple_priv, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %dpcm_selectable to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %dpcm_selectable, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dpcm_selectable, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @audio_graph_parse_of(ptr noundef nonnull %call.i, ptr noundef %dev1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_graph_card_probe(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_outdrv_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm1 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %card = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink6 = phi i32 [ 0, %sw.bb2 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %pa_gpio = getelementptr inbounds %struct.asoc_simple_priv, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %pa_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pa_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef %.sink6) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/generic/audio-graph-card.c", i32 556, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/generic/audio-graph-card.c", i32 559, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @audio_graph_parse_of._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @audio_graph_parse_of._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/generic/audio-graph-card.c", i32 596, i32 33}
!12 = !{ptr @__ksymtab_audio_graph_parse_of, !13, !"__ksymtab_audio_graph_parse_of", i1 false, i1 false}
!13 = !{!"../sound/soc/generic/audio-graph-card.c", i32 598, i32 1}
!14 = !{ptr @__initcall__kmod_snd_soc_audio_graph_card__242_744_graph_card_init6, !15, !"__initcall__kmod_snd_soc_audio_graph_card__242_744_graph_card_init6", i1 false, i1 false}
!15 = !{!"../sound/soc/generic/audio-graph-card.c", i32 744, i32 1}
!16 = !{ptr @__exitcall_graph_card_exit, !15, !"__exitcall_graph_card_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias243, !18, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!18 = !{!"../sound/soc/generic/audio-graph-card.c", i32 746, i32 1}
!19 = !{ptr @__UNIQUE_ID_file244, !20, !"__UNIQUE_ID_file244", i1 false, i1 false}
!20 = !{!"../sound/soc/generic/audio-graph-card.c", i32 747, i32 1}
!21 = !{ptr @__UNIQUE_ID_license245, !20, !"__UNIQUE_ID_license245", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_description246, !23, !"__UNIQUE_ID_description246", i1 false, i1 false}
!23 = !{!"../sound/soc/generic/audio-graph-card.c", i32 748, i32 1}
!24 = !{ptr @__UNIQUE_ID_author247, !25, !"__UNIQUE_ID_author247", i1 false, i1 false}
!25 = !{!"../sound/soc/generic/audio-graph-card.c", i32 749, i32 1}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/generic/audio-graph-card.c", i32 447, i32 2}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/generic/audio-graph-card.c", i32 182, i32 29}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/generic/audio-graph-card.c", i32 377, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @graph_dai_link_of.__UNIQUE_ID_ddebug239, !31, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/generic/audio-graph-card.c", i32 388, i32 4}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/generic/audio-graph-card.c", i32 199, i32 28}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/generic/audio-graph-card.c", i32 81, i32 29}
!41 = !{ptr @graph_ops, !42, !"graph_ops", i1 false, i1 false}
!42 = !{!"../sound/soc/generic/audio-graph-card.c", i32 52, i32 33}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/generic/audio-graph-card.c", i32 283, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @graph_dai_link_of_dpcm.__UNIQUE_ID_ddebug238, !44, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/generic/audio-graph-card.c", i32 302, i32 5}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/generic/audio-graph-card.c", i32 337, i32 5}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/generic/audio-graph-card.c", i32 343, i32 12}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/generic/audio-graph-card.c", i32 608, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @graph_count_noml._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @graph_count_noml._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/generic/audio-graph-card.c", i32 618, i32 2}
!60 = !{ptr @graph_count_noml.__UNIQUE_ID_ddebug240, !59, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/generic/audio-graph-card.c", i32 631, i32 3}
!63 = !{ptr @graph_count_dpcm._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @graph_count_dpcm._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/generic/audio-graph-card.c", i32 646, i32 2}
!67 = !{ptr @graph_count_dpcm.__UNIQUE_ID_ddebug241, !66, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/generic/audio-graph-card.c", i32 737, i32 11}
!70 = !{ptr @graph_card, !71, !"graph_card", i1 false, i1 false}
!71 = !{!"../sound/soc/generic/audio-graph-card.c", i32 735, i32 31}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/generic/audio-graph-card.c", i32 47, i32 2}
!74 = !{ptr @graph_dapm_widgets, !75, !"graph_dapm_widgets", i1 false, i1 false}
!75 = !{!"../sound/soc/generic/audio-graph-card.c", i32 46, i32 41}
!76 = !{ptr @graph_of_match, !77, !"graph_of_match", i1 false, i1 false}
!77 = !{!"../sound/soc/generic/audio-graph-card.c", i32 727, i32 34}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{i64 2148739124, i64 2148739129, i64 2148739142, i64 2148739186, i64 2148739220, i64 2148739241}
