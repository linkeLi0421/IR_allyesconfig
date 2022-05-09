; ModuleID = '/llk/IR_all_yes/sound/soc/uniphier/aio-dma.c_pt.bc'
source_filename = "../sound/soc/uniphier/aio-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+uniphier_aiodma_soc_register_platform\22, \22a\22\09"
module asm "\09.weak\09__crc_uniphier_aiodma_soc_register_platform\09\09\09\09"
module asm "\09.long\09__crc_uniphier_aiodma_soc_register_platform\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uniphier_aiodma_soc_register_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22uniphier_aiodma_soc_register_platform\22\09\09\09\09\09"
module asm "__kstrtabns_uniphier_aiodma_soc_register_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.uniphier_aio_chip = type { ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.uniphier_aio = type { ptr, [2 x %struct.uniphier_aio_sub], i32, i32, i32, i32, i32, i32 }
%struct.uniphier_aio_sub = type { ptr, %struct.spinlock, ptr, ptr, ptr, %struct.snd_pcm_hw_params, i32, ptr, %struct.snd_compr_params, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i64, i64, i32, i64, i64, i64, i64 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_codec_options, [3 x i32] }
%union.snd_codec_options = type { %struct.snd_enc_generic }
%struct.snd_enc_generic = type { i32, [15 x i32] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.uniphier_aio_swmap = type { i32, i32, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector }
%struct.uniphier_aio_selector = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@uniphier_aiodma_soc_register_platform._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aiodma_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 524284, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"aio_dma:263:(&aiodma_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@uniphier_soc_platform = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_aiodma_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_aiodma_open, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_aiodma_prepare, ptr @uniphier_aiodma_trigger, ptr null, ptr @uniphier_aiodma_pointer, ptr null, ptr null, ptr null, ptr @uniphier_aiodma_mmap, ptr null, ptr null, ptr @uniphier_aio_compress_ops, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_uniphier_aiodma_soc_register_platform = external dso_local constant [0 x i8], align 1
@__kstrtabns_uniphier_aiodma_soc_register_platform = external dso_local constant [0 x i8], align 1
@__ksymtab_uniphier_aiodma_soc_register_platform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uniphier_aiodma_soc_register_platform to i32), ptr @__kstrtab_uniphier_aiodma_soc_register_platform, ptr @__kstrtabns_uniphier_aiodma_soc_register_platform }, section "___ksymtab_gpl+uniphier_aiodma_soc_register_platform", align 4
@uniphier_aio_compress_ops = external dso_local constant %struct.snd_compress_ops, align 4
@uniphier_aiodma_hw = internal global { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131072, i32 256, i32 4096, i32 4, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@uniphier_aiodma_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown trigger(%d) ignored\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uniphier_aiodma_trigger\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/uniphier/aio-dma.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_aiodma_trigger._entry_ptr = internal global ptr @uniphier_aiodma_trigger._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"aiodma_regmap_config\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 233, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 262, i32 17 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"uniphier_soc_platform\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 223, i32 46 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"uniphier_aiodma_hw\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 17, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [32 x i8] c"../sound/soc/uniphier/aio-dma.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 161, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_uniphier_aiodma_soc_register_platform, ptr @uniphier_aiodma_trigger._entry, ptr @uniphier_aiodma_trigger._entry_ptr, ptr @uniphier_aiodma_soc_register_platform._key, ptr @aiodma_regmap_config, ptr @.str, ptr @uniphier_soc_platform, ptr @uniphier_aiodma_hw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aiodma_soc_register_platform._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiodma_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_soc_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aiodma_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aiodma_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uniphier_aiodma_soc_register_platform(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @aiodma_regmap_config, ptr noundef nonnull @uniphier_aiodma_soc_register_platform._key, ptr noundef nonnull @.str) #3
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i38 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.dev_name.exit_crit_edge

if.end14.dev_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end14.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @aiodma_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %pdev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end18, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call19 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @uniphier_soc_platform, ptr noundef null, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %dev_name.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %4, %if.then8 ], [ %call19, %if.end18 ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call.i, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiodma_irq(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %p, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_aios = getelementptr inbounds %struct.uniphier_aio_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_aios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_aios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42 = icmp sgt i32 %3, 0
  br i1 %cmp42, label %for.body.lr.ph, label %entry.for.end15_crit_edge

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %aios = getelementptr inbounds %struct.uniphier_aio_chip, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.end.for.body_crit_edge ]
  %ret.043 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %aios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aios, align 4
  br label %for.body3

for.body3:                                        ; preds = %cleanup.for.body3_crit_edge, %for.body
  %cmp2 = phi i1 [ true, %for.body ], [ false, %cleanup.for.body3_crit_edge ]
  %j.040 = phi i32 [ 0, %for.body ], [ 1, %cleanup.for.body3_crit_edge ]
  %ret.139 = phi i32 [ %ret.043, %for.body ], [ %ret.2, %cleanup.for.body3_crit_edge ]
  %arrayidx5 = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040
  %running = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 17
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body3.cleanup_crit_edge, label %lor.lhs.false

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body3
  %call6 = tail call zeroext i1 @aiodma_rb_is_irq(ptr noundef %arrayidx5) #3
  br i1 %call6, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %substream = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 4
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %period_size.i, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 15
  %16 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels.i, align 8
  %mul.i = mul i32 %17, %15
  %sample_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 22
  %18 = ptrtoint ptr %sample_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_bits.i.i, align 4
  %div1.i.i = lshr i32 %19, 3
  %mul2.i = mul i32 %mul.i, %div1.i.i
  %lock.i = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #3
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 52
  %20 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_bytes.i, align 4
  %conv.i = zext i32 %21 to i64
  %threshold.i = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 20
  %22 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %threshold.i, align 8
  %add.i = add i32 %23, %mul2.i
  %call3.i = tail call i32 @aiodma_rb_set_threshold(ptr noundef %arrayidx5, i64 noundef %conv.i, i32 noundef %add.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.aiodma_pcm_irq.exit_crit_edge

if.then8.aiodma_pcm_irq.exit_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %aiodma_pcm_irq.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %threshold.i, align 8
  %add5.i = add i32 %25, %mul2.i
  store i32 %add5.i, ptr %threshold.i, align 8
  br label %aiodma_pcm_irq.exit

aiodma_pcm_irq.exit:                              ; preds = %if.then.i, %if.then8.aiodma_pcm_irq.exit_crit_edge
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 51
  %26 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr.i, align 8
  %conv6.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_bytes.i, align 4
  %conv8.i = zext i32 %29 to i64
  tail call void @aiodma_rb_sync(ptr noundef %arrayidx5, i64 noundef %conv6.i, i64 noundef %conv8.i, i32 noundef %mul2.i) #3
  tail call void @aiodma_rb_clear_irq(ptr noundef %arrayidx5) #3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #3
  %30 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %31) #3
  br label %if.end9

if.end9:                                          ; preds = %aiodma_pcm_irq.exit, %if.end.if.end9_crit_edge
  %cstream = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 7
  %32 = ptrtoint ptr %cstream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cstream, align 4
  %tobool10.not = icmp eq ptr %33, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %34 = ptrtoint ptr %cstream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cstream, align 4
  %runtime1.i31 = getelementptr inbounds %struct.snd_compr_stream, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %runtime1.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime1.i31, align 4
  %fragment_size.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %fragment_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fragment_size.i, align 8
  %lock.i32 = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i32) #3
  %compr_bytes.i = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 11
  %40 = ptrtoint ptr %compr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %compr_bytes.i, align 4
  %conv.i33 = zext i32 %41 to i64
  %threshold.i34 = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 20
  %42 = ptrtoint ptr %threshold.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %threshold.i34, align 8
  %add.i35 = add i32 %43, %39
  %call.i = tail call i32 @aiodma_rb_set_threshold(ptr noundef %arrayidx5, i64 noundef %conv.i33, i32 noundef %add.i35) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i36 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i36, label %if.then.i37, label %if.then11.aiodma_compr_irq.exit_crit_edge

