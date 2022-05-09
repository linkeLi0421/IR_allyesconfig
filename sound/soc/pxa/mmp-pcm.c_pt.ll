; ModuleID = '/llk/IR_all_yes/sound/soc/pxa/mmp-pcm.c_pt.bc'
source_filename = "../sound/soc/pxa/mmp-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
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
%struct.mmp_audio_platdata = type { i32, i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mmp_dma_data = type { i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_snd_soc_mmp__242_262_mmp_pcm_driver_init6 = internal global ptr @mmp_pcm_driver_init, section ".initcall6.init", align 4
@mmp_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmp_pcm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmp_pcm_driver_exit = internal global ptr @mmp_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [46 x i8] c"snd_soc_mmp.author=Leo Yan <leoy@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [49 x i8] c"snd_soc_mmp.description=MMP Soc Audio DMA module\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [43 x i8] c"snd_soc_mmp.file=sound/soc/pxa/snd-soc-mmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"snd_soc_mmp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [41 x i8] c"snd_soc_mmp.alias=platform:mmp-pcm-audio\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmp-pcm-audio\00", [18 x i8] zeroinitializer }, align 32
@mmp_pcm_hardware = internal global { [2 x %struct.snd_pcm_hardware], [32 x i8] } { [2 x %struct.snd_pcm_hardware] [%struct.snd_pcm_hardware { i32 9175299, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 1024, i32 2048, i32 2, i32 32, i32 32 }, %struct.snd_pcm_hardware { i32 9175299, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 1024, i32 2048, i32 2, i32 32, i32 32 }], [32 x i8] zeroinitializer }, align 32
@mmp_soc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.1, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_pcm_new, ptr @mmp_pcm_free_dma_buffers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_pcm_open, ptr @mmp_pcm_close, ptr null, ptr @mmp_pcm_hw_params, ptr null, ptr null, ptr @mmp_pcm_trigger, ptr null, ptr @mmp_pcm_pointer, ptr null, ptr null, ptr null, ptr @mmp_pcm_mmap, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmp-pcm\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"asram\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"mmp_pcm_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 254, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 256, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"mmp_pcm_hardware\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 37, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"mmp_soc_component\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 224, i32 46 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 225, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 191, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [27 x i8] c"../sound/soc/pxa/mmp-pcm.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 99, i32 34 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_mmp_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_mmp__242_262_mmp_pcm_driver_init6, ptr @mmp_pcm_driver_exit, ptr @mmp_pcm_driver, ptr @.str, ptr @mmp_pcm_hardware, ptr @mmp_soc_component, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pcm_hardware to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_soc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmp_pcm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmp_pcm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmp_pcm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %buffer_max_playback = getelementptr inbounds %struct.mmp_audio_platdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buffer_max_playback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_max_playback, align 4
  store i32 %3, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 0, i32 7), align 4
  %period_max_playback = getelementptr inbounds %struct.mmp_audio_platdata, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %period_max_playback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_max_playback, align 4
  store i32 %5, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 0, i32 9), align 4
  %buffer_max_capture = getelementptr inbounds %struct.mmp_audio_platdata, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %buffer_max_capture to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_max_capture, align 4
  store i32 %7, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 1, i32 7), align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  store i32 %9, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 1, i32 9), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mmp_soc_component, ptr noundef null, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %substream2 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 4
  %2 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream2, align 8
  %dma_buffer.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 8
  %4 = load i32, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 0, i32 7), align 4
  %5 = ptrtoint ptr %dma_buffer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %dma_buffer.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev1.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 8
  %dev3.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 8, i32 0, i32 3
  %12 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dev3.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 8, i32 4
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %private_data.i, align 4
  %call.i = tail call ptr @sram_get_gpool(ptr noundef nonnull @.str.2) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.err_crit_edge, label %if.end.i

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i:                                         ; preds = %entry
  %addr.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 8, i32 2
  %call4.i = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %call.i, i32 noundef %4, ptr noundef %addr.i) #5
  %area.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %area.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i.err_crit_edge, label %for.inc

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc:                                          ; preds = %if.end.i
  %bytes.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %4, ptr %bytes.i, align 4
  %substream2.1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %16 = ptrtoint ptr %substream2.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream2.1, align 8
  %dma_buffer.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 8
  %18 = load i32, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 1, i32 7), align 4
  %19 = ptrtoint ptr %dma_buffer.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %dma_buffer.i.1, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev1.i.1 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev1.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i.1, align 8
  %dev3.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 8, i32 0, i32 3
  %26 = ptrtoint ptr %dev3.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dev3.i.1, align 4
  %private_data.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 8, i32 4
  %27 = ptrtoint ptr %private_data.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %private_data.i.1, align 4
  %call.i.1 = tail call ptr @sram_get_gpool(ptr noundef nonnull @.str.2) #5
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %for.inc.err_crit_edge, label %if.end.i.1

