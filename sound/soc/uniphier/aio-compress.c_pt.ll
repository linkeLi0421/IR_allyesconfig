; ModuleID = '/llk/IR_all_yes/sound/soc/uniphier/aio-compress.c_pt.bc'
source_filename = "../sound/soc/uniphier/aio-compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_codec_desc = type { i32, [32 x i32], i32, [32 x i32], i32, i32, i32, i32, i32, i32, [15 x i32] }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.uniphier_aio_chip = type { ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.uniphier_aio = type { ptr, [2 x %struct.uniphier_aio_sub], i32, i32, i32, i32, i32, i32 }
%struct.uniphier_aio_sub = type { ptr, %struct.spinlock, ptr, ptr, ptr, %struct.snd_pcm_hw_params, i32, ptr, %struct.snd_compr_params, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i64, i64, i32, i64, i64, i64, i64 }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_codec_options, [3 x i32] }
%union.snd_codec_options = type { %struct.snd_enc_generic }
%struct.snd_enc_generic = type { i32, [15 x i32] }
%struct.snd_compr = type { ptr, %struct.device, ptr, ptr, ptr, i32, %struct.mutex, i32, i8, [64 x i8], ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.uniphier_aio_swmap = type { i32, i32, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector }
%struct.uniphier_aio_selector = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }
%struct.snd_compr_tstamp = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_compr_caps = type { i32, i32, i32, i32, i32, i32, [32 x i32], [11 x i32] }

