; ModuleID = '/llk/IR_all_yes/sound/soc/soc-compress.c_pt.bc'
source_filename = "../sound/soc/soc-compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_new_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_new_compress\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_new_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_new_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_new_compress\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_new_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_compr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_compr = type { ptr, %struct.device, ptr, ptr, ptr, i32, %struct.mutex, i32, i8, [64 x i8], ptr, ptr }
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
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }

@snd_soc_new_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 566, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Compress ASoC: Multi CPU/Codec not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_new_compress\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/soc-compress.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_soc_new_compress._entry_ptr = internal global ptr @snd_soc_new_compress._entry, section ".printk_index", align 4
@snd_soc_new_compress._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Compress ASoC: Invalid direction for P %d, C %d\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_soc_new_compress._entry_ptr.7 = internal global ptr @snd_soc_new_compress._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(%s)\00", [27 x i8] zeroinitializer }, align 32
@snd_soc_new_compress._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 613, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Compress ASoC: can't create compressed for %s: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_soc_new_compress._entry_ptr.11 = internal global ptr @snd_soc_new_compress._entry.9, section ".printk_index", align 4
@soc_compr_dyn_ops = internal constant { %struct.snd_compr_ops, [44 x i8] } { %struct.snd_compr_ops { ptr @soc_compr_open_fe, ptr @soc_compr_free_fe, ptr @soc_compr_set_params_fe, ptr @soc_compr_get_params, ptr @soc_compr_set_metadata, ptr @soc_compr_get_metadata, ptr @soc_compr_trigger_fe, ptr @soc_compr_pointer, ptr null, ptr null, ptr @soc_compr_ack, ptr @snd_soc_component_compr_get_caps, ptr @snd_soc_component_compr_get_codec_caps }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s-%d\00", [23 x i8] zeroinitializer }, align 32
@soc_compr_ops = internal constant { %struct.snd_compr_ops, [44 x i8] } { %struct.snd_compr_ops { ptr @soc_compr_open, ptr @soc_compr_free, ptr @soc_compr_set_params, ptr @soc_compr_get_params, ptr @soc_compr_set_metadata, ptr @soc_compr_get_metadata, ptr @soc_compr_trigger, ptr @soc_compr_pointer, ptr null, ptr null, ptr @soc_compr_ack, ptr @snd_soc_component_compr_get_caps, ptr @snd_soc_component_compr_get_codec_caps }, [44 x i8] zeroinitializer }, align 32
@snd_soc_new_compress._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 646, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Compress ASoC: can't create compress for codec %s: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_soc_new_compress._entry_ptr.15 = internal global ptr @snd_soc_new_compress._entry.13, section ".printk_index", align 4
@snd_soc_new_compress.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_core\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Compress ASoC: %s <-> %s mapping ok\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_new_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_new_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_new_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_new_compress to i32), ptr @__kstrtab_snd_soc_new_compress, ptr @__kstrtabns_snd_soc_new_compress }, section "___ksymtab_gpl+snd_soc_new_compress", align 4
@switch.table.soc_compr_trigger_fe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5, i32 4, i32 4, i32 6, i32 4, i32 5, i32 4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 565, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 583, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 604, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 611, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"soc_compr_dyn_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 522, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 625, i32 40 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"soc_compr_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 507, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 644, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [28 x i8] c"../sound/soc/soc-compress.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 656, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [34 x i8] c"switch.table.soc_compr_trigger_fe\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_snd_soc_new_compress, ptr @snd_soc_new_compress._entry, ptr @snd_soc_new_compress._entry.13, ptr @snd_soc_new_compress._entry.5, ptr @snd_soc_new_compress._entry.9, ptr @snd_soc_new_compress._entry_ptr, ptr @snd_soc_new_compress._entry_ptr.11, ptr @snd_soc_new_compress._entry_ptr.15, ptr @snd_soc_new_compress._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @soc_compr_dyn_ops, ptr @.str.12, ptr @soc_compr_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @switch.table.soc_compr_trigger_fe], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_new_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_new_compress._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_new_compress._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_compr_dyn_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_compr_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_new_compress._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.soc_compr_trigger_fe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_new_compress(ptr noundef %rtd, i32 noundef %num) #0 align 64 {
entry:
  %be_pcm = alloca ptr, align 4
  %new_name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %2 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %be_pcm) #5
  %8 = ptrtoint ptr %be_pcm to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %be_pcm, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %new_name) #5
  %9 = call ptr @memset(ptr %new_name, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.do.end10_crit_edge, label %lor.lhs.false

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 10
  %10 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp ugt i32 %11, 1
  br i1 %cmp7, label %lor.lhs.false.do.end10_crit_edge, label %if.end

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @snd_soc_dai_stream_valid(ptr noundef %5, i32 noundef 0) #5
  br i1 %call, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call zeroext i1 @snd_soc_dai_stream_valid(ptr noundef %7, i32 noundef 0) #5
  %not.call11 = xor i1 %call11, true
  %spec.select = zext i1 %not.call11 to i32
  %spec.select214 = zext i1 %call11 to i32
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end.if.end13_crit_edge
  %tobool.not = phi i32 [ 1, %if.end.if.end13_crit_edge ], [ %spec.select, %land.lhs.true ]
  %playback.0 = phi i32 [ 0, %if.end.if.end13_crit_edge ], [ %spec.select214, %land.lhs.true ]
  %call14 = tail call zeroext i1 @snd_soc_dai_stream_valid(ptr noundef %5, i32 noundef 1) #5
  br i1 %call14, label %land.lhs.true15, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true15:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call zeroext i1 @snd_soc_dai_stream_valid(ptr noundef %7, i32 noundef 1) #5
  %spec.select215 = zext i1 %call16 to i32
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true15, %if.end13.if.end18_crit_edge
  %capture.0 = phi i32 [ 0, %if.end13.if.end18_crit_edge ], [ %spec.select215, %land.lhs.true15 ]
  %add19 = add nuw nsw i32 %capture.0, %playback.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add19)
  %cmp20.not = icmp eq i32 %add19, 1
  %card30 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %16 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card30, align 4
  %dev31 = getelementptr inbounds %struct.snd_soc_card, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev31, align 4
  br i1 %cmp20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef %playback.0, i32 noundef %capture.0) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 1128, i32 noundef 3520) #5
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %if.end27.cleanup_crit_edge, label %if.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %20 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card30, align 4
  %dev37 = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev37, align 4
  %call.i216 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 52, i32 noundef 3520) #5
  %ops = getelementptr inbounds %struct.snd_compr, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i216, ptr %ops, align 8
  %tobool40.not = icmp eq ptr %call.i216, null
  br i1 %tobool40.not, label %if.end35.cleanup_crit_edge, label %if.end42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %25 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dai_link, align 4
  %dynamic = getelementptr inbounds %struct.snd_soc_dai_link, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load i32, ptr %dynamic, align 4
  %28 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool43.not = icmp eq i32 %28, 0
  %stream_name95 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %stream_name95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream_name95, align 4
  br i1 %tobool43.not, label %if.else92, label %if.then44

