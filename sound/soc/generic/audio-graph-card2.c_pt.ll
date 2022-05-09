; ModuleID = '/llk/IR_all_yes/sound/soc/generic/audio-graph-card2.c_pt.bc'
source_filename = "../sound/soc/generic/audio-graph-card2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+audio_graph2_link_normal\22, \22a\22\09"
module asm "\09.weak\09__crc_audio_graph2_link_normal\09\09\09\09"
module asm "\09.long\09__crc_audio_graph2_link_normal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audio_graph2_link_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22audio_graph2_link_normal\22\09\09\09\09\09"
module asm "__kstrtabns_audio_graph2_link_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+audio_graph2_link_dpcm\22, \22a\22\09"
module asm "\09.weak\09__crc_audio_graph2_link_dpcm\09\09\09\09"
module asm "\09.long\09__crc_audio_graph2_link_dpcm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audio_graph2_link_dpcm:\09\09\09\09\09"
module asm "\09.asciz \09\22audio_graph2_link_dpcm\22\09\09\09\09\09"
module asm "__kstrtabns_audio_graph2_link_dpcm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+audio_graph2_link_c2c\22, \22a\22\09"
module asm "\09.weak\09__crc_audio_graph2_link_c2c\09\09\09\09"
module asm "\09.long\09__crc_audio_graph2_link_c2c\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audio_graph2_link_c2c:\09\09\09\09\09"
module asm "\09.asciz \09\22audio_graph2_link_c2c\22\09\09\09\09\09"
module asm "__kstrtabns_audio_graph2_link_c2c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+audio_graph2_parse_of\22, \22a\22\09"
module asm "\09.weak\09__crc_audio_graph2_parse_of\09\09\09\09"
module asm "\09.long\09__crc_audio_graph2_parse_of\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audio_graph2_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22audio_graph2_parse_of\22\09\09\09\09\09"
module asm "__kstrtabns_audio_graph2_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
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
%struct.simple_dai_props = type { ptr, ptr, ptr, ptr, ptr, %struct.asoc_simple_data, ptr, ptr, %struct.prop_nums, i32 }
%struct.asoc_simple_data = type { i32, i32 }
%struct.prop_nums = type { i32, i32, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.graph2_custom_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
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
%struct.of_endpoint = type { i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.asoc_simple_dai = type { ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.link_info = type { i32, i32, [512 x %struct.prop_nums] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"endpoint\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_audio_graph2_link_normal = external dso_local constant [0 x i8], align 1
@__kstrtabns_audio_graph2_link_normal = external dso_local constant [0 x i8], align 1
@__ksymtab_audio_graph2_link_normal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audio_graph2_link_normal to i32), ptr @__kstrtab_audio_graph2_link_normal, ptr @__kstrtabns_audio_graph2_link_normal }, section "___ksymtab_gpl+audio_graph2_link_normal", align 4
@__kstrtab_audio_graph2_link_dpcm = external dso_local constant [0 x i8], align 1
@__kstrtabns_audio_graph2_link_dpcm = external dso_local constant [0 x i8], align 1
@__ksymtab_audio_graph2_link_dpcm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audio_graph2_link_dpcm to i32), ptr @__kstrtab_audio_graph2_link_dpcm, ptr @__kstrtabns_audio_graph2_link_dpcm }, section "___ksymtab_gpl+audio_graph2_link_dpcm", align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@audio_graph2_link_c2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 882, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Codec2Codec needs rate settings\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"audio_graph2_link_c2c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/soc/generic/audio-graph-card2.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@audio_graph2_link_c2c._entry_ptr = internal global ptr @audio_graph2_link_c2c._entry, section ".printk_index", align 4
@__kstrtab_audio_graph2_link_c2c = external dso_local constant [0 x i8], align 1
@__kstrtabns_audio_graph2_link_c2c = external dso_local constant [0 x i8], align 1
@__ksymtab_audio_graph2_link_c2c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audio_graph2_link_c2c to i32), ptr @__kstrtab_audio_graph2_link_c2c, ptr @__kstrtabns_audio_graph2_link_c2c }, section "___ksymtab_gpl+audio_graph2_link_c2c", align 4
@audio_graph2_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 1177, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Audio Graph Card2 is still under Experimental stage\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"audio_graph2_parse_of\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@audio_graph2_parse_of._entry_ptr = internal global ptr @audio_graph2_parse_of._entry, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pa\00", [29 x i8] zeroinitializer }, align 32
@audio_graph2_parse_of._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.4, i32 1206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get amplifier gpio: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@audio_graph2_parse_of._entry_ptr.13 = internal global ptr @audio_graph2_parse_of._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parse error\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_audio_graph2_parse_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_audio_graph2_parse_of = external dso_local constant [0 x i8], align 1
@__ksymtab_audio_graph2_parse_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audio_graph2_parse_of to i32), ptr @__kstrtab_audio_graph2_parse_of, ptr @__kstrtabns_audio_graph2_parse_of }, section "___ksymtab_gpl+audio_graph2_parse_of", align 4
@__initcall__kmod_snd_soc_audio_graph_card2__238_1276_graph_card_init6 = internal global ptr @graph_card_init, section ".initcall6.init", align 4
@graph_card = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @graph_probe, ptr @asoc_simple_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.36, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @graph_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_graph_card_exit = internal global ptr @graph_card_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias239 = internal constant [64 x i8] c"snd_soc_audio_graph_card2.alias=platform:asoc-audio-graph-card2\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [75 x i8] c"snd_soc_audio_graph_card2.file=sound/soc/generic/snd-soc-audio-graph-card2\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [41 x i8] c"snd_soc_audio_graph_card2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [61 x i8] c"snd_soc_audio_graph_card2.description=ASoC Audio Graph Card2\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [86 x i8] c"snd_soc_audio_graph_card2.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"multi\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpcm\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec2codec\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_multi\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%s-%s%s\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fe.%pOFP.%s%s\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"be.%pOFP.%s%s\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c2c.%s%s-%s%s\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prefix\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclk-fs\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@graph_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @asoc_simple_startup, ptr @asoc_simple_shutdown, ptr @asoc_simple_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"links\00", [26 x i8] zeroinitializer }, align 32
@graph_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 1108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"too many links\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"graph_count\00", [20 x i8] zeroinitializer }, align 32
@graph_count._entry_ptr = internal global ptr @graph_count._entry, section ".printk_index", align 4
@graph_count._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 1127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"non supported gtype (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@graph_count._entry_ptr.34 = internal global ptr @graph_count._entry.32, section ".printk_index", align 4
@graph_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.4, i32 964, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"graph_link\00", [21 x i8] zeroinitializer }, align 32
@graph_link._entry_ptr = internal global ptr @graph_link._entry, section ".printk_index", align 4
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"asoc-audio-graph-card2\00", [41 x i8] zeroinitializer }, align 32
@graph_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"audio-graph-card2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@switch.table.graph_count = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @graph_count_normal, ptr @graph_count_dpcm, ptr @graph_count_c2c], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 724, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 879, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 882, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1177, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1203, i32 47 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1206, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1242, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"graph_card\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1267, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 243, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 246, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 249, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 252, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 322, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 516, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 520, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 528, i32 49 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 534, i32 49 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 537, i32 49 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 543, i32 49 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 563, i32 65 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 467, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 364, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"graph_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 335, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1157, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1108, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1127, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 964, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1269, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"graph_of_match\00", align 1
@___asan_gen_.162 = private constant [41 x i8] c"../sound/soc/generic/audio-graph-card2.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1261, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"switch.table.graph_count\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_graph_card_exit, ptr @__initcall__kmod_snd_soc_audio_graph_card2__238_1276_graph_card_init6, ptr @__ksymtab_audio_graph2_link_c2c, ptr @__ksymtab_audio_graph2_link_dpcm, ptr @__ksymtab_audio_graph2_link_normal, ptr @__ksymtab_audio_graph2_parse_of, ptr @audio_graph2_link_c2c._entry, ptr @audio_graph2_link_c2c._entry_ptr, ptr @audio_graph2_parse_of._entry, ptr @audio_graph2_parse_of._entry.11, ptr @audio_graph2_parse_of._entry_ptr, ptr @audio_graph2_parse_of._entry_ptr.13, ptr @graph_card_exit, ptr @graph_count._entry, ptr @graph_count._entry.32, ptr @graph_count._entry_ptr, ptr @graph_count._entry_ptr.34, ptr @graph_link._entry, ptr @graph_link._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @graph_card, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @graph_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @graph_of_match, ptr @switch.table.graph_count], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_graph2_link_c2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_graph2_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_graph2_parse_of._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_card to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_count._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @graph_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.graph_count to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audio_graph2_link_normal(ptr nocapture noundef readonly %priv, ptr noundef %lnk, ptr nocapture noundef readonly %li) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_child_by_name(ptr noundef %lnk, ptr noundef nonnull @.str) #5
  %call1 = tail call ptr @of_graph_get_remote_port(ptr noundef %call) #5
  %call2 = tail call fastcc i32 @graph_parse_node(ptr noundef %priv, i32 noundef 0, ptr noundef %call1, ptr noundef %li, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @graph_parse_node(ptr noundef %priv, i32 noundef 0, ptr noundef %lnk, ptr noundef %li, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @graph_link_init(ptr noundef %priv, ptr noundef %lnk, ptr noundef %li, i32 noundef 1)
  br label %err

err:                                              ; preds = %if.end6, %if.end.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.err_crit_edge ], [ %call3, %if.end.err_crit_edge ], [ 0, %if.end6 ]
  tail call void @of_node_put(ptr noundef %call1) #5
  tail call void @of_node_put(ptr noundef %call) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @graph_parse_node(ptr nocapture noundef readonly %priv, i32 noundef %gtype, ptr noundef %port, ptr nocapture noundef readonly %li, i32 noundef %is_cpu) unnamed_addr #0 align 64 {
entry:
  %port.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %port, ptr %port.addr, align 4
  %call.i.i = tail call ptr @of_get_parent(ptr noundef %port) #5
  %call1.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %call.i.i, ptr noundef nonnull @.str.15) #5
  br i1 %call1.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = tail call ptr @of_get_parent(ptr noundef %call.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %np.0.i.i = phi ptr [ %call2.i.i, %if.then.i.i ], [ %call.i.i, %entry.if.end.i.i_crit_edge ]
  %call3.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.16) #5
  br i1 %call3.i.i, label %if.then, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.17) #5
  br i1 %call6.i.i, label %if.end5.i.i.if.else_crit_edge, label %if.end8.i.i