@uniphier_aio_compress_ops = dso_local constant { %struct.snd_compress_ops, [44 x i8] } { %struct.snd_compress_ops { ptr @uniphier_aio_compr_open, ptr @uniphier_aio_compr_free, ptr @uniphier_aio_compr_set_params, ptr @uniphier_aio_compr_get_params, ptr null, ptr null, ptr @uniphier_aio_compr_trigger, ptr @uniphier_aio_compr_pointer, ptr @uniphier_aio_compr_copy, ptr null, ptr null, ptr @uniphier_aio_compr_get_caps, ptr @uniphier_aio_compr_get_codec_caps }, [44 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@uniphier_aio_compr_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Codec ID is not supported(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"uniphier_aio_compr_set_params\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/uniphier/aio-compress.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_aio_compr_set_params._entry_ptr = internal global ptr @uniphier_aio_compr_set_params._entry, section ".printk_index", align 4
@uniphier_aio_compr_set_params._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Codec profile is not supported(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@uniphier_aio_compr_set_params._entry_ptr.9 = internal global ptr @uniphier_aio_compr_set_params._entry.7, section ".printk_index", align 4
@uniphier_aio_compr_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 247, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown trigger(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uniphier_aio_compr_trigger\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uniphier_aio_compr_trigger._entry_ptr = internal global ptr @uniphier_aio_compr_trigger._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@caps_iec = internal constant { { i32, i32, <{ %struct.snd_codec_desc, [31 x %struct.snd_codec_desc] }> }, [2808 x i8] } { { i32, i32, <{ %struct.snd_codec_desc, [31 x %struct.snd_codec_desc] }> } { i32 0, i32 1, <{ %struct.snd_codec_desc, [31 x %struct.snd_codec_desc] }> <{ %struct.snd_codec_desc { i32 8, [32 x i32] zeroinitializer, i32 0, [32 x i32] zeroinitializer, i32 0, i32 0, i32 2, i32 78, i32 0, i32 0, [15 x i32] zeroinitializer }, [31 x %struct.snd_codec_desc] zeroinitializer }> }, [2808 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"uniphier_aio_compress_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 428, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 326, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 145, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 150, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 247, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 230, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 214, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 174, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"caps_iec\00", align 1
@___asan_gen_.72 = private constant [37 x i8] c"../sound/soc/uniphier/aio-compress.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 403, i32 42 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @uniphier_aio_compr_set_params._entry, ptr @uniphier_aio_compr_set_params._entry.7, ptr @uniphier_aio_compr_set_params._entry_ptr, ptr @uniphier_aio_compr_set_params._entry_ptr.9, ptr @uniphier_aio_compr_trigger._entry, ptr @uniphier_aio_compr_trigger._entry_ptr, ptr @uniphier_aio_compress_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @caps_iec], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_compress_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_compr_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_compr_set_params._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_compr_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_iec to i32), i32 11144, i32 13952, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_compr_open(ptr nocapture noundef readnone %component, ptr noundef %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %aios.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %aios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aios.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  %arrayidx2 = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15
  %cstream3 = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 7
  %16 = ptrtoint ptr %cstream3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cstream3, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %cstream3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cstream, ptr %cstream3, align 4
  %pass_through = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 12
  %19 = ptrtoint ptr %pass_through to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %pass_through, align 8
  %use_mmap = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 15
  %20 = ptrtoint ptr %use_mmap to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %use_mmap, align 1
  %compr1.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %compr1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %compr1.i, align 4
  %card.i = getelementptr inbounds %struct.snd_compr, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card.i, align 8
  %dev2.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev2.i, align 8
  %27 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dais, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %aios.i.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %aios.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aios.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 1
  %37 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i.i, align 4
  %direction.i = getelementptr inbounds %struct.snd_compr, ptr %22, i32 0, i32 5
  %39 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %direction.i, align 4
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %26, i64 noundef 8589934591) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %26, i64 noundef 8589934591) #9
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3520, i32 noundef 5) #12
  %compr_area.i = getelementptr %struct.uniphier_aio, ptr %36, i32 %38, i32 1, i32 %40, i32 9
  %41 = ptrtoint ptr %compr_area.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i.i.i, ptr %compr_area.i, align 4
  %tobool8.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool8.not.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %swm.i = getelementptr %struct.uniphier_aio, ptr %36, i32 %38, i32 1, i32 %40, i32 2
  %42 = ptrtoint ptr %swm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %swm.i, align 8
  %dir.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dir.i, align 4
  %call.i43.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i.i.i) #9
  br i1 %call.i43.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end10.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i44.i, !prof !43

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.i

if.then.i44.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %26) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i44.i.dev_name.exit.i.i_crit_edge

if.then.i44.i.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %26, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i44.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %49, %if.end.i.i.i ], [ %47, %if.then.i44.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp eq i32 %45, 0
  %spec.select.i = select i1 %cmp.i, i32 1, i32 2
  tail call void @debug_dma_map_single(ptr noundef %26, ptr noundef nonnull %call1.i.i.i.i, i32 noundef 131072) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %call1.i.i.i.i to i32
  %sub.i.i = add i32 %51, 1073741824
  %shr.i.i = lshr exact i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %50, i32 %shr.i.i
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %26, ptr noundef %add.ptr.i.i, i32 noundef 0, i32 noundef 131072, i32 noundef %spec.select.i, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %compr_addr.i = getelementptr %struct.uniphier_aio, ptr %36, i32 %38, i32 1, i32 %40, i32 10
  %52 = ptrtoint ptr %compr_addr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i.i, ptr %compr_addr.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %26, i32 noundef %retval.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i45.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i45.i, label %if.then18.i, label %if.end8

if.then18.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %compr_area.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %compr_area.i, align 4
  tail call void @kfree(ptr noundef %54) #9
  %55 = ptrtoint ptr %compr_area.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %compr_area.i, align 4
  br label %cleanup

if.end8:                                          ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %compr_bytes.i = getelementptr %struct.uniphier_aio, ptr %36, i32 %38, i32 1, i32 %40, i32 11
  %56 = ptrtoint ptr %compr_bytes.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 131072, ptr %compr_bytes.i, align 4
  %call9 = tail call i32 @aio_init(ptr noundef %arrayidx2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then18.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call9, %if.end8 ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.then18.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_compr_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %aios.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %aios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aios.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  %setting.i = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 16
  %16 = ptrtoint ptr %setting.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %setting.i, align 4
  %compr1.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %compr1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %compr1.i, align 4
  %card.i = getelementptr inbounds %struct.snd_compr, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 8
  %dev2.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2.i, align 8
  %23 = load ptr, ptr %dais, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dev.i.i.i19 = getelementptr inbounds %struct.snd_soc_dai, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i.i19, align 4
  %driver_data.i.i.i.i20 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i20, align 4
  %aios.i.i21 = getelementptr inbounds %struct.uniphier_aio_chip, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %aios.i.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aios.i.i21, align 4
  %id.i.i22 = getelementptr inbounds %struct.snd_soc_dai, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %id.i.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i.i22, align 4
  %direction.i23 = getelementptr inbounds %struct.snd_compr, ptr %18, i32 0, i32 5
  %34 = ptrtoint ptr %direction.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %direction.i23, align 4
  %swm.i = getelementptr %struct.uniphier_aio, ptr %31, i32 %33, i32 1, i32 %35, i32 2
  %36 = ptrtoint ptr %swm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %swm.i, align 8
  %dir.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 2
  %compr_addr.i = getelementptr %struct.uniphier_aio, ptr %31, i32 %33, i32 1, i32 %35, i32 10
  %40 = ptrtoint ptr %compr_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %compr_addr.i, align 8
  %compr_bytes.i = getelementptr %struct.uniphier_aio, ptr %31, i32 %33, i32 1, i32 %35, i32 11
  %42 = ptrtoint ptr %compr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %compr_bytes.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %41, i32 noundef %43, i32 noundef %spec.store.select.i, i32 noundef 0) #9
  %compr_area.i = getelementptr %struct.uniphier_aio, ptr %31, i32 %33, i32 1, i32 %35, i32 9
  %44 = ptrtoint ptr %compr_area.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %compr_area.i, align 4
  tail call void @kfree(ptr noundef %45) #9
  %46 = ptrtoint ptr %compr_area.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %compr_area.i, align 4
  %cstream8 = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 7
  %47 = ptrtoint ptr %cstream8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %cstream8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_compr_set_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %aios.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %aios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aios.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.uniphier_aio, ptr %11, i32 %13
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  %arrayidx2 = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %codec = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %21)
  %cmp.not = icmp eq i32 %21, 11
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.2, i32 noundef %21) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %profile = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp7.not = icmp eq i32 %23, 2
  br i1 %cmp7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.8, i32 noundef %23) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %iec_pc = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 13
  %24 = ptrtoint ptr %iec_pc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 7, ptr %iec_pc, align 4
  %cparams = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 8
  %25 = call ptr @memcpy(ptr %cparams, ptr %params, i32 132)
  %setting = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 16
  %26 = ptrtoint ptr %setting to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %setting, align 4
  tail call void @aio_port_reset(ptr noundef %arrayidx2) #9
  tail call void @aio_src_reset(ptr noundef %arrayidx2) #9
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %29 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %runtime1.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %28, i32 0, i32 9
  %31 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dais.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %aios.i.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %aios.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %aios.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i.i, align 4
  %43 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %direction, align 4
  %arrayidx3.i = getelementptr %struct.uniphier_aio, ptr %40, i32 %42, i32 1, i32 %44
  %fragment_size.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %30, i32 0, i32 4
  %45 = ptrtoint ptr %fragment_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fragment_size.i, align 8
  %call4.i = tail call i32 @aiodma_ch_set_param(ptr noundef %arrayidx3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %do.body5.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5.i:                                       ; preds = %if.end14
  %lock.i = getelementptr %struct.uniphier_aio, ptr %40, i32 %42, i32 1, i32 %44, i32 1
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %compr_addr.i = getelementptr %struct.uniphier_aio, ptr %40, i32 %42, i32 1, i32 %44, i32 10
  %47 = ptrtoint ptr %compr_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %compr_addr.i, align 8
  %conv10.i = zext i32 %48 to i64
  %compr_bytes.i = getelementptr %struct.uniphier_aio, ptr %40, i32 %42, i32 1, i32 %44, i32 11
  %49 = ptrtoint ptr %compr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %compr_bytes.i, align 4
  %add.i = add i32 %50, %48
  %conv12.i = zext i32 %add.i to i64
  %call13.i = tail call i32 @aiodma_rb_set_buffer(ptr noundef %arrayidx3.i, i64 noundef %conv10.i, i64 noundef %conv12.i, i32 noundef %46) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool15.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %do.body5.i.cleanup_crit_edge

do.body5.i.cleanup_crit_edge:                     ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %do.body5.i
  %pass_through.i = getelementptr %struct.uniphier_aio, ptr %40, i32 %42, i32 1, i32 %44, i32 12
  %51 = ptrtoint ptr %pass_through.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pass_through.i, align 8
  %params.i = getelementptr %struct.uniphier_aio, ptr %40, i32 %42, i32 1, i32 %44, i32 5
  %call18.i = tail call i32 @aio_port_set_param(ptr noundef %arrayidx3.i, i32 noundef %52, ptr noundef %params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21.i:                                       ; preds = %if.end17.i
  %iec_pc.i = getelementptr %struct.uniphier_aio, ptr %40, i32 %42, i32 1, i32 %44, i32 13
  %53 = ptrtoint ptr %iec_pc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iec_pc.i, align 4
  %call22.i = tail call i32 @aio_oport_set_stream_type(ptr noundef %arrayidx3.i, i32 noundef %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.cleanup_crit_edge

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @aio_port_set_enable(ptr noundef %arrayidx3.i, i32 noundef 1) #9
  %55 = ptrtoint ptr %pass_through.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pass_through.i, align 8
  %call27.i = tail call i32 @aio_if_set_param(ptr noundef %arrayidx3.i, i32 noundef %56) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25.i, %if.end21.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %do.body5.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %call4.i, %if.end14.cleanup_crit_edge ], [ %call13.i, %do.body5.i.cleanup_crit_edge ], [ %call18.i, %if.end17.i.cleanup_crit_edge ], [ %call22.i, %if.end21.i.cleanup_crit_edge ], [ %call27.i, %if.end25.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_aio_compr_get_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr nocapture noundef writeonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %aios.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %aios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aios.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  %codec = getelementptr %struct.uniphier_aio, ptr %11, i32 %13, i32 1, i32 %15, i32 8, i32 1
  %16 = call ptr @memcpy(ptr %params, ptr %codec, i32 120)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_compr_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %aios.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %aios.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aios.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.uniphier_aio, ptr %13, i32 %15
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %16 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %direction, align 4
  %arrayidx3 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %fragment_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fragment_size, align 8
  %lock = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %24 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end16 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %compr_addr = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 10
  %25 = ptrtoint ptr %compr_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %compr_addr, align 8
  %conv10 = zext i32 %26 to i64
  %compr_bytes = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 11
  %27 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %compr_bytes, align 4
  %conv11 = zext i32 %28 to i64
  tail call void @aiodma_rb_sync(ptr noundef %arrayidx3, i64 noundef %conv10, i64 noundef %conv11, i32 noundef %23) #9
  tail call void @aiodma_ch_set_enable(ptr noundef %arrayidx3, i32 noundef 1) #9
  %running = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 17
  %29 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %running, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %running13 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 17
  %30 = ptrtoint ptr %running13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %running13, align 8
  tail call void @aiodma_ch_set_enable(ptr noundef %arrayidx3, i32 noundef 0) #9
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.10, i32 noundef %cmd) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %sw.bb12, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end16 ], [ 0, %sw.bb12 ], [ 0, %sw.bb ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_compr_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr nocapture noundef writeonly %tstamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %aios.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %aios.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aios.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %16 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %direction, align 4
  %arrayidx3 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17
  %fragment_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fragment_size, align 8
  %lock = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %compr_addr = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 10
  %20 = ptrtoint ptr %compr_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %compr_addr, align 8
  %conv9 = zext i32 %21 to i64
  %compr_bytes = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 11
  %22 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %compr_bytes, align 4
  %conv10 = zext i32 %23 to i64
  tail call void @aiodma_rb_sync(ptr noundef %arrayidx3, i64 noundef %conv9, i64 noundef %conv10, i32 noundef %19) #9
  %swm = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 2
  %24 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp11 = icmp eq i32 %27, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rd_offs = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 18
  %28 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rd_offs, align 8
  %conv13 = trunc i64 %29 to i32
  %rd_total = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 23
  %30 = ptrtoint ptr %rd_total to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rd_total, align 8
  %div33 = lshr i64 %31, 1
  %extract.t36 = trunc i64 %div33 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wr_offs = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 19
  %32 = ptrtoint ptr %wr_offs to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wr_offs, align 8
  %conv15 = trunc i64 %33 to i32
  %rd_total16 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 23
  %34 = ptrtoint ptr %rd_total16 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rd_total16, align 8
  %extract.t35 = trunc i64 %35 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink.off0 = phi i32 [ %extract.t35, %if.else ], [ %extract.t36, %if.then ]
  %pos.0 = phi i32 [ %conv15, %if.else ], [ %conv13, %if.then ]
  %36 = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.off0, ptr %36, align 4
  %38 = ptrtoint ptr %tstamp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %pos.0, ptr %tstamp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_compr_copy(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %compr = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %compr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compr, align 4
  %card = getelementptr inbounds %struct.snd_compr, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dais, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %aios.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %aios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aios.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %22 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %direction, align 4
  %arrayidx3 = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23
  %call4 = tail call i64 @aio_rb_space_to_end(ptr noundef %arrayidx3) #9
  %div135 = lshr i64 %call4, 1
  %conv = trunc i64 %div135 to i32
  %24 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %count)
  %fragment_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fragment_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp6 = icmp ult i32 %24, 4
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %swm = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 2
  %27 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp8 = icmp eq i32 %30, 0
  %compr_addr = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 10
  %31 = ptrtoint ptr %compr_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %compr_addr, align 8
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %wr_offs = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 19
  %33 = ptrtoint ptr %wr_offs to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %wr_offs, align 8
  %35 = trunc i64 %34 to i32
  %conv12 = add i32 %32, %35
  %mul = shl i32 %24, 1
  tail call void @dma_sync_single_for_cpu(ptr noundef %9, i32 noundef %conv12, i32 noundef %mul, i32 noundef 1) #9
  %compr_area.i = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 9
  %36 = ptrtoint ptr %compr_area.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %compr_area.i, align 4
  %38 = ptrtoint ptr %wr_offs to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %wr_offs, align 8
  %idx.ext.i = trunc i64 %39 to i32
  %add.ptr.i = getelementptr i8, ptr %37, i32 %idx.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not62.i = icmp eq i32 %mul, 0
  br i1 %cmp.not62.i, label %if.then10.aio_compr_send_to_hw.exit_crit_edge, label %while.body.lr.ph.i

if.then10.aio_compr_send_to_hw.exit_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %aio_compr_send_to_hw.exit

while.body.lr.ph.i:                               ; preds = %if.then10
  %iec_header7.i = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 14
  %iec_pc.i = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dstsize.addr.065.i = phi i32 [ %mul, %while.body.lr.ph.i ], [ %sub27.i, %if.end23.i.while.body.i_crit_edge ]
  %src.064.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end23.i.while.body.i_crit_edge ]
  %dst.063.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc25.i, %if.end23.i.while.body.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 295) #9
  %add.ptr1.i = getelementptr i32, ptr %buf, i32 %src.064.i
  %40 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !44
  %and.i.i = and i32 %42, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  %43 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr1.i, i32 -1226833921) #9, !srcloc !47
  %asmresult.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %aio_compr_send_to_hw.exit.loopexit.split.loop.exit

