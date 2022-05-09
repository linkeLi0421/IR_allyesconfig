; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/common/mtk-afe-platform-driver.c_pt.bc'
source_filename = "../sound/soc/mediatek/common/mtk-afe-platform-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_afe_combine_sub_dai\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_afe_combine_sub_dai\09\09\09\09"
module asm "\09.long\09__crc_mtk_afe_combine_sub_dai\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_afe_combine_sub_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_afe_combine_sub_dai\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_afe_combine_sub_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_afe_add_sub_dai_control\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_afe_add_sub_dai_control\09\09\09\09"
module asm "\09.long\09__crc_mtk_afe_add_sub_dai_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_afe_add_sub_dai_control:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_afe_add_sub_dai_control\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_afe_add_sub_dai_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_afe_pcm_pointer\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_afe_pcm_pointer\09\09\09\09"
module asm "\09.long\09__crc_mtk_afe_pcm_pointer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_afe_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_afe_pcm_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_afe_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_afe_pcm_new\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_afe_pcm_new\09\09\09\09"
module asm "\09.long\09__crc_mtk_afe_pcm_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_afe_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_afe_pcm_new\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_afe_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_afe_pcm_platform\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_afe_pcm_platform\09\09\09\09"
module asm "\09.long\09__crc_mtk_afe_pcm_platform\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_afe_pcm_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_afe_pcm_platform\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_afe_pcm_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.mtk_base_afe_memif = type { i32, i32, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.mtk_base_memif_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@mtk_afe_combine_sub_dai._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 26, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(), num of dai %zd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_afe_combine_sub_dai\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sound/soc/mediatek/common/mtk-afe-platform-driver.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_afe_combine_sub_dai._entry_ptr = internal global ptr @mtk_afe_combine_sub_dai._entry, section ".printk_index", align 4
@__kstrtab_mtk_afe_combine_sub_dai = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_afe_combine_sub_dai = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_afe_combine_sub_dai = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_afe_combine_sub_dai to i32), ptr @__kstrtab_mtk_afe_combine_sub_dai, ptr @__kstrtabns_mtk_afe_combine_sub_dai }, section "___ksymtab_gpl+mtk_afe_combine_sub_dai", align 4
@__kstrtab_mtk_afe_add_sub_dai_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_afe_add_sub_dai_control = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_afe_add_sub_dai_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_afe_add_sub_dai_control to i32), ptr @__kstrtab_mtk_afe_add_sub_dai_control, ptr @__kstrtabns_mtk_afe_add_sub_dai_control }, section "___ksymtab_gpl+mtk_afe_add_sub_dai_control", align 4
@mtk_afe_pcm_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 96, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s hw_ptr err\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_afe_pcm_pointer\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mtk_afe_pcm_pointer._entry_ptr = internal global ptr @mtk_afe_pcm_pointer._entry, section ".printk_index", align 4
@mtk_afe_pcm_pointer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 103, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mtk_afe_pcm_pointer._entry_ptr.9 = internal global ptr @mtk_afe_pcm_pointer._entry.8, section ".printk_index", align 4
@__kstrtab_mtk_afe_pcm_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_afe_pcm_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_afe_pcm_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_afe_pcm_pointer to i32), ptr @__kstrtab_mtk_afe_pcm_pointer, ptr @__kstrtabns_mtk_afe_pcm_pointer }, section "___ksymtab_gpl+mtk_afe_pcm_pointer", align 4
@__kstrtab_mtk_afe_pcm_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_afe_pcm_new = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_afe_pcm_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_afe_pcm_new to i32), ptr @__kstrtab_mtk_afe_pcm_new, ptr @__kstrtabns_mtk_afe_pcm_new }, section "___ksymtab_gpl+mtk_afe_pcm_new", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@mtk_afe_pcm_platform = dso_local constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.10, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_afe_pcm_platform = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_afe_pcm_platform = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_afe_pcm_platform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_afe_pcm_platform to i32), ptr @__kstrtab_mtk_afe_pcm_platform, ptr @__kstrtabns_mtk_afe_pcm_platform }, section "___ksymtab_gpl+mtk_afe_pcm_platform", align 4
@__UNIQUE_ID_description240 = internal constant [63 x i8] c"snd_soc_mtk_common.description=Mediatek simple platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [67 x i8] c"snd_soc_mtk_common.author=Garlic Tseng <garlic.tseng@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [69 x i8] c"snd_soc_mtk_common.file=sound/soc/mediatek/common/snd-soc-mtk-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [34 x i8] c"snd_soc_mtk_common.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 26, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 96, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 103, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 130, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"mtk_afe_pcm_platform\00", align 1
@___asan_gen_.48 = private constant [55 x i8] c"../sound/soc/mediatek/common/mtk-afe-platform-driver.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 129, i32 39 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__ksymtab_mtk_afe_add_sub_dai_control, ptr @__ksymtab_mtk_afe_combine_sub_dai, ptr @__ksymtab_mtk_afe_pcm_new, ptr @__ksymtab_mtk_afe_pcm_platform, ptr @__ksymtab_mtk_afe_pcm_pointer, ptr @mtk_afe_combine_sub_dai._entry, ptr @mtk_afe_combine_sub_dai._entry_ptr, ptr @mtk_afe_pcm_pointer._entry, ptr @mtk_afe_pcm_pointer._entry.8, ptr @mtk_afe_pcm_pointer._entry_ptr, ptr @mtk_afe_pcm_pointer._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @mtk_afe_pcm_platform], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_combine_sub_dai._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_pcm_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_pcm_pointer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_pcm_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_afe_combine_sub_dai(ptr noundef %afe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 15
  %0 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn60 = load ptr, ptr %sub_dais, align 4
  %cmp.not61 = icmp eq ptr %.pn60, %sub_dais
  br i1 %cmp.not61, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn63 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn60, %entry.for.body_crit_edge ]
  %num_dai_drivers.062 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_dai_drivers2 = getelementptr i8, ptr %.pn63, i32 -28
  %1 = ptrtoint ptr %num_dai_drivers2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_dai_drivers2, align 4
  %add = add i32 %2, %num_dai_drivers.062
  %3 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn63, align 4
  %cmp.not = icmp eq ptr %.pn, %sub_dais
  br i1 %cmp.not, label %for.body.do.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.body.do.end_crit_edge, %entry.do.end_crit_edge
  %num_dai_drivers.0.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ %add, %for.body.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %num_dai_drivers.0.lcssa) #8
  %num_dai_drivers8 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 17
  %6 = ptrtoint ptr %num_dai_drivers8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num_dai_drivers.0.lcssa, ptr %num_dai_drivers8, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_dai_drivers.0.lcssa, i32 168) #5
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !47