if.end5.i.i.if.else_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end8.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.18) #5
  br label %if.else

if.then:                                          ; preds = %if.end.i.i
  %call1 = tail call ptr @of_node_get(ptr noundef %port) #5
  %call223 = call fastcc ptr @graph_get_next_multi_ep(ptr noundef nonnull %port.addr)
  %tobool3.not24 = icmp eq ptr %call223, null
  br i1 %tobool3.not24, label %if.then.if.end10_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.cond:                                         ; preds = %if.end
  %inc = add i32 %idx.025, 1
  %call2 = call fastcc ptr @graph_get_next_multi_ep(ptr noundef nonnull %port.addr)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %for.cond.if.end10_crit_edge, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.if.end10_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end:                                           ; preds = %for.cond.if.end_crit_edge, %if.then.if.end_crit_edge
  %call226 = phi ptr [ %call2, %for.cond.if.end_crit_edge ], [ %call223, %if.then.if.end_crit_edge ]
  %idx.025 = phi i32 [ %inc, %for.cond.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %call5 = tail call fastcc i32 @__graph_parse_node(ptr noundef %priv, i32 noundef %gtype, ptr noundef nonnull %call226, ptr noundef %li, i32 noundef %is_cpu, i32 noundef %idx.025)
  tail call void @of_node_put(ptr noundef nonnull %call226) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.if.end10_crit_edge, label %for.cond

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else:                                          ; preds = %if.end8.i.i, %if.end5.i.i.if.else_crit_edge
  %call8 = tail call ptr @of_get_child_by_name(ptr noundef %port, ptr noundef nonnull @.str) #5
  %call9 = tail call fastcc i32 @__graph_parse_node(ptr noundef %priv, i32 noundef %gtype, ptr noundef %call8, ptr noundef %li, i32 noundef %is_cpu, i32 noundef 0)
  tail call void @of_node_put(ptr noundef %call8) #5
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end.if.end10_crit_edge, %for.cond.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %ret.2 = phi i32 [ %call9, %if.else ], [ 0, %if.then.if.end10_crit_edge ], [ %call5, %if.end.if.end10_crit_edge ], [ 0, %for.cond.if.end10_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @graph_link_init(ptr nocapture noundef readonly %priv, ptr noundef %port, ptr nocapture noundef readonly %li, i32 noundef %is_cpu_node) unnamed_addr #0 align 64 {
entry:
  %port.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %port, ptr %port.addr, align 4
  %dai_link1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 24
  %1 = ptrtoint ptr %dai_link1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dai_link1, align 4
  %3 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %li, align 4
  %call.i.i = tail call ptr @of_get_parent(ptr noundef %port) #5
  %call1.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %call.i.i, ptr noundef nonnull @.str.15) #5
  br i1 %call1.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = tail call ptr @of_get_parent(ptr noundef %call.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %np.0.i.i = phi ptr [ %call2.i.i, %if.then.i.i ], [ %call.i.i, %entry.if.end.i.i_crit_edge ]
  %call3.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.16) #5
  br i1 %call3.i.i, label %if.then, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.17) #5
  br i1 %call6.i.i, label %if.end5.i.i.if.else_crit_edge, label %if.end8.i.i

if.end5.i.i.if.else_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end8.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.18) #5
  br label %if.else

if.then:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call ptr @of_node_get(ptr noundef %port) #5
  %call3 = call fastcc ptr @graph_get_next_multi_ep(ptr noundef nonnull %port.addr)
  %call4 = tail call ptr @of_get_parent(ptr noundef %call3) #5
  %5 = ptrtoint ptr %port.addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %port.addr, align 4
  br label %land.lhs.true.i