if.then11.aiodma_compr_irq.exit_crit_edge:        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %aiodma_compr_irq.exit

if.then.i37:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %threshold.i34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %threshold.i34, align 8
  %add3.i = add i32 %45, %39
  store i32 %add3.i, ptr %threshold.i34, align 8
  br label %aiodma_compr_irq.exit

aiodma_compr_irq.exit:                            ; preds = %if.then.i37, %if.then11.aiodma_compr_irq.exit_crit_edge
  %compr_addr.i = getelementptr %struct.uniphier_aio, ptr %5, i32 %i.044, i32 1, i32 %j.040, i32 10
  %46 = ptrtoint ptr %compr_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %compr_addr.i, align 8
  %conv4.i = zext i32 %47 to i64
  %48 = ptrtoint ptr %compr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %compr_bytes.i, align 4
  %conv6.i38 = zext i32 %49 to i64
  tail call void @aiodma_rb_sync(ptr noundef %arrayidx5, i64 noundef %conv4.i, i64 noundef %conv6.i38, i32 noundef %39) #3
  tail call void @aiodma_rb_clear_irq(ptr noundef %arrayidx5) #3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i32) #3
  %50 = ptrtoint ptr %cstream to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cstream, align 4
  %runtime.i.i = getelementptr inbounds %struct.snd_compr_stream, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %runtime.i.i, align 4
  %sleep.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %53, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %aiodma_compr_irq.exit, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body3.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.139, %lor.lhs.false.cleanup_crit_edge ], [ %ret.139, %for.body3.cleanup_crit_edge ], [ 1, %aiodma_compr_irq.exit ], [ 1, %if.end9.cleanup_crit_edge ]
  br i1 %cmp2, label %cleanup.for.body3_crit_edge, label %for.end