if.end.i:                                         ; preds = %while.body.i
  %asmresult2.i = extractvalue { i32, i32 } %43, 1
  %inc.i = add i32 %src.064.i, 1
  %and.i = and i32 %asmresult2.i, 65535
  %shr.i = lshr i32 %asmresult2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 525234936, i32 %asmresult2.i)
  %cmp5.i = icmp eq i32 %asmresult2.i, 525234936
  br i1 %cmp5.i, label %if.end.i.if.end23.i_crit_edge, label %if.else.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end.i
  %44 = ptrtoint ptr %iec_header7.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %iec_header7.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool8.not.i = icmp eq i8 %45, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end23.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %46 = ptrtoint ptr %iec_pc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iec_pc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %and.i)
  %cmp11.not.i = icmp eq i32 %47, %and.i
  br i1 %cmp11.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %48 = ptrtoint ptr %iec_pc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i, ptr %iec_pc.i, align 4
  %call17.i = tail call i32 @aio_oport_set_stream_type(ptr noundef %arrayidx3, i32 noundef %and.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then13.i.if.end23.i_crit_edge, label %if.then13.i.aio_compr_send_to_hw.exit_crit_edge

if.then13.i.aio_compr_send_to_hw.exit_crit_edge:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aio_compr_send_to_hw.exit

if.then13.i.if.end23.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then13.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  %storemerge.i = phi i8 [ 1, %if.end.i.if.end23.i_crit_edge ], [ 0, %if.else.i.if.end23.i_crit_edge ], [ 0, %land.lhs.true.i.if.end23.i_crit_edge ], [ 0, %if.then13.i.if.end23.i_crit_edge ]
  %frm_a.0.i = phi i32 [ 16806648, %if.end.i.if.end23.i_crit_edge ], [ %and.i, %if.else.i.if.end23.i_crit_edge ], [ %and.i, %land.lhs.true.i.if.end23.i_crit_edge ], [ %and.i, %if.then13.i.if.end23.i_crit_edge ]
  %49 = ptrtoint ptr %iec_header7.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %storemerge.i, ptr %iec_header7.i, align 8
  %inc24.i = or i32 %dst.063.i, 1
  %arrayidx.i136 = getelementptr i32, ptr %add.ptr.i, i32 %dst.063.i
  %50 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %frm_a.0.i, ptr %arrayidx.i136, align 4
  %inc25.i = add i32 %dst.063.i, 2
  %arrayidx26.i = getelementptr i32, ptr %add.ptr.i, i32 %inc24.i
  %51 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr.i, ptr %arrayidx26.i, align 4
  %sub27.i = add i32 %dstsize.addr.065.i, -8
  %cmp.not.i = icmp eq i32 %sub27.i, 0
  br i1 %cmp.not.i, label %if.end23.i.aio_compr_send_to_hw.exit_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end23.i.aio_compr_send_to_hw.exit_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aio_compr_send_to_hw.exit

aio_compr_send_to_hw.exit.loopexit.split.loop.exit: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %asmresult.i.le = extractvalue { i32, i32 } %43, 0
  br label %aio_compr_send_to_hw.exit

aio_compr_send_to_hw.exit:                        ; preds = %aio_compr_send_to_hw.exit.loopexit.split.loop.exit, %if.end23.i.aio_compr_send_to_hw.exit_crit_edge, %if.then13.i.aio_compr_send_to_hw.exit_crit_edge, %if.then10.aio_compr_send_to_hw.exit_crit_edge
  %retval.3.i = phi i32 [ 0, %if.then10.aio_compr_send_to_hw.exit_crit_edge ], [ %asmresult.i.le, %aio_compr_send_to_hw.exit.loopexit.split.loop.exit ], [ %call17.i, %if.then13.i.aio_compr_send_to_hw.exit_crit_edge ], [ 0, %if.end23.i.aio_compr_send_to_hw.exit_crit_edge ]
  tail call void @dma_sync_single_for_device(ptr noundef %9, i32 noundef %conv12, i32 noundef %mul, i32 noundef 1) #9
  br label %if.end21

if.else:                                          ; preds = %if.end
  %rd_offs = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 18
  %52 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rd_offs, align 8
  %54 = trunc i64 %53 to i32
  %conv18 = add i32 %32, %54
  tail call void @dma_sync_single_for_cpu(ptr noundef %9, i32 noundef %conv18, i32 noundef %24, i32 noundef 2) #9
  %compr_area = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 9
  %55 = ptrtoint ptr %compr_area to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %compr_area, align 4
  %57 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rd_offs, align 8
  %idx.ext = trunc i64 %58 to i32
  %add.ptr = getelementptr i8, ptr %56, i32 %idx.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.i.i = icmp slt i32 %24, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.else
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !43

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %24, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %24, i32 -1226833920) #14, !srcloc !49
  %asmresult.i.i = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %24) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %24) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %24, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %24, %if.end.i.i.copy_to_user.exit_crit_edge ], [ %24, %if.then27.i.i ], [ %24, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  tail call void @dma_sync_single_for_device(ptr noundef %9, i32 noundef %conv18, i32 noundef %24, i32 noundef 2) #9
  br label %if.end21

if.end21:                                         ; preds = %copy_to_user.exit, %aio_compr_send_to_hw.exit
  %s.0 = phi i32 [ %mul, %aio_compr_send_to_hw.exit ], [ %24, %copy_to_user.exit ]
  %ret.0 = phi i32 [ %retval.3.i, %aio_compr_send_to_hw.exit ], [ %n.addr.0.i, %copy_to_user.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %do.body24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body24:                                        ; preds = %if.end21
  %lock = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 1
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %mul32 = shl i32 %26, 1
  %threshold = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 20
  %60 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul32, ptr %threshold, align 8
  %compr_bytes = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 11
  %61 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %compr_bytes, align 4
  %conv33 = zext i32 %62 to i64
  %call35 = tail call i32 @aiodma_rb_set_threshold(ptr noundef %arrayidx3, i64 noundef %conv33, i32 noundef %mul32) #9
  %63 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %swm, align 8
  %dir37 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %dir37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dir37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp38 = icmp eq i32 %66, 0
  %conv41 = zext i32 %s.0 to i64
  br i1 %cmp38, label %if.then40, label %if.else55

if.then40:                                        ; preds = %do.body24
  %wr_offs42 = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 19
  %67 = ptrtoint ptr %wr_offs42 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %wr_offs42, align 8
  %add43 = add i64 %68, %conv41
  store i64 %add43, ptr %wr_offs42, align 8
  %69 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %compr_bytes, align 4
  %conv46 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add43, i64 %conv46)
  %cmp47.not = icmp ult i64 %add43, %conv46
  br i1 %cmp47.not, label %if.then40.if.end70_crit_edge, label %if.then49

if.then40.if.end70_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then49:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %sub53 = sub i64 %add43, %conv46
  %71 = ptrtoint ptr %wr_offs42 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %sub53, ptr %wr_offs42, align 8
  br label %if.end70

if.else55:                                        ; preds = %do.body24
  %rd_offs57 = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 18
  %72 = ptrtoint ptr %rd_offs57 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rd_offs57, align 8
  %add58 = add i64 %73, %conv41
  store i64 %add58, ptr %rd_offs57, align 8
  %74 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %compr_bytes, align 4
  %conv61 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add58, i64 %conv61)
  %cmp62.not = icmp ult i64 %add58, %conv61
  br i1 %cmp62.not, label %if.else55.if.end70_crit_edge, label %if.then64