if.then44:                                        ; preds = %if.end42
  %call46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %new_name, i32 noundef 64, ptr noundef nonnull @.str.8, ptr noundef %30)
  %31 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card30, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %snd_card, align 4
  %35 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dai_link, align 4
  %dpcm_playback = getelementptr inbounds %struct.snd_soc_dai_link, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %dpcm_playback to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load50 = load i32, ptr %dpcm_playback, align 4
  %bf.lshr51 = lshr i32 %bf.load50, 21
  %bf.clear52 = and i32 %bf.lshr51, 1
  %bf.lshr55 = lshr i32 %bf.load50, 22
  %bf.clear56 = and i32 %bf.lshr55, 1
  %call57 = call i32 @snd_pcm_new_internal(ptr noundef %34, ptr noundef nonnull %new_name, i32 noundef %num, i32 noundef %bf.clear52, i32 noundef %bf.clear56, ptr noundef nonnull %be_pcm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end66

do.end62:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card30, align 4
  %dev64 = getelementptr inbounds %struct.snd_soc_card, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev64, align 4
  %42 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dai_link, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.10, ptr noundef %45, i32 noundef %call57) #8
  br label %cleanup

if.end66:                                         ; preds = %if.then44
  %46 = ptrtoint ptr %be_pcm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %be_pcm, align 4
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %48 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %pcm, align 4
  %fe_compr = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 23
  %49 = ptrtoint ptr %fe_compr to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load67 = load i8, ptr %fe_compr, align 4
  %bf.set = or i8 %bf.load67, 64
  store i8 %bf.set, ptr %fe_compr, align 4
  %50 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dai_link, align 4
  %dpcm_playback70 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %51, i32 0, i32 18
  %52 = ptrtoint ptr %dpcm_playback70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load71 = load i32, ptr %dpcm_playback70, align 4
  %53 = and i32 %bf.load71, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool74.not = icmp eq i32 %53, 0
  br i1 %tobool74.not, label %if.else77, label %if.then75

if.then75:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %substream = getelementptr inbounds %struct.snd_pcm, ptr %47, i32 0, i32 8, i32 0, i32 4
  br label %if.end90.sink.split

if.else77:                                        ; preds = %if.end66
  %54 = and i32 %bf.load71, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool83.not = icmp eq i32 %54, 0
  br i1 %tobool83.not, label %if.else77.if.end90_crit_edge, label %if.then84

if.else77.if.end90_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then84:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #7
  %substream87 = getelementptr %struct.snd_pcm, ptr %47, i32 0, i32 8, i32 1, i32 4
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %if.then84, %if.then75
  %substream87.sink = phi ptr [ %substream87, %if.then84 ], [ %substream, %if.then75 ]
  %55 = ptrtoint ptr %substream87.sink to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %substream87.sink, align 8
  %private_data88 = getelementptr inbounds %struct.snd_pcm_substream, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %private_data88 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rtd, ptr %private_data88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.else77.if.end90_crit_edge
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 8
  %60 = call ptr @memcpy(ptr %59, ptr @soc_compr_dyn_ops, i32 52)
  br label %if.end99

if.else92:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %call97 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %new_name, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %30, ptr noundef %62, i32 noundef %num)
  %63 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops, align 8
  %65 = call ptr @memcpy(ptr %64, ptr @soc_compr_ops, i32 52)
  br label %if.end99

if.end99:                                         ; preds = %if.else92, %if.end90
  %num_components = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 24
  %66 = ptrtoint ptr %num_components to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_components, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp100218 = icmp sgt i32 %67, 0
  br i1 %cmp100218, label %if.end99.land.rhs_crit_edge, label %if.end99.for.end_crit_edge