if.else:                                          ; preds = %if.end8.i.i, %if.end5.i.i.if.else_crit_edge
  %call5 = tail call ptr @of_get_child_by_name(ptr noundef %port, ptr noundef nonnull @.str) #5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else, %if.then
  %ep.0 = phi ptr [ %call3, %if.then ], [ %call5, %if.else ]
  %6 = ptrtoint ptr %port.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.addr, align 4
  %call6 = tail call ptr @of_get_parent(ptr noundef %7) #5
  %call.i = tail call i32 @snd_soc_daifmt_parse_clock_provider_raw(ptr noundef %ep.0, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %call1.i = tail call i32 @snd_soc_daifmt_parse_format(ptr noundef %ep.0, ptr noundef null) #5
  %and9.i = and i32 %call1.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %and18.i103 = select i1 %tobool10.not.i, i32 3855, i32 4095
  %or22.i = and i32 %and18.i103, %call1.i
  %call.i29 = tail call i32 @snd_soc_daifmt_parse_clock_provider_raw(ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %or.i30 = or i32 %call.i29, %call.i
  %call1.i31 = tail call i32 @snd_soc_daifmt_parse_format(ptr noundef %7, ptr noundef null) #5
  %and.i32 = and i32 %call1.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i33 = icmp eq i32 %and.i32, 0
  %and2.i34 = and i32 %call1.i31, 15
  %or5.i37 = select i1 %tobool.not.i33, i32 %and2.i34, i32 0
  %daifmt.3 = or i32 %or22.i, %or5.i37
  %and6.i39 = and i32 %or22.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i39)
  %tobool7.not.i40 = icmp eq i32 %and6.i39, 0
  %and9.i42 = and i32 %call1.i31, 240
  %or13.i45 = select i1 %tobool7.not.i40, i32 %and9.i42, i32 0
  %daifmt.4 = or i32 %or13.i45, %daifmt.3
  %and15.i47 = and i32 %call1.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i47)
  %tobool16.not.i48 = icmp eq i32 %and15.i47, 0
  %and18.i50 = and i32 %call1.i31, 3840
  %or22.i53 = select i1 %tobool16.not.i48, i32 %and18.i50, i32 0
  %daifmt.5 = or i32 %daifmt.4, %or22.i53
  %call7 = tail call zeroext i1 @of_node_name_eq(ptr noundef %call6, ptr noundef nonnull @.str.15) #5
  br i1 %call7, label %if.then8, label %land.lhs.true.i.if.end9_crit_edge

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true.i
  %call.i56 = tail call i32 @snd_soc_daifmt_parse_clock_provider_raw(ptr noundef %call6, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %or.i57 = or i32 %call.i56, %or.i30
  %call1.i58 = tail call i32 @snd_soc_daifmt_parse_format(ptr noundef %call6, ptr noundef null) #5
  %and.i59 = and i32 %daifmt.3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  %and2.i61 = and i32 %call1.i58, 15
  %or5.i64 = select i1 %tobool.not.i60, i32 %and2.i61, i32 0
  %daifmt.6 = or i32 %or5.i64, %daifmt.5
  %and6.i66 = and i32 %daifmt.4, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i66)
  %tobool7.not.i67 = icmp eq i32 %and6.i66, 0
  %and9.i69 = and i32 %call1.i58, 240
  %or13.i72 = select i1 %tobool7.not.i67, i32 %and9.i69, i32 0
  %daifmt.7 = or i32 %daifmt.6, %or13.i72
  %and15.i74 = and i32 %daifmt.5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i74)
  %tobool16.not.i75 = icmp eq i32 %and15.i74, 0
  br i1 %tobool16.not.i75, label %land.lhs.true17.i79, label %if.then8.if.end9_crit_edge

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true17.i79:                              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %and18.i77 = and i32 %call1.i58, 3840
  %or22.i80 = or i32 %daifmt.7, %and18.i77
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true17.i79, %if.then8.if.end9_crit_edge, %land.lhs.true.i.if.end9_crit_edge
  %daifmt.9 = phi i32 [ %daifmt.5, %land.lhs.true.i.if.end9_crit_edge ], [ %daifmt.7, %if.then8.if.end9_crit_edge ], [ %or22.i80, %land.lhs.true17.i79 ]
  %bit_frame.0 = phi i32 [ %or.i30, %land.lhs.true.i.if.end9_crit_edge ], [ %or.i57, %if.then8.if.end9_crit_edge ], [ %or.i57, %land.lhs.true17.i79 ]
  %call10 = tail call i32 @snd_soc_daifmt_clock_provider_from_bitmap(i32 noundef %bit_frame.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_cpu_node)
  %tobool11.not = icmp eq i32 %is_cpu_node, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @snd_soc_daifmt_clock_provider_fliped(i32 noundef %call10) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %daiclk.0 = phi i32 [ %call13, %if.then12 ], [ %call10, %if.end9.if.end14_crit_edge ]
  %or = or i32 %daiclk.0, %daifmt.9
  %dai_fmt = getelementptr %struct.snd_soc_dai_link, ptr %2, i32 %4, i32 11
  %8 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %dai_fmt, align 4
  %init = getelementptr %struct.snd_soc_dai_link, ptr %2, i32 %4, i32 13
  %9 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @asoc_simple_dai_init, ptr %init, align 4
  %ops = getelementptr %struct.snd_soc_dai_link, ptr %2, i32 %4, i32 16
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @graph_ops, ptr %ops, align 4
  %ops15 = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 11
  %11 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops15, align 4
  %tobool16.not = icmp eq ptr %12, null
  %spec.store.select = select i1 %tobool16.not, ptr @graph_ops, ptr %12
  store ptr %spec.store.select, ptr %ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audio_graph2_link_dpcm(ptr nocapture noundef readonly %priv, ptr noundef %lnk, ptr nocapture noundef readonly %li) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_child_by_name(ptr noundef %lnk, ptr noundef nonnull @.str) #5
  %call1 = tail call ptr @of_graph_get_remote_endpoint(ptr noundef %call) #5
  %call2 = tail call ptr @of_graph_get_remote_port(ptr noundef %call) #5
  %dai_link3 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link3, align 4
  %2 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %li, align 4
  %add.ptr = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3
  %dai_props4 = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dai_props4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_props4, align 4
  %call7 = tail call i32 @asoc_graph_is_ports0(ptr noundef %lnk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %no_pcm = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3, i32 18
  %6 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load14 = load i32, ptr %no_pcm, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bf.set10 = or i32 %bf.load14, 9437184
  %7 = ptrtoint ptr %no_pcm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.set10, ptr %no_pcm, align 4
  %call11 = tail call fastcc i32 @graph_parse_node(ptr noundef %priv, i32 noundef 1, ptr noundef %call2, ptr noundef %li, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then.if.end20_crit_edge, label %if.then.err_crit_edge

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.else:                                          ; preds = %entry
  %bf.set16 = or i32 %bf.load14, 16777216
  %8 = ptrtoint ptr %no_pcm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.set16, ptr %no_pcm, align 4
  %be_hw_params_fixup = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3, i32 15
  %9 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @asoc_simple_be_hw_params_fixup, ptr %be_hw_params_fixup, align 4
  %call17 = tail call fastcc i32 @graph_parse_node(ptr noundef %priv, i32 noundef 1, ptr noundef %call2, ptr noundef %li, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.else.err_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then.if.end20_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.if.end20_crit_edge ], [ %call17, %if.else.if.end20_crit_edge ]
  %call.i = tail call ptr @of_get_parent(ptr noundef %call1) #5
  %call1.i = tail call ptr @of_get_parent(ptr noundef %call.i) #5
  %adata2.i = getelementptr %struct.simple_dai_props, ptr %5, i32 %3, i32 5
  %call3.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %call1.i, ptr noundef nonnull @.str.15) #5
  br i1 %call3.i, label %if.then.i, label %if.end20.graph_parse_convert.exit_crit_edge

if.end20.graph_parse_convert.exit_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %graph_parse_convert.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @asoc_simple_parse_convert(ptr noundef %call1.i, ptr noundef null, ptr noundef %adata2.i) #5
  br label %graph_parse_convert.exit

graph_parse_convert.exit:                         ; preds = %if.then.i, %if.end20.graph_parse_convert.exit_crit_edge
  tail call void @asoc_simple_parse_convert(ptr noundef %call.i, ptr noundef null, ptr noundef %adata2.i) #5
  tail call void @asoc_simple_parse_convert(ptr noundef %call1, ptr noundef null, ptr noundef %adata2.i) #5
  tail call void @of_node_put(ptr noundef %call.i) #5
  tail call void @of_node_put(ptr noundef %call1.i) #5
  tail call void @snd_soc_dai_link_set_capabilities(ptr noundef %add.ptr) #5
  tail call fastcc void @graph_link_init(ptr noundef %priv, ptr noundef %call2, ptr noundef %li, i32 noundef %call7)
  br label %err

err:                                              ; preds = %graph_parse_convert.exit, %if.else.err_crit_edge, %if.then.err_crit_edge
  %ret.1 = phi i32 [ %call11, %if.then.err_crit_edge ], [ %ret.0, %graph_parse_convert.exit ], [ %call17, %if.else.err_crit_edge ]
  tail call void @of_node_put(ptr noundef %call) #5
  tail call void @of_node_put(ptr noundef %call1) #5
  tail call void @of_node_put(ptr noundef %call2) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_graph_is_ports0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_be_hw_params_fixup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audio_graph2_link_c2c(ptr nocapture noundef readonly %priv, ptr noundef %lnk, ptr nocapture noundef readonly %li) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link1, align 4
  %2 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %li, align 4
  %dai_props2 = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dai_props2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_props2, align 4
  %c2c_conf5 = getelementptr %struct.simple_dai_props, ptr %5, i32 %3, i32 7
  %6 = ptrtoint ptr %c2c_conf5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2c_conf5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !106
  %call = tail call ptr @of_node_get(ptr noundef %lnk) #5
  %call6 = tail call ptr @of_get_parent(ptr noundef %lnk) #5
  %call7 = tail call ptr @of_get_next_child(ptr noundef %call6, ptr noundef %lnk) #5
  %call8 = call ptr @of_get_property(ptr noundef %call6, ptr noundef nonnull @.str.1, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #8
  br label %err1

if.end:                                           ; preds = %entry
  %formats = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1024, ptr %formats, align 8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %rate_max = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rate_max, align 8
  %rate_min = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %rate_min, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %channels_max, align 8
  %channels_min = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %channels_min, align 4
  %params = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3, i32 9
  %18 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %params, align 4
  %call11 = call ptr @of_get_child_by_name(ptr noundef %lnk, ptr noundef nonnull @.str) #5
  %call12 = call ptr @of_get_child_by_name(ptr noundef %call7, ptr noundef nonnull @.str) #5
  %call13 = call ptr @of_graph_get_remote_port(ptr noundef %call11) #5
  %call14 = call ptr @of_graph_get_remote_port(ptr noundef %call12) #5
  %call15 = call fastcc i32 @graph_parse_node(ptr noundef %priv, i32 noundef 2, ptr noundef %call14, ptr noundef %li, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end.err2_crit_edge, label %if.end17

if.end.err2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end17:                                         ; preds = %if.end
  %call18 = call fastcc i32 @graph_parse_node(ptr noundef %priv, i32 noundef 2, ptr noundef %call13, ptr noundef %li, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.err2_crit_edge, label %if.end21

if.end17.err2_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @graph_link_init(ptr noundef %priv, ptr noundef %call13, ptr noundef %li, i32 noundef 1)
  br label %err2

err2:                                             ; preds = %if.end21, %if.end17.err2_crit_edge, %if.end.err2_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end.err2_crit_edge ], [ %call18, %if.end17.err2_crit_edge ], [ 0, %if.end21 ]
  call void @of_node_put(ptr noundef %call11) #5
  call void @of_node_put(ptr noundef %call12) #5
  call void @of_node_put(ptr noundef %call13) #5
  call void @of_node_put(ptr noundef %call14) #5
  br label %err1

err1:                                             ; preds = %err2, %if.then
  %ret.1 = phi i32 [ %ret.0, %err2 ], [ -22, %if.then ]
  call void @of_node_put(ptr noundef %call6) #5
  call void @of_node_put(ptr noundef %lnk) #5
  call void @of_node_put(ptr noundef %call7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audio_graph2_parse_of(ptr noundef %priv, ptr noundef %dev, ptr noundef %hooks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8200, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %probe = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @asoc_graph_card_probe, ptr %probe, align 4
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner, align 4
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev1, align 4
  %tobool2.not = icmp eq ptr %hooks, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %hooks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hooks, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then4

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 %4(ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then4.err.thread_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4.err.thread_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call fastcc i32 @graph_for_each_link(ptr noundef %priv, ptr noundef %hooks, ptr noundef nonnull %call.i, ptr noundef nonnull @graph_count)
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  %spec.store.select = select i1 %tobool11.not, i32 -22, i32 %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp14 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp14, label %if.end9.err.thread_crit_edge, label %if.end16

if.end9.err.thread_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end16:                                         ; preds = %if.end9
  %call17 = tail call i32 @asoc_simple_init_priv(ptr noundef %priv, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.err.thread_crit_edge, label %if.end20

if.end16.err.thread_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 3) #5
  %pa_gpio = getelementptr inbounds %struct.asoc_simple_priv, ptr %priv, i32 0, i32 10
  %7 = ptrtoint ptr %pa_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call21, ptr %pa_gpio, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %8) #8
  br label %err

if.end30:                                         ; preds = %if.end20
  %call31 = tail call i32 @asoc_simple_parse_widgets(ptr noundef %priv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.err.thread_crit_edge, label %if.end34

if.end30.err.thread_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @asoc_simple_parse_routing(ptr noundef %priv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.err.thread_crit_edge, label %if.end38

if.end34.err.thread_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end38:                                         ; preds = %if.end34
  %9 = call ptr @memset(ptr %call.i, i32 0, i32 8200)
  %call39 = tail call fastcc i32 @graph_for_each_link(ptr noundef %priv, ptr noundef %hooks, ptr noundef nonnull %call.i, ptr noundef nonnull @graph_link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.err.thread_crit_edge, label %if.end42

if.end38.err.thread_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end42:                                         ; preds = %if.end38
  %call43 = tail call i32 @asoc_simple_parse_card_name(ptr noundef %priv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.err.thread_crit_edge, label %if.end46

if.end42.err.thread_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end46:                                         ; preds = %if.end42
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 57
  %10 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %priv, ptr %drvdata.i, align 4
  br i1 %tobool2.not, label %if.end46.if.end56_crit_edge, label %land.lhs.true48

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.lhs.true48:                                  ; preds = %if.end46
  %hook_post = getelementptr inbounds %struct.graph2_custom_hooks, ptr %hooks, i32 0, i32 1
  %11 = ptrtoint ptr %hook_post to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook_post, align 4
  %tobool49.not = icmp eq ptr %12, null
  br i1 %tobool49.not, label %land.lhs.true48.if.end56_crit_edge, label %if.then50

land.lhs.true48.if.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then50:                                        ; preds = %land.lhs.true48
  %call52 = tail call i32 %12(ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then50.err.thread_crit_edge, label %if.then50.if.end56_crit_edge

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then50.err.thread_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.thread

if.end56:                                         ; preds = %if.then50.if.end56_crit_edge, %land.lhs.true48.if.end56_crit_edge, %if.end46.if.end56_crit_edge
  %call57 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %priv) #5
  br label %err

err.thread:                                       ; preds = %if.then50.err.thread_crit_edge, %if.end42.err.thread_crit_edge, %if.end38.err.thread_crit_edge, %if.end34.err.thread_crit_edge, %if.end30.err.thread_crit_edge, %if.end16.err.thread_crit_edge, %if.end9.err.thread_crit_edge, %if.then4.err.thread_crit_edge
  %ret.0.ph = phi i32 [ %call52, %if.then50.err.thread_crit_edge ], [ %call43, %if.end42.err.thread_crit_edge ], [ %call39, %if.end38.err.thread_crit_edge ], [ %call35, %if.end34.err.thread_crit_edge ], [ %call31, %if.end30.err.thread_crit_edge ], [ %call17, %if.end16.err.thread_crit_edge ], [ %spec.store.select, %if.end9.err.thread_crit_edge ], [ %call6, %if.then4.err.thread_crit_edge ]
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  br label %if.then59

err:                                              ; preds = %if.end56, %if.then24
  %ret.0 = phi i32 [ %8, %if.then24 ], [ %call57, %if.end56 ]
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp58 = icmp slt i32 %ret.0, 0
  br i1 %cmp58, label %err.if.then59_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err.if.then59_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then59

if.then59:                                        ; preds = %err.if.then59_crit_edge, %err.thread
  %ret.0114 = phi i32 [ %ret.0.ph, %err.thread ], [ %ret.0, %err.if.then59_crit_edge ]
  %call60 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %ret.0114, ptr noundef nonnull @.str.14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %err.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.0114, %if.then59 ], [ %ret.0, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_graph_card_probe(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @graph_for_each_link(ptr noundef %priv, ptr noundef %hooks, ptr noundef %li, ptr nocapture noundef readonly %func) unnamed_addr #0 align 64 {
entry:
  %it = alloca %struct.of_phandle_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it) #5
  %0 = call ptr @memset(ptr %it, i32 255, i32 36)
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it, ptr noundef %4, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0) #5
  %call2 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp18 = icmp eq i32 %call2, 0
  br i1 %cmp18, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %node3 = getelementptr inbounds %struct.of_phandle_iterator, ptr %it, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = ptrtoint ptr %node3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node3, align 4
  %call.i.i = call ptr @of_get_parent(ptr noundef %6) #5
  %call1.i.i = call zeroext i1 @of_node_name_eq(ptr noundef %call.i.i, ptr noundef nonnull @.str.15) #5
  br i1 %call1.i.i, label %if.then.i.i, label %for.body.if.end.i.i_crit_edge

for.body.if.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = call ptr @of_get_parent(ptr noundef %call.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.if.end.i.i_crit_edge
  %np.0.i.i = phi ptr [ %call2.i.i, %if.then.i.i ], [ %call.i.i, %for.body.if.end.i.i_crit_edge ]
  %call3.i.i = call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.16) #5
  br i1 %call3.i.i, label %if.end.i.i.graph_get_type.exit_crit_edge, label %if.end5.i.i

if.end.i.i.graph_get_type.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %graph_get_type.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.17) #5
  br i1 %call6.i.i, label %if.end5.i.i.graph_get_type.exit_crit_edge, label %if.end8.i.i

if.end5.i.i.graph_get_type.exit_crit_edge:        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %graph_get_type.exit

if.end8.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i.i = call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.18) #5
  %..i.i = select i1 %call9.i.i, i32 2, i32 0
  br label %graph_get_type.exit

graph_get_type.exit:                              ; preds = %if.end8.i.i, %if.end5.i.i.graph_get_type.exit_crit_edge, %if.end.i.i.graph_get_type.exit_crit_edge
  %7 = phi i32 [ 0, %if.end.i.i.graph_get_type.exit_crit_edge ], [ %..i.i, %if.end8.i.i ], [ 1, %if.end5.i.i.graph_get_type.exit_crit_edge ]
  %call5 = call i32 %func(ptr noundef %priv, ptr noundef %hooks, i32 noundef %7, ptr noundef %6, ptr noundef %li) #5, !callees !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %graph_get_type.exit.cleanup_crit_edge, label %for.inc

graph_get_type.exit.cleanup_crit_edge:            ; preds = %graph_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %graph_get_type.exit
  %call7 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #5
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %graph_get_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call5, %graph_get_type.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_count(ptr noundef %priv, ptr nocapture noundef readnone %hooks, i32 noundef %gtype, ptr noundef %lnk, ptr noundef %li) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %gtype)
  %4 = icmp ult i32 %gtype, 3
  br i1 %4, label %switch.lookup, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %gtype) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.graph_count, i32 0, i32 %gtype
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call = tail call i32 %switch.load(ptr noundef %priv, ptr noundef %lnk, ptr noundef %li) #5, !callees !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %switch.lookup.cleanup_crit_edge, label %if.end11

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %li, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %li, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %switch.lookup.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %switch.lookup.cleanup_crit_edge ], [ %call, %if.end11 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_priv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_widgets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_routing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_link(ptr noundef %priv, ptr noundef readonly %hooks, i32 noundef %gtype, ptr noundef %lnk, ptr noundef %li) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %gtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %gtype, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %hooks, null
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %custom_normal = getelementptr inbounds %struct.graph2_custom_hooks, ptr %hooks, i32 0, i32 2
  %1 = ptrtoint ptr %custom_normal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %custom_normal, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  br label %if.end22

sw.bb4:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %hooks, null
  br i1 %tobool5.not, label %sw.bb4.if.else10_crit_edge, label %land.lhs.true6

sw.bb4.if.else10_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10

land.lhs.true6:                                   ; preds = %sw.bb4
  %custom_dpcm = getelementptr inbounds %struct.graph2_custom_hooks, ptr %hooks, i32 0, i32 3
  %3 = ptrtoint ptr %custom_dpcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %custom_dpcm, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %land.lhs.true6.if.else10_crit_edge, label %land.lhs.true6.if.end22_crit_edge

land.lhs.true6.if.end22_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true6.if.else10_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10

if.else10:                                        ; preds = %land.lhs.true6.if.else10_crit_edge, %sw.bb4.if.else10_crit_edge
  br label %if.end22

sw.bb12:                                          ; preds = %entry
  %tobool13.not = icmp eq ptr %hooks, null
  br i1 %tobool13.not, label %sw.bb12.if.else18_crit_edge, label %land.lhs.true14

sw.bb12.if.else18_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18

land.lhs.true14:                                  ; preds = %sw.bb12
  %custom_c2c = getelementptr inbounds %struct.graph2_custom_hooks, ptr %hooks, i32 0, i32 4
  %5 = ptrtoint ptr %custom_c2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %custom_c2c, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %land.lhs.true14.if.else18_crit_edge, label %land.lhs.true14.if.end22_crit_edge

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true14.if.else18_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true14.if.else18_crit_edge, %sw.bb12.if.else18_crit_edge
  br label %if.end22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.33, i32 noundef %gtype) #8
  br label %err

if.end22:                                         ; preds = %if.else18, %land.lhs.true14.if.end22_crit_edge, %if.else10, %land.lhs.true6.if.end22_crit_edge, %if.else, %land.lhs.true.if.end22_crit_edge
  %func.0.ph = phi ptr [ %6, %land.lhs.true14.if.end22_crit_edge ], [ %4, %land.lhs.true6.if.end22_crit_edge ], [ %2, %land.lhs.true.if.end22_crit_edge ], [ @audio_graph2_link_normal, %if.else ], [ @audio_graph2_link_dpcm, %if.else10 ], [ @audio_graph2_link_c2c, %if.else18 ]
  %call = tail call i32 %func.0.ph(ptr noundef %priv, ptr noundef %lnk, ptr noundef %li) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end22.err_crit_edge, label %if.end24

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end24:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %li, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %li, align 4
  br label %err

err:                                              ; preds = %if.end24, %if.end22.err_crit_edge, %do.end
  %ret.0 = phi i32 [ %call, %if.end22.err_crit_edge ], [ %call, %if.end24 ], [ -22, %do.end ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_card_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @graph_card, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @graph_card_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @graph_card) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @graph_get_next_multi_ep(ptr nocapture noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %call = tail call ptr @of_get_parent(ptr noundef %1) #5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %call1 = tail call ptr @of_get_next_child(ptr noundef %call, ptr noundef %3) #5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %port, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body.if.end7_crit_edge, label %do.cond

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

do.cond:                                          ; preds = %do.body
  %call2 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %call1, ptr noundef nonnull @.str.19) #5
  br i1 %call2, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.cond
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %port, align 4
  %tobool3.not = icmp eq ptr %.pr, null
  br i1 %tobool3.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %.pr, ptr noundef nonnull @.str) #5
  %call6 = tail call ptr @of_graph_get_remote_endpoint(ptr noundef %call5) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge, %do.body.if.end7_crit_edge
  %ep.0 = phi ptr [ %call5, %if.then4 ], [ null, %do.end.if.end7_crit_edge ], [ null, %do.body.if.end7_crit_edge ]
  %rep.0 = phi ptr [ %call6, %if.then4 ], [ null, %do.end.if.end7_crit_edge ], [ null, %do.body.if.end7_crit_edge ]
  tail call void @of_node_put(ptr noundef %ep.0) #5
  tail call void @of_node_put(ptr noundef %call) #5
  ret ptr %rep.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__graph_parse_node(ptr nocapture noundef readonly %priv, i32 noundef %gtype, ptr noundef %ep, ptr nocapture noundef readonly %li, i32 noundef %is_cpu, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.of_endpoint, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_cpu)
  %tobool.not = icmp eq i32 %is_cpu, 0
  %add.ptr6 = getelementptr %struct.simple_dai_props, ptr %7, i32 %5
  %cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 2
  %codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 4
  %codec_dai = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 1
  %.pn165.in = select i1 %tobool.not, ptr %codecs.i, ptr %cpus.i
  %.pn.in = select i1 %tobool.not, ptr %codec_dai, ptr %add.ptr6
  %8 = ptrtoint ptr %.pn165.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn165 = load ptr, ptr %.pn165.in, align 4
  %dlc.0 = getelementptr %struct.snd_soc_dai_link_component, ptr %.pn165, i32 %idx
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %dai.0 = getelementptr %struct.asoc_simple_dai, ptr %.pn, i32 %idx
  %call.i = tail call ptr @of_get_parent(ptr noundef %ep) #5
  %call1.i = tail call ptr @of_get_parent(ptr noundef %call.i) #5
  %call2.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %call1.i, ptr noundef nonnull @.str.15) #5
  br i1 %call2.i, label %if.then.i, label %entry.graph_parse_mclk_fs.exit_crit_edge

entry.graph_parse_mclk_fs.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %graph_parse_mclk_fs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mclk_fs.i = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 9
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %call1.i, ptr noundef nonnull @.str.27, ptr noundef %mclk_fs.i, i32 noundef 1, i32 noundef 0) #5
  br label %graph_parse_mclk_fs.exit