cleanup.for.body3_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

for.end:                                          ; preds = %cleanup
  %inc14 = add nuw nsw i32 %i.044, 1
  %54 = ptrtoint ptr %num_aios to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_aios, align 4
  %cmp = icmp slt i32 %inc14, %55
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end15_crit_edge

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end15

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end15:                                        ; preds = %for.end.for.end15_crit_edge, %entry.for.end15_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end15_crit_edge ], [ %ret.2, %for.end.for.end15_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aiodma_rb_is_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aiodma_rb_set_threshold(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aiodma_rb_sync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aiodma_rb_clear_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aiodma_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %pcm2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %6 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm2, align 4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 8589934591) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 8589934591) #3
  %8 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @uniphier_aiodma_hw, i32 0, i32 7), align 4
  %call3 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %7, i32 noundef 2, ptr noundef %5, i32 noundef %8, i32 noundef %8) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aiodma_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @uniphier_aiodma_hw) #3
  %call2 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 256) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aiodma_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %arrayidx3 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 8
  %sample_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sample_bits.i, align 4
  %call6 = tail call i32 @aiodma_ch_set_param(ptr noundef %arrayidx3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.body7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %div1.i = lshr i32 %23, 3
  %mul = mul i32 %21, %19
  %mul5 = mul i32 %mul, %div1.i
  %lock = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 8
  %conv12 = zext i32 %25 to i64
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %26 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_bytes, align 4
  %add = add i32 %27, %25
  %conv14 = zext i32 %add to i64
  %call15 = tail call i32 @aiodma_rb_set_buffer(ptr noundef %arrayidx3, i64 noundef %conv12, i64 noundef %conv14, i32 noundef %mul5) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %entry.cleanup_crit_edge ], [ %call15, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aiodma_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %arrayidx3 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels, align 8
  %sample_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 22
  %26 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sample_bits.i, align 4
  %lock = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %28 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end18 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %div1.i = lshr i32 %27, 3
  %mul = mul i32 %25, %23
  %mul6 = mul i32 %mul, %div1.i
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %29 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr, align 8
  %conv12 = zext i32 %30 to i64
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %31 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_bytes, align 4
  %conv13 = zext i32 %32 to i64
  tail call void @aiodma_rb_sync(ptr noundef %arrayidx3, i64 noundef %conv12, i64 noundef %conv13, i32 noundef %mul6) #3
  tail call void @aiodma_ch_set_enable(ptr noundef %arrayidx3, i32 noundef 1) #3
  %running = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 17
  %33 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %running, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %running15 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 17
  %34 = ptrtoint ptr %running15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %running15, align 8
  tail call void @aiodma_ch_set_enable(ptr noundef %arrayidx3, i32 noundef 0) #3
  br label %sw.epilog

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.1, i32 noundef %cmd) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end18, %sw.bb14, %sw.bb
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aiodma_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %arrayidx3 = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 8
  %mul = mul i32 %21, %19
  %sample_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sample_bits.i, align 4
  %div1.i = lshr i32 %23, 3
  %mul5 = mul i32 %mul, %div1.i
  %lock = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 1
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 8
  %conv11 = zext i32 %25 to i64
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %26 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_bytes, align 4
  %conv12 = zext i32 %27 to i64
  tail call void @aiodma_rb_sync(ptr noundef %arrayidx3, i64 noundef %conv11, i64 noundef %conv12, i32 noundef %mul5) #3
  %swm = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 2
  %28 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp13 = icmp eq i32 %31, 0
  %wr_offs = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 19
  %rd_offs = getelementptr %struct.uniphier_aio, ptr %13, i32 %15, i32 1, i32 %17, i32 18
  %wr_offs.sink = select i1 %cmp13, ptr %rd_offs, ptr %wr_offs
  %32 = ptrtoint ptr %wr_offs.sink to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wr_offs.sink, align 8
  %conv17 = trunc i64 %33 to i32
  %mul.i33 = shl i32 %conv17, 3
  %frame_bits.i34 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %34 = ptrtoint ptr %frame_bits.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_bits.i34, align 8
  %div.i35 = udiv i32 %mul.i33, %35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #3
  ret i32 %div.i35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aiodma_mmap(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %0 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %1, -61
  %or = or i32 %and, 4
  store i32 %or, ptr %vm_page_prot, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 51
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %shr = lshr i32 %7, 12
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %9, %3
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %3, i32 noundef %shr, i32 noundef %sub, i32 noundef %or) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aiodma_ch_set_param(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aiodma_rb_set_buffer(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @aiodma_ch_set_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @uniphier_aiodma_soc_register_platform._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../sound/soc/uniphier/aio-dma.c", i32 262, i32 17}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_uniphier_aiodma_soc_register_platform, !4, !"__ksymtab_uniphier_aiodma_soc_register_platform", i1 false, i1 false}
!4 = !{!"../sound/soc/uniphier/aio-dma.c", i32 279, i32 1}
!5 = !{ptr @aiodma_regmap_config, !6, !"aiodma_regmap_config", i1 false, i1 false}
!6 = !{!"../sound/soc/uniphier/aio-dma.c", i32 233, i32 35}
!7 = !{ptr @uniphier_soc_platform, !8, !"uniphier_soc_platform", i1 false, i1 false}
!8 = !{!"../sound/soc/uniphier/aio-dma.c", i32 223, i32 46}
!9 = !{ptr @uniphier_aiodma_hw, !10, !"uniphier_aiodma_hw", i1 false, i1 false}
!10 = !{!"../sound/soc/uniphier/aio-dma.c", i32 17, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/uniphier/aio-dma.c", i32 161, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @uniphier_aiodma_trigger._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @uniphier_aiodma_trigger._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