for.inc.err_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i.1:                                       ; preds = %for.inc
  %addr.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 8, i32 2
  %call4.i.1 = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %call.i.1, i32 noundef %18, ptr noundef %addr.i.1) #5
  %area.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %area.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call4.i.1, ptr %area.i.1, align 4
  %tobool6.not.i.1 = icmp eq ptr %call4.i.1, null
  br i1 %tobool6.not.i.1, label %if.end.i.1.err_crit_edge, label %for.inc.1

if.end.i.1.err_crit_edge:                         ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.1:                                        ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %bytes.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 8, i32 3
  %29 = ptrtoint ptr %bytes.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %18, ptr %bytes.i.1, align 4
  br label %cleanup

err:                                              ; preds = %if.end.i.1.err_crit_edge, %for.inc.err_crit_edge, %if.end.i.err_crit_edge, %entry.err_crit_edge
  %call.i11 = tail call ptr @sram_get_gpool(ptr noundef nonnull @.str.2) #5
  %tobool.not.i12 = icmp eq ptr %call.i11, null
  br i1 %tobool.not.i12, label %err.cleanup_crit_edge, label %for.body.preheader.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader.i:                             ; preds = %err
  %30 = load i32, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 0, i32 7), align 4
  %31 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %substream2, align 8
  %tobool3.not.i = icmp eq ptr %32, null
  br i1 %tobool3.not.i, label %for.body.preheader.i.cleanup.i_crit_edge, label %if.end5.i

for.body.preheader.i.cleanup.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end5.i:                                        ; preds = %for.body.preheader.i
  %area.i13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %32, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %area.i13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %area.i13, align 4
  %tobool6.not.i14 = icmp eq ptr %34, null
  br i1 %tobool6.not.i14, label %if.end5.i.cleanup.i_crit_edge, label %if.end8.i15

if.end5.i.cleanup.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end8.i15:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %34 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %call.i11, i32 noundef %35, i32 noundef %30, ptr noundef null) #5
  %36 = ptrtoint ptr %area.i13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %area.i13, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end8.i15, %if.end5.i.cleanup.i_crit_edge, %for.body.preheader.i.cleanup.i_crit_edge
  %37 = load i32, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 1, i32 7), align 4
  %substream2.1.i = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %38 = ptrtoint ptr %substream2.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %substream2.1.i, align 8
  %tobool3.not.1.i = icmp eq ptr %39, null
  br i1 %tobool3.not.1.i, label %cleanup.i.cleanup_crit_edge, label %if.end5.1.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.1.i:                                      ; preds = %cleanup.i
  %area.1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %39, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %area.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %area.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %41, null
  br i1 %tobool6.not.1.i, label %if.end5.1.i.cleanup_crit_edge, label %if.end8.1.i

