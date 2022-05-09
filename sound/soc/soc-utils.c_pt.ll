; ModuleID = '/llk/IR_all_yes/sound/soc/soc-utils.c_pt.bc'
source_filename = "../sound/soc/soc-utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_calc_frame_size\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_calc_frame_size\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_calc_frame_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_calc_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_calc_frame_size\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_calc_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_params_to_frame_size\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_params_to_frame_size\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_params_to_frame_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_params_to_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_params_to_frame_size\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_params_to_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_calc_bclk\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_calc_bclk\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_calc_bclk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_calc_bclk:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_calc_bclk\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_calc_bclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_params_to_bclk\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_params_to_bclk\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_params_to_bclk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_params_to_bclk:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_params_to_bclk\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_params_to_bclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_snd_soc_calc_frame_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_calc_frame_size = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_calc_frame_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_calc_frame_size to i32), ptr @__kstrtab_snd_soc_calc_frame_size, ptr @__kstrtabns_snd_soc_calc_frame_size }, section "___ksymtab_gpl+snd_soc_calc_frame_size", align 4
@__kstrtab_snd_soc_params_to_frame_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_params_to_frame_size = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_params_to_frame_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_params_to_frame_size to i32), ptr @__kstrtab_snd_soc_params_to_frame_size, ptr @__kstrtabns_snd_soc_params_to_frame_size }, section "___ksymtab_gpl+snd_soc_params_to_frame_size", align 4
@__kstrtab_snd_soc_calc_bclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_calc_bclk = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_calc_bclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_calc_bclk to i32), ptr @__kstrtab_snd_soc_calc_bclk, ptr @__kstrtabns_snd_soc_calc_bclk }, section "___ksymtab_gpl+snd_soc_calc_bclk", align 4
@__kstrtab_snd_soc_params_to_bclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_params_to_bclk = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_params_to_bclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_params_to_bclk to i32), ptr @__kstrtab_snd_soc_params_to_bclk, ptr @__kstrtabns_snd_soc_params_to_bclk }, section "___ksymtab_gpl+snd_soc_params_to_bclk", align 4
@dummy_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.1, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @dummy_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.2, i64 4295234903, i32 32766, i32 0, i32 0, i32 1, i32 384, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.3, i64 4295234903, i32 32766, i32 0, i32 0, i32 1, i32 384, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@dummy_platform = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dummy_dma_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dummy_codec = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@soc_dummy_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_dummy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_soc_dummy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@dummy_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dummy_dai_formats, i32 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@dummy_dai_formats = internal global { i64, [24 x i8] } { i64 64424706302, [24 x i8] zeroinitializer }, align 32
@dummy_dma_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65792, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131072, i32 4096, i32 8192, i32 2, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"dummy_dai\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 150, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"dummy_platform\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 91, i32 46 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"dummy_codec\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 95, i32 46 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 211, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"soc_dummy_dev\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 204, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"soc_dummy_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 197, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 151, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"dummy_dai_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 136, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 160, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 153, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"dummy_dai_formats\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 121, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"dummy_dma_hardware\00", align 1
@___asan_gen_.38 = private constant [25 x i8] c"../sound/soc/soc-utils.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 55, i32 38 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_snd_soc_calc_bclk, ptr @__ksymtab_snd_soc_calc_frame_size, ptr @__ksymtab_snd_soc_params_to_bclk, ptr @__ksymtab_snd_soc_params_to_frame_size, ptr @snd_soc_util_exit, ptr @dummy_dai, ptr @dummy_platform, ptr @dummy_codec, ptr @.str, ptr @soc_dummy_dev, ptr @soc_dummy_driver, ptr @.str.1, ptr @dummy_dai_ops, ptr @.str.2, ptr @.str.3, ptr @dummy_dai_formats, ptr @dummy_dma_hardware], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_codec to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_dummy_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_dummy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_dai_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_dma_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_soc_calc_frame_size(i32 noundef %sample_size, i32 noundef %channels, i32 noundef %tdm_slots) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %channels, %sample_size
  %mul1 = mul i32 %mul, %tdm_slots
  ret i32 %mul1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_params_to_frame_size(ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %1, %entry.if.then.i.i_crit_edge ], [ %4, %for.inc.i.i.if.then.i.i_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !41
  %add.i.i = or i32 %2, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call1 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %params_format.exit.cleanup_crit_edge, label %if.end

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i7 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i7, align 4
  %mul.i = mul i32 %6, %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %params_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul.i, %if.end ], [ %call1, %params_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_soc_calc_bclk(i32 noundef %fs, i32 noundef %sample_size, i32 noundef %channels, i32 noundef %tdm_slots) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %sample_size, %fs
  %mul1.i = mul i32 %mul.i, %channels
  %mul = mul i32 %mul1.i, %tdm_slots
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_params_to_bclk(ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %1, %entry.if.then.i.i.i_crit_edge ], [ %4, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !41
  %add.i.i.i = or i32 %2, %i.09.lcssa.i.i.i
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_format.exit.i_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit.i

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %params_format.exit.i.cleanup_crit_edge, label %snd_soc_params_to_frame_size.exit

params_format.exit.i.cleanup_crit_edge:           ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

snd_soc_params_to_frame_size.exit:                ; preds = %params_format.exit.i
  %arrayidx.i.i7.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i7.i, align 4
  %mul.i.i = mul i32 %6, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp = icmp sgt i32 %mul.i.i, 0
  br i1 %cmp, label %if.then, label %snd_soc_params_to_frame_size.exit.cleanup_crit_edge

snd_soc_params_to_frame_size.exit.cleanup_crit_edge: ; preds = %snd_soc_params_to_frame_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %snd_soc_params_to_frame_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %mul = mul i32 %8, %mul.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.then, %snd_soc_params_to_frame_size.exit.cleanup_crit_edge, %params_format.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.then ], [ %mul.i.i, %snd_soc_params_to_frame_size.exit.cleanup_crit_edge ], [ %call1.i, %params_format.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_soc_dai_is_dummy(ptr nocapture noundef readonly %dai) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %cmp = icmp eq ptr %1, @dummy_dai
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_soc_component_is_dummy(ptr nocapture noundef readonly %component) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %cmp = icmp eq ptr %1, @dummy_platform
  %cmp2 = icmp eq ptr %1, @dummy_codec
  %narrow = or i1 %cmp, %cmp2
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_util_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  store ptr %call.i.i, ptr @soc_dummy_dev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @__platform_driver_register(ptr noundef nonnull @soc_dummy_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load ptr, ptr @soc_dummy_dev, align 4
  call void @platform_device_unregister(ptr noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_soc_util_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @soc_dummy_driver) #7
  %0 = load ptr, ptr @soc_dummy_dev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_dma_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_components = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %num_components to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_components, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.012 = phi i32 [ %inc, %for.cond.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 25, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %cmp1 = icmp eq ptr %7, @dummy_platform
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %no_pcm, align 4
  %11 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %if.then3, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @dummy_dma_hardware) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_dummy_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @dummy_codec, ptr noundef nonnull @dummy_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @dummy_platform, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_snd_soc_calc_frame_size, !1, !"__ksymtab_snd_soc_calc_frame_size", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-utils.c", i32 21, i32 1}
!2 = !{ptr @__ksymtab_snd_soc_params_to_frame_size, !3, !"__ksymtab_snd_soc_params_to_frame_size", i1 false, i1 false}
!3 = !{!"../sound/soc/soc-utils.c", i32 34, i32 1}
!4 = !{ptr @__ksymtab_snd_soc_calc_bclk, !5, !"__ksymtab_snd_soc_calc_bclk", i1 false, i1 false}
!5 = !{!"../sound/soc/soc-utils.c", i32 40, i32 1}
!6 = !{ptr @__ksymtab_snd_soc_params_to_bclk, !7, !"__ksymtab_snd_soc_params_to_bclk", i1 false, i1 false}
!7 = !{!"../sound/soc/soc-utils.c", i32 53, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/soc-utils.c", i32 211, i32 35}
!10 = !{ptr @soc_dummy_dev, !11, !"soc_dummy_dev", i1 false, i1 false}
!11 = !{!"../sound/soc/soc-utils.c", i32 204, i32 32}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/soc-utils.c", i32 151, i32 10}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/soc-utils.c", i32 160, i32 18}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/soc-utils.c", i32 153, i32 18}
!18 = !{ptr @dummy_dai, !19, !"dummy_dai", i1 false, i1 false}
!19 = !{!"../sound/soc/soc-utils.c", i32 150, i32 34}
!20 = !{ptr @dummy_dai_ops, !21, !"dummy_dai_ops", i1 false, i1 false}
!21 = !{!"../sound/soc/soc-utils.c", i32 136, i32 37}
!22 = !{ptr @dummy_dai_formats, !23, !"dummy_dai_formats", i1 false, i1 false}
!23 = !{!"../sound/soc/soc-utils.c", i32 121, i32 12}
!24 = !{ptr @dummy_platform, !25, !"dummy_platform", i1 false, i1 false}
!25 = !{!"../sound/soc/soc-utils.c", i32 91, i32 46}
!26 = !{ptr @dummy_dma_hardware, !27, !"dummy_dma_hardware", i1 false, i1 false}
!27 = !{!"../sound/soc/soc-utils.c", i32 55, i32 38}
!28 = !{ptr @dummy_codec, !29, !"dummy_codec", i1 false, i1 false}
!29 = !{!"../sound/soc/soc-utils.c", i32 95, i32 46}
!30 = !{ptr @soc_dummy_driver, !31, !"soc_dummy_driver", i1 false, i1 false}
!31 = !{!"../sound/soc/soc-utils.c", i32 197, i32 31}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i32 0, i32 33}