graph_parse_mclk_fs.exit:                         ; preds = %if.then.i, %entry.graph_parse_mclk_fs.exit_crit_edge
  %mclk_fs4.i = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 9
  %call.i.i15.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %call.i, ptr noundef nonnull @.str.27, ptr noundef %mclk_fs4.i, i32 noundef 1, i32 noundef 0) #5
  %call.i.i16.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %ep, ptr noundef nonnull @.str.27, ptr noundef %mclk_fs4.i, i32 noundef 1, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef %call.i) #5
  tail call void @of_node_put(ptr noundef %call1.i) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %10 = getelementptr inbounds i8, ptr %args.i, i32 12
  %11 = call ptr @memset(ptr %10, i32 255, i32 60)
  %tobool.not.i = icmp eq ptr %ep, null
  br i1 %tobool.not.i, label %graph_parse_mclk_fs.exit.if.end12_crit_edge, label %if.end.i

graph_parse_mclk_fs.exit.if.end12_crit_edge:      ; preds = %graph_parse_mclk_fs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i:                                         ; preds = %graph_parse_mclk_fs.exit
  %call.i152 = tail call ptr @of_graph_get_port_parent(ptr noundef nonnull %ep) #5
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i152, ptr %args.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i.i) #5
  %13 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %info.i.i, align 4, !annotation !106
  %14 = getelementptr inbounds %struct.of_endpoint, ptr %info.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !106
  %16 = getelementptr inbounds %struct.of_endpoint, ptr %info.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !106
  %call.i.i = tail call i32 @snd_soc_get_dai_id(ptr noundef nonnull %ep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, -524
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.graph_get_dai_id.exit.i_crit_edge

if.end.i.graph_get_dai_id.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %graph_get_dai_id.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep, ptr noundef nonnull %info.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.if.end13.i.i_crit_edge

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call ptr @of_get_property(ptr noundef nonnull %ep, ptr noundef nonnull @.str.28, ptr noundef null) #5
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 4
  br label %graph_get_dai_id.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = call ptr @of_get_parent(ptr noundef nonnull %ep) #5
  %call9.i.i = call ptr @of_get_property(ptr noundef %call8.i.i, ptr noundef nonnull @.str.28, ptr noundef null) #5
  call void @of_node_put(ptr noundef %call8.i.i) #5
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.end7.i.i.if.end13.i.i_crit_edge, label %if.then11.i.i

if.end7.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %info.i.i, align 4
  br label %graph_get_dai_id.exit.i

if.end13.i.i:                                     ; preds = %if.end7.i.i.if.end13.i.i_crit_edge, %if.end.i.i.if.end13.i.i_crit_edge
  %call14.i.i = call ptr @of_graph_get_port_parent(ptr noundef nonnull %ep) #5
  %call15.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef %call14.i.i, ptr noundef null) #5
  %cmp16.not45.i.i = icmp eq ptr %call15.i.i, null
  br i1 %cmp16.not45.i.i, label %for.end.thread.i.i, label %if.end13.i.i.for.body.i.i_crit_edge