devm_kcalloc.exit.thread:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dai_drivers58 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 16
  %9 = ptrtoint ptr %dai_drivers58 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dai_drivers58, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.end
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %12, i32 noundef 3520) #5
  %dai_drivers = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 16
  %13 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %dai_drivers, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond16.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond16.preheader:                             ; preds = %devm_kcalloc.exit
  %14 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn5664 = load ptr, ptr %sub_dais, align 4
  %cmp19.not65 = icmp eq ptr %.pn5664, %sub_dais
  br i1 %cmp19.not65, label %for.cond16.preheader.cleanup_crit_edge, label %for.cond16.preheader.for.body21_crit_edge

for.cond16.preheader.for.body21_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body21

for.cond16.preheader.cleanup_crit_edge:           ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.cond16.preheader.for.body21_crit_edge
  %.pn5667 = phi ptr [ %.pn56, %for.body21.for.body21_crit_edge ], [ %.pn5664, %for.cond16.preheader.for.body21_crit_edge ]
  %dai_idx.066 = phi i32 [ %add26, %for.body21.for.body21_crit_edge ], [ 0, %for.cond16.preheader.for.body21_crit_edge ]
  %dai.1 = getelementptr i8, ptr %.pn5667, i32 -32
  %15 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dai_drivers, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_driver, ptr %16, i32 %dai_idx.066
  %17 = ptrtoint ptr %dai.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dai.1, align 4
  %num_dai_drivers24 = getelementptr i8, ptr %.pn5667, i32 -28
  %19 = ptrtoint ptr %num_dai_drivers24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_dai_drivers24, align 4
  %mul = mul i32 %20, 168
  %21 = call ptr @memcpy(ptr %arrayidx, ptr %18, i32 %mul)
  %22 = load i32, ptr %num_dai_drivers24, align 4
  %add26 = add i32 %22, %dai_idx.066
  %23 = ptrtoint ptr %.pn5667 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn56 = load ptr, ptr %.pn5667, align 4
  %cmp19.not = icmp eq ptr %.pn56, %sub_dais
  br i1 %cmp19.not, label %for.body21.cleanup_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body21.cleanup_crit_edge, %for.cond16.preheader.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %for.cond16.preheader.cleanup_crit_edge ], [ 0, %for.body21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_afe_add_sub_dai_control(ptr noundef %component) #0 align 64 {
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
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn62 = load ptr, ptr %sub_dais, align 4
  %cmp.not63 = icmp eq ptr %.pn62, %sub_dais
  br i1 %cmp.not63, label %entry.for.cond19.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond19.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

for.body.lr.ph:                                   ; preds = %entry
  %dapm = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  br label %for.body

for.cond19.preheader:                             ; preds = %for.inc.for.cond19.preheader_crit_edge, %entry.for.cond19.preheader_crit_edge
  %5 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn6165 = load ptr, ptr %sub_dais, align 4
  %cmp22.not66 = icmp eq ptr %.pn6165, %sub_dais
  br i1 %cmp22.not66, label %for.cond19.preheader.for.end37_crit_edge, label %for.body24.lr.ph

for.cond19.preheader.for.end37_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

for.body24.lr.ph:                                 ; preds = %for.cond19.preheader
  %dapm27 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  br label %for.body24

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn64 = phi ptr [ %.pn62, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %controls = getelementptr i8, ptr %.pn64, i32 -24
  %6 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controls, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %num_controls = getelementptr i8, ptr %.pn64, i32 -20
  %8 = ptrtoint ptr %num_controls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_controls, align 4
  %call3 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %7, i32 noundef %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %dapm_widgets = getelementptr i8, ptr %.pn64, i32 -16
  %10 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dapm_widgets, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %num_dapm_widgets = getelementptr i8, ptr %.pn64, i32 -12
  %12 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_dapm_widgets, align 4
  %call7 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm, ptr noundef nonnull %11, i32 noundef %13) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn64, align 4
  %cmp.not = icmp eq ptr %.pn, %sub_dais
  br i1 %cmp.not, label %for.inc.for.cond19.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.cond19.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

for.body24:                                       ; preds = %for.inc31.for.body24_crit_edge, %for.body24.lr.ph
  %.pn6167 = phi ptr [ %.pn6165, %for.body24.lr.ph ], [ %.pn61, %for.inc31.for.body24_crit_edge ]
  %dapm_routes = getelementptr i8, ptr %.pn6167, i32 -8
  %15 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dapm_routes, align 4
  %tobool25.not = icmp eq ptr %16, null
  br i1 %tobool25.not, label %for.body24.for.inc31_crit_edge, label %if.then26

for.body24.for.inc31_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc31

if.then26:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  %num_dapm_routes = getelementptr i8, ptr %.pn6167, i32 -4
  %17 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_dapm_routes, align 4
  %call29 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm27, ptr noundef nonnull %16, i32 noundef %18) #5
  br label %for.inc31

