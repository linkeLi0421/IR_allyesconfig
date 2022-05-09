; ModuleID = '/llk/IR_all_yes/sound/soc/ux500/ux500_pcm.c_pt.bc'
source_filename = "../sound/soc/ux500/ux500_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ux500_pcm_register_platform\22, \22a\22\09"
module asm "\09.weak\09__crc_ux500_pcm_register_platform\09\09\09\09"
module asm "\09.long\09__crc_ux500_pcm_register_platform\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ux500_pcm_register_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22ux500_pcm_register_platform\22\09\09\09\09\09"
module asm "__kstrtabns_ux500_pcm_register_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ux500_pcm_unregister_platform\22, \22a\22\09"
module asm "\09.weak\09__crc_ux500_pcm_unregister_platform\09\09\09\09"
module asm "\09.long\09__crc_ux500_pcm_unregister_platform\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ux500_pcm_unregister_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22ux500_pcm_unregister_platform\22\09\09\09\09\09"
module asm "__kstrtabns_ux500_pcm_unregister_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ux500_msp_dma_params = type { i32, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.stedma40_chan_cfg = type { i32, i8, i8, i32, i32, i32, %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info, i8, i32 }
%struct.stedma40_half_channel_info = type { i8, i32, i32, i32 }

@ux500_dmaengine_of_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @ux500_pcm_prepare_slave_config, ptr @ux500_pcm_request_chan, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ux500_dmaengine_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @ux500_pcm_prepare_slave_config, ptr @ux500_pcm_request_chan, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @ux500_pcm_hw, i32 131072 }, [60 x i8] zeroinitializer }, align 32
@ux500_pcm_register_platform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: ERROR: Failed to register platform '%s' (%d)!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ux500_pcm_register_platform\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/ux500/ux500_pcm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ux500_pcm_register_platform._entry_ptr = internal global ptr @ux500_pcm_register_platform._entry, section ".printk_index", align 4
@__kstrtab_ux500_pcm_register_platform = external dso_local constant [0 x i8], align 1
@__kstrtabns_ux500_pcm_register_platform = external dso_local constant [0 x i8], align 1
@__ksymtab_ux500_pcm_register_platform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ux500_pcm_register_platform to i32), ptr @__kstrtab_ux500_pcm_register_platform, ptr @__kstrtabns_ux500_pcm_register_platform }, section "___ksymtab_gpl+ux500_pcm_register_platform", align 4
@__kstrtab_ux500_pcm_unregister_platform = external dso_local constant [0 x i8], align 1
@__kstrtabns_ux500_pcm_unregister_platform = external dso_local constant [0 x i8], align 1
@__ksymtab_ux500_pcm_unregister_platform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ux500_pcm_unregister_platform to i32), ptr @__kstrtab_ux500_pcm_unregister_platform, ptr @__kstrtabns_ux500_pcm_unregister_platform }, section "___ksymtab_gpl+ux500_pcm_unregister_platform", align 4
@__UNIQUE_ID_author242 = internal constant [40 x i8] c"snd_soc_ux500_plat_dma.author=Ola Lilja\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [44 x i8] c"snd_soc_ux500_plat_dma.author=Roger Nilsson\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [53 x i8] c"snd_soc_ux500_plat_dma.description=ASoC UX500 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [67 x i8] c"snd_soc_ux500_plat_dma.file=sound/soc/ux500/snd-soc-ux500-plat-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [38 x i8] c"snd_soc_ux500_plat_dma.license=GPL v2\00", section ".modinfo", align 1
@ux500_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786689, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8388608, i32 128, i32 262144, i32 2, i32 48, i32 0 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [30 x i8] c"ux500_dmaengine_of_pcm_config\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 130, i32 46 }
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"ux500_dmaengine_pcm_config\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 123, i32 46 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 149, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"ux500_pcm_hw\00", align 1
@___asan_gen_.30 = private constant [31 x i8] c"../sound/soc/ux500/ux500_pcm.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 34, i32 38 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__ksymtab_ux500_pcm_register_platform, ptr @__ksymtab_ux500_pcm_unregister_platform, ptr @ux500_pcm_register_platform._entry, ptr @ux500_pcm_register_platform._entry_ptr, ptr @ux500_dmaengine_of_pcm_config, ptr @ux500_dmaengine_pcm_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ux500_pcm_hw], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_dmaengine_of_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_dmaengine_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_pcm_register_platform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ux500_pcm_register_platform(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  %ux500_dmaengine_pcm_config.ux500_dmaengine_of_pcm_config = select i1 %tobool.not, ptr @ux500_dmaengine_pcm_config, ptr @ux500_dmaengine_of_pcm_config
  %call = tail call i32 @snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull %ux500_dmaengine_pcm_config.ux500_dmaengine_of_pcm_config, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ux500_pcm_unregister_platform(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_pcm_prepare_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
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
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %9, null
  %stream.i32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i33 = icmp eq i32 %11, 0
  %playback_dma_data.i34 = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i35 = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i36 = select i1 %cmp.i33, ptr %playback_dma_data.i34, ptr %capture_dma_data.i35
  %12 = ptrtoint ptr %cond.in.i36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i37 = load ptr, ptr %cond.in.i36, align 4
  %tx_rx_addr = getelementptr inbounds %struct.ux500_msp_dma_params, ptr %cond.i37, i32 0, i32 1
  %dma_addr.0.in = select i1 %tobool.not, ptr %cond.i37, ptr %tx_rx_addr
  %13 = ptrtoint ptr %dma_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %dma_addr.0 = load i32, ptr %dma_addr.0.in, align 4
  %call6 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 6
  %14 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %dst_maxburst, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 5
  %15 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %src_maxburst, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 3
  %16 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 4
  %17 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %dst_addr_width, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 2
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 1
  %dst_addr.sink = select i1 %cmp, ptr %dst_addr, ptr %src_addr
  %20 = ptrtoint ptr %dst_addr.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dma_addr.0, ptr %dst_addr.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ux500_pcm_request_chan(ptr nocapture noundef readonly %rtd, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %6 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %dma_cfg1 = getelementptr inbounds %struct.ux500_msp_dma_params, ptr %cond.i, i32 0, i32 2
  %7 = ptrtoint ptr %dma_cfg1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_cfg1, align 4
  %9 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %switch.selectcmp = icmp eq i32 %10, 16
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %switch.selectcmp21 = icmp eq i32 %10, 8
  %switch.select22 = select i1 %switch.selectcmp21, i32 1, i32 %switch.select
  %spec.select = select i1 %cmp.i, i32 2, i32 %switch.select22
  %spec.select23 = select i1 %cmp.i, i32 %switch.select22, i32 2
  %11 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %8, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %8, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select23, ptr %13, align 4
  %call12 = tail call ptr @snd_dmaengine_pcm_request_channel(ptr noundef nonnull @stedma40_filter, ptr noundef %8) #3
  ret ptr %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_request_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stedma40_filter(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 149, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ux500_pcm_register_platform._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ux500_pcm_register_platform._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ux500_pcm_register_platform, !9, !"__ksymtab_ux500_pcm_register_platform", i1 false, i1 false}
!9 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 157, i32 1}
!10 = !{ptr @__ksymtab_ux500_pcm_unregister_platform, !11, !"__ksymtab_ux500_pcm_unregister_platform", i1 false, i1 false}
!11 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 164, i32 1}
!12 = !{ptr @__UNIQUE_ID_author242, !13, !"__UNIQUE_ID_author242", i1 false, i1 false}
!13 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 166, i32 1}
!14 = !{ptr @__UNIQUE_ID_author243, !15, !"__UNIQUE_ID_author243", i1 false, i1 false}
!15 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 167, i32 1}
!16 = !{ptr @__UNIQUE_ID_description244, !17, !"__UNIQUE_ID_description244", i1 false, i1 false}
!17 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 168, i32 1}
!18 = !{ptr @__UNIQUE_ID_file245, !19, !"__UNIQUE_ID_file245", i1 false, i1 false}
!19 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 169, i32 1}
!20 = !{ptr @__UNIQUE_ID_license246, !19, !"__UNIQUE_ID_license246", i1 false, i1 false}
!21 = !{ptr @ux500_dmaengine_of_pcm_config, !22, !"ux500_dmaengine_of_pcm_config", i1 false, i1 false}
!22 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 130, i32 46}
!23 = !{ptr @ux500_dmaengine_pcm_config, !24, !"ux500_dmaengine_pcm_config", i1 false, i1 false}
!24 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 123, i32 46}
!25 = !{ptr @ux500_pcm_hw, !26, !"ux500_pcm_hw", i1 false, i1 false}
!26 = !{!"../sound/soc/ux500/ux500_pcm.c", i32 34, i32 38}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