if.end13.i.i.for.body.i.i_crit_edge:              ; preds = %if.end13.i.i
  br label %for.body.i.i

for.end.thread.i.i:                               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef %call14.i.i) #5
  br label %22

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end13.i.i.for.body.i.i_crit_edge
  %id.048.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %if.end13.i.i.for.body.i.i_crit_edge ]
  %i.047.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body.i.i_crit_edge ]
  %endpoint.046.i.i = phi ptr [ %call20.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call15.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %cmp17.i.i = icmp eq ptr %endpoint.046.i.i, %ep
  %spec.select.i.i = select i1 %cmp17.i.i, i32 %i.047.i.i, i32 %id.048.i.i
  %inc.i.i = add i32 %i.047.i.i, 1
  %call20.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef %call14.i.i, ptr noundef nonnull %endpoint.046.i.i) #5
  %cmp16.not.i.i = icmp eq ptr %call20.i.i, null
  br i1 %cmp16.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @of_node_put(ptr noundef %call14.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp21.i.i = icmp slt i32 %spec.select.i.i, 0
  br i1 %cmp21.i.i, label %for.end.i.i._crit_edge, label %for.end.i.i.graph_get_dai_id.exit.i_crit_edge

for.end.i.i.graph_get_dai_id.exit.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %graph_get_dai_id.exit.i

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %22

22:                                               ; preds = %for.end.i.i._crit_edge, %for.end.thread.i.i
  br label %graph_get_dai_id.exit.i

graph_get_dai_id.exit.i:                          ; preds = %22, %for.end.i.i.graph_get_dai_id.exit.i_crit_edge, %if.then11.i.i, %if.then5.i.i, %if.end.i.graph_get_dai_id.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %19, %if.then5.i.i ], [ %21, %if.then11.i.i ], [ %call.i.i, %if.end.i.graph_get_dai_id.exit.i_crit_edge ], [ -19, %22 ], [ %spec.select.i.i, %for.end.i.i.graph_get_dai_id.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i.i) #5
  %args2.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %23 = ptrtoint ptr %args2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i, ptr %args2.i, align 4
  %call3.i = call i32 @of_graph_get_endpoint_count(ptr noundef %call.i152) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, 1
  %conv.i = zext i1 %cmp.i to i32
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %24 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i, ptr %args_count.i, align 4
  %dai_name.i = getelementptr %struct.snd_soc_dai_link_component, ptr %.pn165, i32 %idx, i32 2
  %call4.i = call i32 @snd_soc_get_dai_name(ptr noundef nonnull %args.i, ptr noundef %dai_name.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %asoc_simple_parse_dai.exit, label %if.end8.i

if.end8.i:                                        ; preds = %graph_get_dai_id.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %of_node.i = getelementptr %struct.snd_soc_dai_link_component, ptr %.pn165, i32 %idx, i32 1
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i152, ptr %of_node.i, align 4
  %call11.i = call i32 @of_graph_get_endpoint_count(ptr noundef %call.i152) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 1
  %conv13.i = zext i1 %cmp12.i to i32
  br label %if.end12

asoc_simple_parse_dai.exit:                       ; preds = %graph_get_dai_id.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i, %graph_parse_mclk_fs.exit.if.end12_crit_edge
  %is_single_links.0.ph = phi i32 [ %conv13.i, %if.end8.i ], [ 0, %graph_parse_mclk_fs.exit.if.end12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tx_slot_mask = getelementptr %struct.asoc_simple_dai, ptr %.pn, i32 %idx, i32 5
  %rx_slot_mask = getelementptr %struct.asoc_simple_dai, ptr %.pn, i32 %idx, i32 6
  %slots = getelementptr %struct.asoc_simple_dai, ptr %.pn, i32 %idx, i32 3
  %slot_width = getelementptr %struct.asoc_simple_dai, ptr %.pn, i32 %idx, i32 4
  %call13 = call i32 @snd_soc_of_parse_tdm_slot(ptr noundef %ep, ptr noundef %tx_slot_mask, ptr noundef %rx_slot_mask, ptr noundef %slots, ptr noundef %slot_width) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @asoc_simple_parse_clk(ptr noundef %1, ptr noundef %ep, ptr noundef %dai.0, ptr noundef %dlc.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %tobool21.not = icmp eq ptr %27, null
  br i1 %tobool21.not, label %if.then22, label %if.end52

if.then22:                                        ; preds = %if.end20
  %28 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %codecs.i, align 4
  %num_cpus = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 3
  %30 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp24 = icmp ugt i32 %31, 1
  %spec.select = select i1 %cmp24, ptr @.str.21, ptr @.str.20
  %num_codecs = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 5
  %32 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp27 = icmp ugt i32 %33, 1
  %codec_multi.0 = select i1 %cmp27, ptr @.str.21, ptr @.str.20
  %34 = zext i32 %gtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %gtype, label %if.then22.if.end66_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb35
    i32 2, label %sw.bb45
  ]

if.then22.if.end66_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

sw.bb:                                            ; preds = %if.then22
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then31

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dai_name = getelementptr %struct.snd_soc_dai_link_component, ptr %.pn165, i32 %idx, i32 2
  %35 = ptrtoint ptr %dai_name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dai_name, align 4
  %dai_name32 = getelementptr %struct.snd_soc_dai_link_component, ptr %29, i32 %idx, i32 2
  %37 = ptrtoint ptr %dai_name32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dai_name32, align 4
  %call33 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull @.str.22, ptr noundef %36, ptr noundef nonnull %spec.select, ptr noundef %38, ptr noundef nonnull %codec_multi.0) #5
  br label %if.then68

sw.bb35:                                          ; preds = %if.then22
  br i1 %tobool.not, label %land.lhs.true, label %if.then37

if.then37:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  %of_node = getelementptr %struct.snd_soc_dai_link_component, ptr %.pn165, i32 %idx, i32 1
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 4
  %dai_name38 = getelementptr %struct.snd_soc_dai_link_component, ptr %.pn165, i32 %idx, i32 2
  %41 = ptrtoint ptr %dai_name38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dai_name38, align 4
  %call39 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull @.str.23, ptr noundef %40, ptr noundef %42, ptr noundef nonnull %spec.select) #5
  br label %if.then68