if.end99.for.end_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end99.land.rhs_crit_edge:                      ; preds = %if.end99
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end99.land.rhs_crit_edge
  %i.0219 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %if.end99.land.rhs_crit_edge ]
  %arrayidx101 = getelementptr %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 25, i32 %i.0219
  %68 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx101, align 4
  %tobool102.not = icmp eq ptr %69, null
  br i1 %tobool102.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver, align 4
  %compress_ops = getelementptr inbounds %struct.snd_soc_component_driver, ptr %71, i32 0, i32 38
  %72 = ptrtoint ptr %compress_ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %compress_ops, align 4
  %tobool103.not = icmp eq ptr %73, null
  br i1 %tobool103.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false104

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false104:                                 ; preds = %for.body
  %copy = getelementptr inbounds %struct.snd_compress_ops, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %copy, align 4
  %tobool107.not = icmp eq ptr %75, null
  br i1 %tobool107.not, label %lor.lhs.false104.for.inc_crit_edge, label %if.end109

lor.lhs.false104.for.inc_crit_edge:               ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end109:                                        ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops, align 8
  %copy111 = getelementptr inbounds %struct.snd_compr_ops, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %copy111 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @snd_soc_component_compr_copy, ptr %copy111, align 4
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false104.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc, %67
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end109, %land.rhs.for.end_crit_edge, %if.end99.for.end_crit_edge
  %79 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card30, align 4
  %snd_card113 = getelementptr inbounds %struct.snd_soc_card, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %snd_card113 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %snd_card113, align 4
  %call115 = call i32 @snd_compress_new(ptr noundef %82, i32 noundef %num, i32 noundef %tobool.not, ptr noundef nonnull %new_name, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then117, label %if.end128

if.then117:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dais, align 4
  %85 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_cpus, align 4
  %arrayidx121 = getelementptr ptr, ptr %84, i32 %86
  %87 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx121, align 4
  %component122 = getelementptr inbounds %struct.snd_soc_dai, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %component122 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %component122, align 4
  %dev126 = getelementptr inbounds %struct.snd_soc_component, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev126, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.14, ptr noundef %94, i32 noundef %call115) #8
  br label %cleanup

if.end128:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %close_delayed_work_func = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 15
  %95 = ptrtoint ptr %close_delayed_work_func to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @snd_soc_close_delayed_work, ptr %close_delayed_work_func, align 4
  %compr129 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 8
  %96 = ptrtoint ptr %compr129 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %compr129, align 4
  %private_data130 = getelementptr inbounds %struct.snd_compr, ptr %call.i, i32 0, i32 3
  %97 = ptrtoint ptr %private_data130 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %rtd, ptr %private_data130, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_soc_new_compress.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_soc_new_compress, %if.then136)) #5
          to label %cleanup [label %if.then136], !srcloc !44