if.end5.1.i.cleanup_crit_edge:                    ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.1.i:                                      ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %41 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %call.i11, i32 noundef %42, i32 noundef %37, ptr noundef null) #5
  %43 = ptrtoint ptr %area.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %area.1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8.1.i, %if.end5.1.i.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %err.cleanup_crit_edge, %for.inc.1
  %retval.0 = phi i32 [ -12, %err.cleanup_crit_edge ], [ -12, %cleanup.i.cleanup_crit_edge ], [ -12, %if.end5.1.i.cleanup_crit_edge ], [ -12, %if.end8.1.i ], [ 0, %for.inc.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp_pcm_free_dma_buffers(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %pcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sram_get_gpool(ptr noundef nonnull @.str.2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup11_crit_edge, label %for.body.preheader

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup11

for.body.preheader:                               ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 0, i32 7), align 4
  %substream2 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 4
  %1 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream2, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %for.body.preheader.cleanup_crit_edge, label %if.end5

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %for.body.preheader
  %area = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %area, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %4 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %call, i32 noundef %5, i32 noundef %0, ptr noundef null) #5
  %6 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %area, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge
  %7 = load i32, ptr getelementptr inbounds ([2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 1, i32 7), align 4
  %substream2.1 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1, i32 4
  %8 = ptrtoint ptr %substream2.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream2.1, align 8
  %tobool3.not.1 = icmp eq ptr %9, null
  br i1 %tobool3.not.1, label %cleanup.cleanup11_crit_edge, label %if.end5.1

cleanup.cleanup11_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup11

if.end5.1:                                        ; preds = %cleanup
  %area.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %area.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %area.1, align 4
  %tobool6.not.1 = icmp eq ptr %11, null
  br i1 %tobool6.not.1, label %if.end5.1.cleanup11_crit_edge, label %if.end8.1

if.end5.1.cleanup11_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup11

if.end8.1:                                        ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %11 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %call, i32 noundef %12, i32 noundef %7, ptr noundef null) #5
  %13 = ptrtoint ptr %area.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %area.1, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %if.end8.1, %if.end5.1.cleanup11_crit_edge, %cleanup.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  %dma_data = alloca %struct.mmp_dma_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma_data) #5
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  %call = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 2048, i32 noundef %9) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct.mmp_dma_data, ptr %dma_data, i32 0, i32 1
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream, align 4
  %arrayidx2 = getelementptr [2 x %struct.snd_pcm_hardware], ptr @mmp_pcm_hardware, i32 0, i32 %12
  %call3 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef %arrayidx2) #5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %10, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %16 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma_data, align 4
  %call4 = call i32 @snd_dmaengine_pcm_open_request_chan(ptr noundef %substream, ptr noundef nonnull @filter, ptr noundef nonnull %dma_data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_close(ptr nocapture noundef readnone %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_dmaengine_pcm_close_release_chan(ptr noundef %substream) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_hw_params(ptr nocapture noundef readnone %component, ptr noundef %substream, ptr noundef %params) #2 align 64 {
entry:
  %slave_config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_dmaengine_pcm_get_chan(ptr noundef %substream) #5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config) #5
  %0 = call ptr @memset(ptr %slave_config, i32 255, i32 48)
  %call1 = call i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef nonnull %slave_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 44
  %3 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %dmaengine_slave_config.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dmaengine_slave_config.exit:                      ; preds = %if.end
  %call.i = call i32 %4(ptr noundef %call, ptr noundef nonnull %slave_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %dmaengine_slave_config.exit.cleanup_crit_edge

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %dmaengine_slave_config.exit
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %5 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1.i, align 4
  %tobool.not.i14 = icmp eq ptr %dma_buffer, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 53
  br i1 %tobool.not.i14, label %if.else.i, label %if.then.i15

if.then.i15:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dma_buffer, ptr %dma_buffer_p2.i, align 8
  %area.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %area.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  %10 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 51
  %13 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  %17 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 51
  %18 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i, %if.then.i15
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %15, %if.then.i15 ]
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 52
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %snd_pcm_set_runtime_buffer.exit, %dmaengine_slave_config.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %snd_pcm_set_runtime_buffer.exit ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %dmaengine_slave_config.exit.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_trigger(ptr nocapture noundef readnone %component, ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_dmaengine_pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_pointer(ptr nocapture noundef readnone %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_dmaengine_pcm_pointer(ptr noundef %substream) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_mmap(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %4 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %5, -61
  store i32 %and, ptr %vm_page_prot, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 8
  %shr = lshr i32 %9, 12
  %add = add i32 %shr, %3
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %11, %7
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %7, i32 noundef %add, i32 noundef %sub, i32 noundef %and) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sram_get_gpool(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_open_request_chan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @filter(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_res = getelementptr inbounds %struct.mmp_dma_data, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %dma_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_res, align 4
  %name = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %5) #5
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %land.lhs.true, label %dev_name.exit.if.end_crit_edge

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %14 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan_id, align 4
  %16 = ptrtoint ptr %dma_res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_res, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp4 = icmp eq i32 %15, %19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %dev_name.exit.if.end_crit_edge
  %found.0.off0 = phi i1 [ false, %dev_name.exit.if.end_crit_edge ], [ %cmp4, %land.lhs.true ]
  tail call void @kfree(ptr noundef %call) #5
  ret i1 %found.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_close_release_chan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_get_chan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_trigger(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_pointer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_snd_soc_mmp__242_262_mmp_pcm_driver_init6, !1, !"__initcall__kmod_snd_soc_mmp__242_262_mmp_pcm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_mmp_pcm_driver_exit, !1, !"__exitcall_mmp_pcm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 264, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 265, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias247, !11, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!11 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 267, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 256, i32 11}
!14 = !{ptr @mmp_pcm_driver, !15, !"mmp_pcm_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 254, i32 31}
!16 = !{ptr @mmp_pcm_hardware, !17, !"mmp_pcm_hardware", i1 false, i1 false}
!17 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 37, i32 32}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 225, i32 11}
!20 = !{ptr @mmp_soc_component, !21, !"mmp_soc_component", i1 false, i1 false}
!21 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 224, i32 46}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 191, i32 25}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/pxa/mmp-pcm.c", i32 99, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