sw.bb45:                                          ; preds = %if.then22
  br i1 %tobool.not, label %sw.bb45.cleanup_crit_edge, label %if.then47

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #7
  %dai_name48 = getelementptr %struct.snd_soc_dai_link_component, ptr %.pn165, i32 %idx, i32 2
  %43 = ptrtoint ptr %dai_name48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dai_name48, align 4
  %dai_name49 = getelementptr %struct.snd_soc_dai_link_component, ptr %29, i32 %idx, i32 2
  %45 = ptrtoint ptr %dai_name49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dai_name49, align 4
  %call50 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull @.str.25, ptr noundef %44, ptr noundef nonnull %spec.select, ptr noundef %46, ptr noundef nonnull %codec_multi.0) #5
  br label %if.then68

if.end52:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %gtype)
  %cmp54 = icmp eq i32 %gtype, 1
  %or.cond = and i1 %cmp54, %tobool.not
  br i1 %or.cond, label %if.end52.if.then55_crit_edge, label %if.end52.if.end66_crit_edge

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end52.if.then55_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

land.lhs.true:                                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  %of_node41 = getelementptr %struct.snd_soc_dai_link_component, ptr %29, i32 %idx, i32 1
  %47 = ptrtoint ptr %of_node41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node41, align 4
  %dai_name42 = getelementptr %struct.snd_soc_dai_link_component, ptr %29, i32 %idx, i32 2
  %49 = ptrtoint ptr %dai_name42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dai_name42, align 4
  %call43 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull @.str.24, ptr noundef %48, ptr noundef %50, ptr noundef nonnull %codec_multi.0) #5
  br label %if.then55