if.then136:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %card30, align 4
  %dev138 = getelementptr inbounds %struct.snd_soc_card, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev138, align 4
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %5, align 4
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_soc_new_compress.__UNIQUE_ID_ddebug241, ptr noundef %101, ptr noundef nonnull @.str.17, ptr noundef %103, ptr noundef %105) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %if.end128, %if.then117, %do.end62, %if.end35.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end24, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %do.end24 ], [ %call57, %do.end62 ], [ %call115, %if.then117 ], [ -12, %if.end27.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ], [ 0, %if.then136 ], [ 0, %if.end128 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %new_name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %be_pcm) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_soc_dai_stream_valid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new_internal(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_copy(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_compress_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_close_delayed_work(ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_open_fe(ptr noundef %cstream) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 %5, i32 4
  %6 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream, align 8
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list) #5
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !43
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %mutex = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 1) #5
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime, align 4
  %arrayidx4 = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %5
  %runtime5 = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %5, i32 3
  %17 = ptrtoint ptr %runtime5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %runtime5, align 4
  %call = call i32 @dpcm_path_get(ptr noundef %1, i32 noundef %5, ptr noundef nonnull %list) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.be_err_crit_edge, label %if.end

entry.be_err_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %be_err

if.end:                                           ; preds = %entry
  %call6 = call i32 @dpcm_process_paths(ptr noundef %1, i32 noundef %5, ptr noundef nonnull %list, i32 noundef 1) #5
  %18 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime, align 4
  %20 = ptrtoint ptr %runtime5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %runtime5, align 4
  %runtime_update = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %5, i32 5
  %21 = ptrtoint ptr %runtime_update to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %runtime_update, align 4
  %call13 = call i32 @dpcm_be_dai_startup(ptr noundef %1, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %for.cond.preheader, label %if.end30

for.cond.preheader:                               ; preds = %if.end
  %22 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn129 = load ptr, ptr %arrayidx4, align 4
  %cmp21.not130 = icmp eq ptr %.pn129, %arrayidx4
  br i1 %cmp21.not130, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn131 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn129, %for.cond.preheader.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn131, i32 -4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %state, align 4
  %24 = ptrtoint ptr %.pn131 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn131, align 4
  %cmp21.not = icmp eq ptr %.pn, %arrayidx4
  br i1 %cmp21.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @dpcm_be_disconnect(ptr noundef %1, i32 noundef %5) #5
  %25 = ptrtoint ptr %runtime5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %runtime5, align 4
  br label %out

if.end30:                                         ; preds = %if.end
  %call31 = call i32 @snd_soc_dai_compr_startup(ptr noundef %11, ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.out_crit_edge, label %if.end34

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end34:                                         ; preds = %if.end30
  %26 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private_data, align 4
  %num_components.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_components.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp14.i = icmp sgt i32 %29, 0
  br i1 %cmp14.i, label %if.end34.land.rhs.i_crit_edge, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end34.land.rhs.i_crit_edge:                    ; preds = %if.end34
  br label %land.rhs.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %30 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_components.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %31
  br i1 %cmp.i, label %for.cond.i.land.rhs.i_crit_edge, label %for.cond.i.if.end38_crit_edge

for.cond.i.if.end38_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond.i.land.rhs.i_crit_edge, %if.end34.land.rhs.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.cond.i.land.rhs.i_crit_edge ], [ 0, %if.end34.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_pcm_runtime, ptr %27, i32 0, i32 25, i32 %i.016.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %land.rhs.i.if.end38_crit_edge, label %for.body.i

land.rhs.i.if.end38_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

for.body.i:                                       ; preds = %land.rhs.i
  %call.i = call i32 @snd_soc_component_module_get(ptr noundef nonnull %33, ptr noundef %cstream, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.open_err_crit_edge, label %if.end.i

for.body.i.open_err_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %open_err

if.end.i:                                         ; preds = %for.body.i
  %call2.i = call i32 @snd_soc_component_compr_open(ptr noundef nonnull %33, ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.open_err_crit_edge, label %for.cond.i

if.end.i.open_err_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %open_err

if.end38:                                         ; preds = %land.rhs.i.if.end38_crit_edge, %for.cond.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  %call39 = call i32 @snd_soc_link_compr_startup(ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %machine_err, label %if.end42

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void @dpcm_clear_pending_state(ptr noundef %1, i32 noundef %5) #5
  call void @dpcm_path_put(ptr noundef nonnull %list) #5
  %state45 = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %5, i32 6
  %34 = ptrtoint ptr %state45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state45, align 4
  %35 = ptrtoint ptr %runtime_update to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %runtime_update, align 4
  %36 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %37, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcm_subclass, align 4
  call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %39) #5
  call void @snd_soc_runtime_action(ptr noundef %1, i32 noundef %5, i32 noundef 1) #5
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %pcm_mutex52 = getelementptr inbounds %struct.snd_soc_card, ptr %41, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %pcm_mutex52) #5
  br label %cleanup

machine_err:                                      ; preds = %if.end38
  %42 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private_data, align 4
  %num_components.i119 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %num_components.i119 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_components.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp8.i = icmp sgt i32 %45, 0
  br i1 %cmp8.i, label %machine_err.land.rhs.i122_crit_edge, label %machine_err.open_err_crit_edge

machine_err.open_err_crit_edge:                   ; preds = %machine_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %open_err

machine_err.land.rhs.i122_crit_edge:              ; preds = %machine_err
  br label %land.rhs.i122

land.rhs.i122:                                    ; preds = %for.body.i125.land.rhs.i122_crit_edge, %machine_err.land.rhs.i122_crit_edge
  %i.09.i = phi i32 [ %inc.i123, %for.body.i125.land.rhs.i122_crit_edge ], [ 0, %machine_err.land.rhs.i122_crit_edge ]
  %arrayidx.i120 = getelementptr %struct.snd_soc_pcm_runtime, ptr %43, i32 0, i32 25, i32 %i.09.i
  %46 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i120, align 4
  %tobool.not.i121 = icmp eq ptr %47, null
  br i1 %tobool.not.i121, label %land.rhs.i122.open_err_crit_edge, label %for.body.i125

land.rhs.i122.open_err_crit_edge:                 ; preds = %land.rhs.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %open_err

for.body.i125:                                    ; preds = %land.rhs.i122
  call void @snd_soc_component_compr_free(ptr noundef nonnull %47, ptr noundef %cstream, i32 noundef 1) #5
  call void @snd_soc_component_module_put(ptr noundef nonnull %47, ptr noundef %cstream, i32 noundef 1, i32 noundef 1) #5
  %inc.i123 = add nuw nsw i32 %i.09.i, 1
  %48 = ptrtoint ptr %num_components.i119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_components.i119, align 4
  %cmp.i124 = icmp slt i32 %inc.i123, %49
  br i1 %cmp.i124, label %for.body.i125.land.rhs.i122_crit_edge, label %for.body.i125.open_err_crit_edge

for.body.i125.open_err_crit_edge:                 ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %open_err

for.body.i125.land.rhs.i122_crit_edge:            ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i122

open_err:                                         ; preds = %for.body.i125.open_err_crit_edge, %land.rhs.i122.open_err_crit_edge, %machine_err.open_err_crit_edge, %if.end.i.open_err_crit_edge, %for.body.i.open_err_crit_edge
  %ret.0 = phi i32 [ %call39, %machine_err.open_err_crit_edge ], [ %call39, %land.rhs.i122.open_err_crit_edge ], [ %call39, %for.body.i125.open_err_crit_edge ], [ %call.i, %for.body.i.open_err_crit_edge ], [ %call2.i, %if.end.i.open_err_crit_edge ]
  call void @snd_soc_dai_compr_shutdown(ptr noundef %11, ptr noundef %cstream, i32 noundef 1) #5
  br label %out

out:                                              ; preds = %open_err, %if.end30.out_crit_edge, %for.end
  %ret.1 = phi i32 [ %call13, %for.end ], [ %call31, %if.end30.out_crit_edge ], [ %ret.0, %open_err ]
  call void @dpcm_path_put(ptr noundef nonnull %list) #5
  br label %be_err

be_err:                                           ; preds = %out, %entry.be_err_crit_edge
  %ret.2 = phi i32 [ %call, %entry.be_err_crit_edge ], [ %ret.1, %out ]
  %runtime_update57 = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %5, i32 5
  %50 = ptrtoint ptr %runtime_update57 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %runtime_update57, align 4
  br label %cleanup

cleanup:                                          ; preds = %be_err, %if.end42
  %retval.0 = phi i32 [ %ret.2, %be_err ], [ 0, %if.end42 ]
  %51 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card, align 4
  %mutex59 = getelementptr inbounds %struct.snd_soc_card, ptr %52, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %mutex59) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_free_fe(ptr noundef %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %mutex = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 1) #5
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %13) #5
  tail call void @snd_soc_runtime_action(ptr noundef %1, i32 noundef %7, i32 noundef -1) #5
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %pcm_mutex4 = getelementptr inbounds %struct.snd_soc_card, ptr %15, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex4) #5
  %arrayidx6 = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %7
  %runtime_update = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %7, i32 5
  %16 = ptrtoint ptr %runtime_update to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %runtime_update, align 4
  tail call void @dpcm_be_dai_hw_free(ptr noundef %1, i32 noundef %7) #5
  tail call void @dpcm_be_dai_stop(ptr noundef %1, i32 noundef %7, i32 noundef 1, ptr noundef null) #5
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn59 = load ptr, ptr %arrayidx6, align 4
  %cmp.not60 = icmp eq ptr %.pn59, %arrayidx6
  br i1 %cmp.not60, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn61 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn59, %entry.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn61, i32 -4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 4
  %19 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn61, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx6
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call = tail call i32 @dpcm_dapm_stream_event(ptr noundef %1, i32 noundef %7, i32 noundef 2) #5
  %state19 = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %7, i32 6
  %20 = ptrtoint ptr %state19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9, ptr %state19, align 4
  %21 = ptrtoint ptr %runtime_update to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %runtime_update, align 4
  tail call void @dpcm_be_disconnect(ptr noundef %1, i32 noundef %7) #5
  %runtime = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %7, i32 3
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %runtime, align 4
  tail call void @snd_soc_link_compr_shutdown(ptr noundef %cstream, i32 noundef 0) #5
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private_data, align 4
  %num_components.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_components.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.i = icmp sgt i32 %26, 0
  br i1 %cmp8.i, label %for.end.land.rhs.i_crit_edge, label %for.end.snd_soc_compr_components_free.exit_crit_edge

for.end.snd_soc_compr_components_free.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_soc_compr_components_free.exit

for.end.land.rhs.i_crit_edge:                     ; preds = %for.end
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %for.end.land.rhs.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.land.rhs.i_crit_edge ], [ 0, %for.end.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_pcm_runtime, ptr %24, i32 0, i32 25, i32 %i.09.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %land.rhs.i.snd_soc_compr_components_free.exit_crit_edge, label %for.body.i

land.rhs.i.snd_soc_compr_components_free.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_soc_compr_components_free.exit

for.body.i:                                       ; preds = %land.rhs.i
  tail call void @snd_soc_component_compr_free(ptr noundef nonnull %28, ptr noundef %cstream, i32 noundef 0) #5
  tail call void @snd_soc_component_module_put(ptr noundef nonnull %28, ptr noundef %cstream, i32 noundef 1, i32 noundef 0) #5
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %29 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_components.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %30
  br i1 %cmp.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.snd_soc_compr_components_free.exit_crit_edge

for.body.i.snd_soc_compr_components_free.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_soc_compr_components_free.exit

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

snd_soc_compr_components_free.exit:               ; preds = %for.body.i.snd_soc_compr_components_free.exit_crit_edge, %land.rhs.i.snd_soc_compr_components_free.exit_crit_edge, %for.end.snd_soc_compr_components_free.exit_crit_edge
  tail call void @snd_soc_dai_compr_shutdown(ptr noundef %5, ptr noundef %cstream, i32 noundef 0) #5
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %mutex26 = getelementptr inbounds %struct.snd_soc_card, ptr %32, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mutex26) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_set_params_fe(ptr noundef %cstream, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 %5, i32 4
  %6 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream, align 8
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %mutex = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 1) #5
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream3, align 4
  %hw_params = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %15, i32 4
  %16 = call ptr @memset(ptr %hw_params, i32 0, i32 604)
  %runtime_update = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %5, i32 5
  %17 = ptrtoint ptr %runtime_update to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %runtime_update, align 4
  %call = tail call i32 @dpcm_be_dai_hw_params(ptr noundef %1, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @dpcm_be_dai_prepare(ptr noundef %1, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @snd_soc_dai_compr_set_params(ptr noundef %11, ptr noundef %cstream, ptr noundef %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.out_crit_edge, label %if.end14

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @snd_soc_component_compr_set_params(ptr noundef %cstream, ptr noundef %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @snd_soc_link_compr_set_params(ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.out_crit_edge, label %if.end22

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @dpcm_dapm_stream_event(ptr noundef %1, i32 noundef %5, i32 noundef 1) #5
  %state = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %5, i32 6
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end22, %if.end18.out_crit_edge, %if.end14.out_crit_edge, %if.end10.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call7, %if.end.out_crit_edge ], [ %call11, %if.end10.out_crit_edge ], [ %call15, %if.end14.out_crit_edge ], [ %call19, %if.end18.out_crit_edge ], [ %call19, %if.end22 ]
  %19 = ptrtoint ptr %runtime_update to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %runtime_update, align 4
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %mutex30 = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mutex30) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_get_params(ptr noundef %cstream, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %9) #5
  %call = tail call i32 @snd_soc_dai_compr_get_params(ptr noundef %5, ptr noundef %cstream, ptr noundef %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @snd_soc_component_compr_get_params(ptr noundef %cstream, ptr noundef %params) #5
  br label %err

err:                                              ; preds = %if.end, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_crit_edge ], [ %call2, %if.end ]
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %pcm_mutex4 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex4) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_set_metadata(ptr noundef %cstream, ptr noundef %metadata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @snd_soc_dai_compr_set_metadata(ptr noundef %5, ptr noundef %cstream, ptr noundef %metadata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @snd_soc_component_compr_set_metadata(ptr noundef %cstream, ptr noundef %metadata) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_get_metadata(ptr noundef %cstream, ptr noundef %metadata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @snd_soc_dai_compr_get_metadata(ptr noundef %5, ptr noundef %cstream, ptr noundef %metadata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @snd_soc_component_compr_get_metadata(ptr noundef %cstream, ptr noundef %metadata) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_trigger_fe(ptr noundef %cstream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end [
    i32 9, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge55
  ]

entry.if.then_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge55
  %call = tail call i32 @snd_soc_component_compr_trigger(ptr noundef %cstream, i32 noundef %cmd) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dais, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %mutex = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 1) #5
  %call2 = tail call i32 @snd_soc_dai_compr_trigger(ptr noundef %8, ptr noundef %cstream, i32 noundef %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @snd_soc_component_compr_trigger(ptr noundef %cstream, i32 noundef %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9:                                          ; preds = %if.end5
  %runtime_update = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %3, i32 5
  %11 = ptrtoint ptr %runtime_update to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %runtime_update, align 4
  %call11 = tail call i32 @dpcm_be_dai_trigger(ptr noundef %1, i32 noundef %3, i32 noundef %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %12 = icmp ult i32 %cmd, 7
  br i1 %12, label %switch.hole_check, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

switch.hole_check:                                ; preds = %if.end9
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 123, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.out_crit_edge, label %switch.lookup

switch.hole_check.out_crit_edge:                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.soc_compr_trigger_fe, i32 0, i32 %cmd
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %state = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %3, i32 6
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load, ptr %state, align 4
  br label %out

out:                                              ; preds = %switch.lookup, %switch.hole_check.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call6, %if.end5.out_crit_edge ], [ %call11, %if.end9.out_crit_edge ], [ %call11, %switch.lookup ], [ %call11, %switch.hole_check.out_crit_edge ]
  %runtime_update24 = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %3, i32 5
  %16 = ptrtoint ptr %runtime_update24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %runtime_update24, align 4
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %mutex26 = getelementptr inbounds %struct.snd_soc_card, ptr %18, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mutex26) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_pointer(ptr noundef %cstream, ptr noundef %tstamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %9) #5
  %call = tail call i32 @snd_soc_dai_compr_pointer(ptr noundef %5, ptr noundef %cstream, ptr noundef %tstamp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @snd_soc_component_compr_pointer(ptr noundef %cstream, ptr noundef %tstamp) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call2, %if.end ]
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %pcm_mutex4 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex4) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_ack(ptr noundef %cstream, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %9) #5
  %call = tail call i32 @snd_soc_dai_compr_ack(ptr noundef %5, ptr noundef %cstream, i32 noundef %bytes) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @snd_soc_component_compr_ack(ptr noundef %cstream, i32 noundef %bytes) #5
  br label %err

err:                                              ; preds = %if.end, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_crit_edge ], [ %call2, %if.end ]
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %pcm_mutex4 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex4) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_get_caps(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_get_codec_caps(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcm_path_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcm_process_paths(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcm_be_dai_startup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpcm_be_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_startup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_link_compr_startup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpcm_clear_pending_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpcm_path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_compr_shutdown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_module_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_runtime_action(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_compr_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_module_put(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpcm_be_dai_hw_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpcm_be_dai_stop(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcm_dapm_stream_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_link_compr_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcm_be_dai_hw_params(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcm_be_dai_prepare(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_set_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_set_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_link_compr_set_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_get_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_get_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_set_metadata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_set_metadata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_get_metadata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_get_metadata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_trigger(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_trigger(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcm_be_dai_trigger(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_pointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_pointer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_compr_ack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_compr_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_open(ptr noundef %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  %call = tail call i32 @snd_soc_pcm_component_pm_runtime_get(ptr noundef %1, ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.if.then17_crit_edge, label %if.end

entry.if.then17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end:                                           ; preds = %entry
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %11) #5
  %call2 = tail call i32 @snd_soc_dai_compr_startup(ptr noundef %5, ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.err_no_lock_crit_edge, label %if.end5

if.end.err_no_lock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_no_lock

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %num_components.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_components.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.i = icmp sgt i32 %15, 0
  br i1 %cmp14.i, label %if.end5.land.rhs.i_crit_edge, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end5.land.rhs.i_crit_edge:                     ; preds = %if.end5
  br label %land.rhs.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %16 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_components.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.cond.i.land.rhs.i_crit_edge, label %for.cond.i.if.end9_crit_edge

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond.i.land.rhs.i_crit_edge, %if.end5.land.rhs.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.cond.i.land.rhs.i_crit_edge ], [ 0, %if.end5.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_pcm_runtime, ptr %13, i32 0, i32 25, i32 %i.016.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %land.rhs.i.if.end9_crit_edge, label %for.body.i

land.rhs.i.if.end9_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

for.body.i:                                       ; preds = %land.rhs.i
  %call.i = tail call i32 @snd_soc_component_module_get(ptr noundef nonnull %19, ptr noundef %cstream, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.err_no_lock_crit_edge, label %if.end.i

for.body.i.err_no_lock_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_no_lock

if.end.i:                                         ; preds = %for.body.i
  %call2.i = tail call i32 @snd_soc_component_compr_open(ptr noundef nonnull %19, ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.err_no_lock_crit_edge, label %for.cond.i

if.end.i.err_no_lock_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_no_lock

if.end9:                                          ; preds = %land.rhs.i.if.end9_crit_edge, %for.cond.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %call10 = tail call i32 @snd_soc_link_compr_startup(ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.err_no_lock_crit_edge, label %if.end13

if.end9.err_no_lock_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_no_lock

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_soc_runtime_action(ptr noundef %1, i32 noundef %7, i32 noundef 1) #5
  br label %err_no_lock

err_no_lock:                                      ; preds = %if.end13, %if.end9.err_no_lock_crit_edge, %if.end.i.err_no_lock_crit_edge, %for.body.i.err_no_lock_crit_edge, %if.end.err_no_lock_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_no_lock_crit_edge ], [ %call10, %if.end9.err_no_lock_crit_edge ], [ %call10, %if.end13 ], [ %call.i, %for.body.i.err_no_lock_crit_edge ], [ %call2.i, %if.end.i.err_no_lock_crit_edge ]
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %pcm_mutex15 = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp16 = icmp slt i32 %ret.0, 0
  br i1 %cmp16, label %err_no_lock.if.then17_crit_edge, label %err_no_lock.if.end19_crit_edge

err_no_lock.if.end19_crit_edge:                   ; preds = %err_no_lock
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

err_no_lock.if.then17_crit_edge:                  ; preds = %err_no_lock
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then17:                                        ; preds = %err_no_lock.if.then17_crit_edge, %entry.if.then17_crit_edge
  %ret.141 = phi i32 [ %ret.0, %err_no_lock.if.then17_crit_edge ], [ %call, %entry.if.then17_crit_edge ]
  tail call fastcc void @soc_compr_clean(ptr noundef %cstream, i32 noundef 1)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %err_no_lock.if.end19_crit_edge
  %ret.140 = phi i32 [ %ret.141, %if.then17 ], [ %ret.0, %err_no_lock.if.end19_crit_edge ]
  ret i32 %ret.140
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_free(ptr noundef %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @soc_compr_clean(ptr noundef %cstream, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_set_params(ptr noundef %cstream, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %11) #5
  %call = tail call i32 @snd_soc_dai_compr_set_params(ptr noundef %5, ptr noundef %cstream, ptr noundef %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_compr_set_params(ptr noundef %cstream, ptr noundef %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.err_crit_edge, label %if.end5

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @snd_soc_link_compr_set_params(ptr noundef %cstream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.err_crit_edge, label %if.end9

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_soc_dapm_stream_event(ptr noundef %1, i32 noundef %7, i32 noundef 1) #5
  %pop_wait = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %pop_wait to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %pop_wait, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %pop_wait, align 4
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %pcm_mutex11 = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex11) #5
  %delayed_work = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 14
  %call12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work) #5
  br label %cleanup

err:                                              ; preds = %if.end5.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_crit_edge ], [ %call2, %if.end.err_crit_edge ], [ %call6, %if.end5.err_crit_edge ]
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %pcm_mutex14 = getelementptr inbounds %struct.snd_soc_card, ptr %16, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex14) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end9
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_compr_trigger(ptr noundef %cstream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %10 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %direction, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %15) #5
  %call = tail call i32 @snd_soc_component_compr_trigger(ptr noundef %cstream, i32 noundef %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @snd_soc_dai_compr_trigger(ptr noundef %9, ptr noundef %cstream, i32 noundef %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end7:                                          ; preds = %if.end
  %16 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %cmd, label %if.end7.out_crit_edge [
    i32 1, label %if.end7.out.sink.split_crit_edge
    i32 0, label %sw.bb9
  ]

if.end7.out.sink.split_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %sw.bb9, %if.end7.out.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb9 ], [ 0, %if.end7.out.sink.split_crit_edge ]
  %call8 = tail call i32 @snd_soc_dai_digital_mute(ptr noundef %7, i32 noundef %.sink, i32 noundef %11) #5
  br label %out

out:                                              ; preds = %out.sink.split, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end.out_crit_edge ], [ %call4, %if.end7.out_crit_edge ], [ %call4, %out.sink.split ]
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %pcm_mutex12 = getelementptr inbounds %struct.snd_soc_card, ptr %18, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex12) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_pcm_component_pm_runtime_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @soc_compr_clean(ptr noundef %cstream, i32 noundef %rollback) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpus, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %10 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %direction, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %pcm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 10
  %pcm_subclass = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %pcm_subclass to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_subclass, align 4
  tail call void @mutex_lock_nested(ptr noundef %pcm_mutex, i32 noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rollback)
  %tobool.not = icmp eq i32 %rollback, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_soc_runtime_action(ptr noundef %1, i32 noundef %11, i32 noundef -1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @snd_soc_dai_digital_mute(ptr noundef %9, i32 noundef 1, i32 noundef %11) #5
  %call4 = tail call i32 @snd_soc_dai_active(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rate = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rate, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @snd_soc_dai_active(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %rate11 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 9
  %17 = ptrtoint ptr %rate11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rate11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  tail call void @snd_soc_link_compr_shutdown(ptr noundef %cstream, i32 noundef %rollback) #5
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data, align 4
  %num_components.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_components.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.i = icmp sgt i32 %21, 0
  br i1 %cmp8.i, label %if.end12.land.rhs.i_crit_edge, label %if.end12.snd_soc_compr_components_free.exit_crit_edge

if.end12.snd_soc_compr_components_free.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_soc_compr_components_free.exit

if.end12.land.rhs.i_crit_edge:                    ; preds = %if.end12
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %if.end12.land.rhs.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.land.rhs.i_crit_edge ], [ 0, %if.end12.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_pcm_runtime, ptr %19, i32 0, i32 25, i32 %i.09.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %land.rhs.i.snd_soc_compr_components_free.exit_crit_edge, label %for.body.i

land.rhs.i.snd_soc_compr_components_free.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_soc_compr_components_free.exit

for.body.i:                                       ; preds = %land.rhs.i
  tail call void @snd_soc_component_compr_free(ptr noundef nonnull %23, ptr noundef %cstream, i32 noundef %rollback) #5
  tail call void @snd_soc_component_module_put(ptr noundef nonnull %23, ptr noundef %cstream, i32 noundef 1, i32 noundef %rollback) #5
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %24 = ptrtoint ptr %num_components.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_components.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.snd_soc_compr_components_free.exit_crit_edge

for.body.i.snd_soc_compr_components_free.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_soc_compr_components_free.exit

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

snd_soc_compr_components_free.exit:               ; preds = %for.body.i.snd_soc_compr_components_free.exit_crit_edge, %land.rhs.i.snd_soc_compr_components_free.exit_crit_edge, %if.end12.snd_soc_compr_components_free.exit_crit_edge
  tail call void @snd_soc_dai_compr_shutdown(ptr noundef %5, ptr noundef %cstream, i32 noundef %rollback) #5
  br i1 %tobool.not, label %if.then14, label %snd_soc_compr_components_free.exit.if.end15_crit_edge

snd_soc_compr_components_free.exit.if.end15_crit_edge: ; preds = %snd_soc_compr_components_free.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %snd_soc_compr_components_free.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_soc_dapm_stream_stop(ptr noundef %1, i32 noundef %11) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %snd_soc_compr_components_free.exit.if.end15_crit_edge
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %pcm_mutex17 = getelementptr inbounds %struct.snd_soc_card, ptr %27, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %pcm_mutex17) #5
  tail call void @snd_soc_pcm_component_pm_runtime_put(ptr noundef %1, ptr noundef %cstream, i32 noundef %rollback) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_digital_mute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dapm_stream_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_pcm_component_pm_runtime_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dapm_stream_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-compress.c", i32 565, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_soc_new_compress._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_soc_new_compress._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/soc-compress.c", i32 583, i32 3}
!10 = !{ptr @snd_soc_new_compress._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_soc_new_compress._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/soc-compress.c", i32 604, i32 40}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/soc-compress.c", i32 611, i32 4}
!16 = !{ptr @snd_soc_new_compress._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_soc_new_compress._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/soc-compress.c", i32 625, i32 40}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/soc-compress.c", i32 644, i32 3}
!22 = !{ptr @snd_soc_new_compress._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @snd_soc_new_compress._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/soc-compress.c", i32 656, i32 2}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @snd_soc_new_compress.__UNIQUE_ID_ddebug241, !25, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!28 = !{ptr @__ksymtab_snd_soc_new_compress, !29, !"__ksymtab_snd_soc_new_compress", i1 false, i1 false}
!29 = !{!"../sound/soc/soc-compress.c", i32 661, i32 1}
!30 = !{ptr @soc_compr_dyn_ops, !31, !"soc_compr_dyn_ops", i1 false, i1 false}
!31 = !{!"../sound/soc/soc-compress.c", i32 522, i32 29}
!32 = !{ptr @soc_compr_ops, !33, !"soc_compr_ops", i1 false, i1 false}
!33 = !{!"../sound/soc/soc-compress.c", i32 507, i32 29}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2148707881, i64 2148707886, i64 2148707899, i64 2148707943, i64 2148707977, i64 2148707998}