if.else55.if.end70_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then64:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  %sub68 = sub i64 %add58, %conv61
  %76 = ptrtoint ptr %rd_offs57 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %sub68, ptr %rd_offs57, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.else55.if.end70_crit_edge, %if.then49, %if.then40.if.end70_crit_edge
  %compr_addr71 = getelementptr %struct.uniphier_aio, ptr %19, i32 %21, i32 1, i32 %23, i32 10
  %77 = ptrtoint ptr %compr_addr71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %compr_addr71, align 8
  %conv72 = zext i32 %78 to i64
  %79 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %compr_bytes, align 4
  %conv74 = zext i32 %80 to i64
  tail call void @aiodma_rb_sync(ptr noundef %arrayidx3, i64 noundef %conv72, i64 noundef %conv74, i32 noundef %26) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.end70 ], [ 0, %entry.cleanup_crit_edge ], [ -14, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @uniphier_aio_compr_get_caps(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %cstream, ptr nocapture noundef writeonly %caps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %caps, align 4
  %min_fragment_size = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 2
  %1 = ptrtoint ptr %min_fragment_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %min_fragment_size, align 4
  %max_fragment_size = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 3
  %2 = ptrtoint ptr %max_fragment_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16384, ptr %max_fragment_size, align 4
  %min_fragments = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 4
  %3 = ptrtoint ptr %min_fragments to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %min_fragments, align 4
  %max_fragments = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 5
  %4 = ptrtoint ptr %max_fragments to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %max_fragments, align 4
  %codecs = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 6
  %5 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %codecs, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_aio_compr_get_codec_caps(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %stream, ptr nocapture noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp eq i32 %1, 11
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = call ptr @memcpy(ptr %codec, ptr @caps_iec, i32 11144)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aio_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @aio_port_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aio_src_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aiodma_ch_set_param(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aiodma_rb_set_buffer(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aio_port_set_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aio_oport_set_stream_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aio_port_set_enable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aio_if_set_param(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @aiodma_rb_sync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aiodma_ch_set_enable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @aio_rb_space_to_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aiodma_rb_set_threshold(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @uniphier_aio_compress_ops, !1, !"uniphier_aio_compress_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/uniphier/aio-compress.c", i32 428, i32 31}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/uniphier/aio-compress.c", i32 145, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @uniphier_aio_compr_set_params._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @uniphier_aio_compr_set_params._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/uniphier/aio-compress.c", i32 150, i32 3}
!16 = !{ptr @uniphier_aio_compr_set_params._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @uniphier_aio_compr_set_params._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/uniphier/aio-compress.c", i32 247, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uniphier_aio_compr_trigger._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @uniphier_aio_compr_trigger._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!31 = !{ptr @caps_iec, !32, !"caps_iec", i1 false, i1 false}
!32 = !{!"../sound/soc/uniphier/aio-compress.c", i32 403, i32 42}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 5750596}
!45 = !{i64 5750793}
!46 = !{i64 2153236026}
!47 = !{i64 2154867924, i64 2154868204, i64 2154868538, i64 2154868872}
!48 = !{i8 0, i8 2}
!49 = !{i64 2153255722, i64 2153255747}