if.then55:                                        ; preds = %land.lhs.true, %if.end52.if.then55_crit_edge
  %51 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %codecs.i, align 4
  %codec_conf = getelementptr %struct.simple_dai_props, ptr %7, i32 %5, i32 6
  %53 = ptrtoint ptr %codec_conf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %codec_conf, align 4
  %add.ptr58 = getelementptr %struct.snd_soc_codec_conf, ptr %54, i32 %idx
  %call59 = call ptr @of_get_parent(ptr noundef %ep) #5
  %call60 = call ptr @of_get_parent(ptr noundef %call59) #5
  %call61 = call zeroext i1 @of_node_name_eq(ptr noundef %call60, ptr noundef nonnull @.str.15) #5
  br i1 %call61, label %if.then62, label %if.then55.if.end64_crit_edge

if.then55.if.end64_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then62:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  %of_node63 = getelementptr %struct.snd_soc_dai_link_component, ptr %52, i32 %idx, i32 1
  %55 = ptrtoint ptr %of_node63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node63, align 4
  call void @snd_soc_of_parse_node_prefix(ptr noundef %call60, ptr noundef %add.ptr58, ptr noundef %56, ptr noundef nonnull @.str.26) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.then55.if.end64_crit_edge
  %of_node65 = getelementptr %struct.snd_soc_dai_link_component, ptr %52, i32 %idx, i32 1
  %57 = ptrtoint ptr %of_node65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node65, align 4
  call void @snd_soc_of_parse_node_prefix(ptr noundef %call59, ptr noundef %add.ptr58, ptr noundef %58, ptr noundef nonnull @.str.26) #5
  call void @of_node_put(ptr noundef %call59) #5
  call void @of_node_put(ptr noundef %call60) #5
  br label %if.end66

if.end66:                                         ; preds = %if.end64, %if.end52.if.end66_crit_edge, %if.then22.if.end66_crit_edge
  br i1 %tobool.not, label %if.end66.cleanup_crit_edge, label %if.end66.if.then68_crit_edge