for.inc31:                                        ; preds = %if.then26, %for.body24.for.inc31_crit_edge
  %19 = ptrtoint ptr %.pn6167 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn61 = load ptr, ptr %.pn6167, align 4
  %cmp22.not = icmp eq ptr %.pn61, %sub_dais
  br i1 %cmp22.not, label %for.inc31.for.end37_crit_edge, label %for.inc31.for.body24_crit_edge

for.inc31.for.body24_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.inc31.for.end37_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

for.end37:                                        ; preds = %for.inc31.for.end37_crit_edge, %for.cond19.preheader.for.end37_crit_edge
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call39 = tail call i32 @snd_soc_dapm_new_widgets(ptr noundef %21) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_widgets(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_afe_pcm_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %hw_ptr = alloca i32, align 4
  %hw_base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %memif1 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memif1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %7, i32 %13, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %regmap3 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap3, align 4
  %dev4 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev4, align 4
  %reg_ofs_base5 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %reg_ofs_base5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_ofs_base5, align 4
  %reg_ofs_cur6 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %reg_ofs_cur6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_ofs_cur6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_ptr) #5
  %24 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %hw_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_base) #5
  %25 = ptrtoint ptr %hw_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %hw_base, align 4
  %call7 = call i32 @regmap_read(ptr noundef %17, i32 noundef %23, ptr noundef nonnull %hw_ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %26 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #8
  br label %POINTER_RETURN_FRAMES

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call i32 @regmap_read(ptr noundef %17, i32 noundef %21, ptr noundef nonnull %hw_base) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

lor.lhs.false10:                                  ; preds = %if.end
  %28 = ptrtoint ptr %hw_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp11 = icmp eq i32 %29, 0
  br i1 %cmp11, label %lor.lhs.false10.do.end15_crit_edge, label %if.end16

lor.lhs.false10.do.end15_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false10.do.end15_crit_edge, %if.end.do.end15_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #8
  br label %POINTER_RETURN_FRAMES

if.end16:                                         ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_ptr, align 4
  %sub = sub i32 %31, %29
  %phi.bo = shl i32 %sub, 3
  br label %POINTER_RETURN_FRAMES

POINTER_RETURN_FRAMES:                            ; preds = %if.end16, %do.end15, %do.end
  %pcm_ptr_bytes.0 = phi i32 [ 0, %do.end ], [ 0, %do.end15 ], [ %phi.bo, %if.end16 ]
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %32 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %pcm_ptr_bytes.0, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_base) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_ptr) #5
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_afe_pcm_new(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mtk_afe_hardware = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %mtk_afe_hardware to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtk_afe_hardware, align 4
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_hardware, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_bytes_max, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %11, i32 noundef %9, i32 noundef %9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 26, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_afe_combine_sub_dai._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_afe_combine_sub_dai._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mtk_afe_combine_sub_dai, !9, !"__ksymtab_mtk_afe_combine_sub_dai", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 47, i32 1}
!10 = !{ptr @__ksymtab_mtk_afe_add_sub_dai_control, !11, !"__ksymtab_mtk_afe_add_sub_dai_control", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 78, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 96, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtk_afe_pcm_pointer._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_afe_pcm_pointer._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @mtk_afe_pcm_pointer._entry.8, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 103, i32 3}
!20 = !{ptr @mtk_afe_pcm_pointer._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_mtk_afe_pcm_pointer, !22, !"__ksymtab_mtk_afe_pcm_pointer", i1 false, i1 false}
!22 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 113, i32 1}
!23 = !{ptr @__ksymtab_mtk_afe_pcm_new, !24, !"__ksymtab_mtk_afe_pcm_new", i1 false, i1 false}
!24 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 127, i32 1}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 130, i32 11}
!27 = !{ptr @mtk_afe_pcm_platform, !28, !"mtk_afe_pcm_platform", i1 false, i1 false}
!28 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 129, i32 39}
!29 = !{ptr @__ksymtab_mtk_afe_pcm_platform, !30, !"__ksymtab_mtk_afe_pcm_platform", i1 false, i1 false}
!30 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 134, i32 1}
!31 = !{ptr @__UNIQUE_ID_description240, !32, !"__UNIQUE_ID_description240", i1 false, i1 false}
!32 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 136, i32 1}
!33 = !{ptr @__UNIQUE_ID_author241, !34, !"__UNIQUE_ID_author241", i1 false, i1 false}
!34 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 137, i32 1}
!35 = !{ptr @__UNIQUE_ID_file242, !36, !"__UNIQUE_ID_file242", i1 false, i1 false}
!36 = !{!"../sound/soc/mediatek/common/mtk-afe-platform-driver.c", i32 138, i32 1}
!37 = !{ptr @__UNIQUE_ID_license243, !36, !"__UNIQUE_ID_license243", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