if.end66.if.then68_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then68

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then68:                                        ; preds = %if.end66.if.then68_crit_edge, %if.then47, %if.then37, %if.then31
  %platforms.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 6
  %59 = ptrtoint ptr %platforms.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %platforms.i, align 4
  %arrayidx.i157 = getelementptr %struct.snd_soc_dai_link_component, ptr %60, i32 %idx
  call void @asoc_simple_canonicalize_cpu(ptr noundef %dlc.0, i32 noundef %is_single_links.0.ph) #5
  call void @asoc_simple_canonicalize_platform(ptr noundef %arrayidx.i157, ptr noundef %dlc.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end66.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %asoc_simple_parse_dai.exit
  %retval.0 = phi i32 [ %call4.i, %asoc_simple_parse_dai.exit ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %if.end66.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_tdm_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_set_dailink_name(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_parse_node_prefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_platform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_daifmt_clock_provider_from_bitmap(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_daifmt_clock_provider_fliped(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_dai_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_daifmt_parse_clock_provider_raw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_daifmt_parse_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_startup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_shutdown(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_hw_params(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_parse_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_count_normal(ptr nocapture noundef readnone %priv, ptr noundef %lnk, ptr nocapture noundef %li) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_child_by_name(ptr noundef %lnk, ptr noundef nonnull @.str) #5
  %call1 = tail call ptr @of_graph_get_remote_port(ptr noundef %call) #5
  %call2 = tail call fastcc i32 @graph_counter(ptr noundef %lnk)
  %0 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %li, align 4
  %platforms = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1, i32 2
  %2 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %platforms, align 4
  %3 = load i32, ptr %li, align 4
  %arrayidx5 = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %arrayidx5, align 4
  %call6 = tail call fastcc i32 @graph_counter(ptr noundef %call1)
  %5 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %li, align 4
  %codecs = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %6, i32 1
  %7 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %codecs, align 4
  tail call void @of_node_put(ptr noundef %call) #5
  tail call void @of_node_put(ptr noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_count_dpcm(ptr nocapture noundef readnone %priv, ptr noundef %lnk, ptr nocapture noundef %li) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_child_by_name(ptr noundef %lnk, ptr noundef nonnull @.str) #5
  %call1 = tail call ptr @of_graph_get_remote_port(ptr noundef %call) #5
  %call2 = tail call i32 @asoc_graph_is_ports0(ptr noundef %lnk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %call8 = tail call fastcc i32 @graph_counter(ptr noundef %call1)
  %0 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %li, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call8, ptr %arrayidx, align 4
  %call4 = tail call fastcc i32 @graph_counter(ptr noundef %call1)
  %3 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %li, align 4
  %platforms = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %4, i32 2
  %5 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %platforms, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %codecs = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1, i32 1
  %6 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call8, ptr %codecs, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @of_node_put(ptr noundef %call) #5
  tail call void @of_node_put(ptr noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_count_c2c(ptr nocapture noundef readnone %priv, ptr noundef %lnk, ptr nocapture noundef %li) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_parent(ptr noundef %lnk) #5
  %call1 = tail call ptr @of_get_next_child(ptr noundef %call, ptr noundef %lnk) #5
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %lnk, ptr noundef nonnull @.str) #5
  %call3 = tail call ptr @of_get_child_by_name(ptr noundef %call1, ptr noundef nonnull @.str) #5
  %call4 = tail call ptr @of_graph_get_remote_port(ptr noundef %call2) #5
  %call5 = tail call ptr @of_graph_get_remote_port(ptr noundef %call3) #5
  %call6 = tail call ptr @of_node_get(ptr noundef %lnk) #5
  %call7 = tail call fastcc i32 @graph_counter(ptr noundef %call4)
  %0 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %li, align 4
  %platforms = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %1, i32 2
  %2 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call7, ptr %platforms, align 4
  %3 = load i32, ptr %li, align 4
  %arrayidx10 = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call7, ptr %arrayidx10, align 4
  %call11 = tail call fastcc i32 @graph_counter(ptr noundef %call5)
  %5 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %li, align 4
  %codecs = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %6, i32 1
  %7 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call11, ptr %codecs, align 4
  %c2c = getelementptr %struct.link_info, ptr %li, i32 0, i32 2, i32 %6, i32 3
  %8 = ptrtoint ptr %c2c to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %c2c, align 4
  tail call void @of_node_put(ptr noundef %call) #5
  tail call void @of_node_put(ptr noundef %call1) #5
  tail call void @of_node_put(ptr noundef %call2) #5
  tail call void @of_node_put(ptr noundef %call3) #5
  tail call void @of_node_put(ptr noundef %call4) #5
  tail call void @of_node_put(ptr noundef %call5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @graph_counter(ptr noundef %lnk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @of_get_parent(ptr noundef %lnk) #5
  %call1.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %call.i.i, ptr noundef nonnull @.str.15) #5
  br i1 %call1.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = tail call ptr @of_get_parent(ptr noundef %call.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %np.0.i.i = phi ptr [ %call2.i.i, %if.then.i.i ], [ %call.i.i, %entry.if.end.i.i_crit_edge ]
  %call3.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.16) #5
  br i1 %call3.i.i, label %if.then, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.17) #5
  br i1 %call6.i.i, label %if.end5.i.i.return_crit_edge, label %if.end8.i.i

if.end5.i.i.return_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end8.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef %np.0.i.i, ptr noundef nonnull @.str.18) #5
  br label %return

if.then:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @of_get_parent(ptr noundef %lnk) #5
  %call2 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %call1) #5
  %sub = add i32 %call2, -1
  br label %return

return:                                           ; preds = %if.then, %if.end8.i.i, %if.end5.i.i.return_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then ], [ 1, %if.end5.i.i.return_crit_edge ], [ 1, %if.end8.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @graph_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1496, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @audio_graph2_parse_of(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_remove(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 724, i32 31}
!2 = !{ptr @__ksymtab_audio_graph2_link_normal, !3, !"__ksymtab_audio_graph2_link_normal", i1 false, i1 false}
!3 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 751, i32 1}
!4 = !{ptr @__ksymtab_audio_graph2_link_dpcm, !5, !"__ksymtab_audio_graph2_link_dpcm", i1 false, i1 false}
!5 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 843, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 879, i32 30}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 882, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @audio_graph2_link_c2c._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @audio_graph2_link_c2c._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_audio_graph2_link_c2c, !17, !"__ksymtab_audio_graph2_link_c2c", i1 false, i1 false}
!17 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 928, i32 1}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1177, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @audio_graph2_parse_of._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @audio_graph2_parse_of._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1203, i32 47}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1206, i32 3}
!28 = !{ptr @audio_graph2_parse_of._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @audio_graph2_parse_of._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1242, i32 27}
!32 = !{ptr @__ksymtab_audio_graph2_parse_of, !33, !"__ksymtab_audio_graph2_parse_of", i1 false, i1 false}
!33 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1246, i32 1}
!34 = !{ptr @__initcall__kmod_snd_soc_audio_graph_card2__238_1276_graph_card_init6, !35, !"__initcall__kmod_snd_soc_audio_graph_card2__238_1276_graph_card_init6", i1 false, i1 false}
!35 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1276, i32 1}
!36 = !{ptr @__exitcall_graph_card_exit, !35, !"__exitcall_graph_card_exit", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_alias239, !38, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!38 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1278, i32 1}
!39 = !{ptr @__UNIQUE_ID_file240, !40, !"__UNIQUE_ID_file240", i1 false, i1 false}
!40 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1279, i32 1}
!41 = !{ptr @__UNIQUE_ID_license241, !40, !"__UNIQUE_ID_license241", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_description242, !43, !"__UNIQUE_ID_description242", i1 false, i1 false}
!43 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1280, i32 1}
!44 = !{ptr @__UNIQUE_ID_author243, !45, !"__UNIQUE_ID_author243", i1 false, i1 false}
!45 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1281, i32 1}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 243, i32 26}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 246, i32 26}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 249, i32 26}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 252, i32 26}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 322, i32 35}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 516, i32 23}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 520, i32 16}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 528, i32 49}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 534, i32 49}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 537, i32 49}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 543, i32 49}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 563, i32 65}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 467, i32 31}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 364, i32 29}
!74 = !{ptr @graph_ops, !75, !"graph_ops", i1 false, i1 false}
!75 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 335, i32 33}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1157, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1108, i32 3}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @graph_count._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @graph_count._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1127, i32 3}
!85 = !{ptr @graph_count._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @graph_count._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 964, i32 3}
!89 = !{ptr @graph_link._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @graph_link._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1269, i32 11}
!93 = !{ptr @graph_card, !94, !"graph_card", i1 false, i1 false}
!94 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1267, i32 31}
!95 = !{ptr @graph_of_match, !96, !"graph_of_match", i1 false, i1 false}
!96 = !{!"../sound/soc/generic/audio-graph-card2.c", i32 1261, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{ptr @graph_count, ptr @graph_link}
!108 = !{ptr @graph_count_c2c, ptr @graph_count_dpcm, ptr @graph_count_normal}
