; ModuleID = '/llk/IR_all_yes/sound/soc/sof/nocodec.c_pt.bc'
source_filename = "../sound/soc/sof/nocodec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_snd_sof_nocodec__244_119_sof_nocodec_audio_init6 = internal global ptr @sof_nocodec_audio_init, section ".initcall6.init", align 4
@sof_nocodec_audio = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sof_nocodec_probe, ptr @sof_nocodec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sof_nocodec_audio_exit = internal global ptr @sof_nocodec_audio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [45 x i8] c"snd_sof_nocodec.description=ASoC sof nocodec\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [37 x i8] c"snd_sof_nocodec.author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [51 x i8] c"snd_sof_nocodec.file=sound/soc/sof/snd-sof-nocodec\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [37 x i8] c"snd_sof_nocodec.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias249 = internal constant [43 x i8] c"snd_sof_nocodec.alias=platform:sof-nocodec\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sof-nocodec\00", [20 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@sof_nocodec_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.1, ptr null, ptr null, ptr null, [32 x i8] c"sof-nocodec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nocodec\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NoCodec-%d\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"sof_nocodec_audio\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 111, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 115, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"sof_nocodec_card\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 16, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 17, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 40, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 58, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [27 x i8] c"../sound/soc/sof/nocodec.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 59, i32 27 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_sof_nocodec_audio_exit, ptr @__initcall__kmod_snd_sof_nocodec__244_119_sof_nocodec_audio_init6, ptr @sof_nocodec_audio_exit, ptr @sof_nocodec_audio, ptr @.str, ptr @sof_nocodec_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_nocodec_audio to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_nocodec_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_nocodec_audio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sof_nocodec_audio, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sof_nocodec_audio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @sof_nocodec_audio) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_nocodec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @sof_nocodec_card, i32 0, i32 5), align 4
  %bf.load = load i8, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @sof_nocodec_card, i32 0, i32 56), align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @sof_nocodec_card, i32 0, i32 56), align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %num_dai_drivers = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %1, i32 0, i32 10, i32 7
  %2 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_dai_drivers, align 4
  %dai_drivers = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %1, i32 0, i32 10, i32 8
  %4 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_drivers, align 4
  %mul.i = mul i32 %3, 116
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 3520) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %for.cond.preheader.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i.i = icmp sgt i32 %3, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.if.end_crit_edge

for.cond.preheader.i.i.if.end_crit_edge:          ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %parent.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end57.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end57.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #4
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %if.end6.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i.i:                                      ; preds = %for.body.i.i
  %call7.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %i.02.i.i) #4
  %arrayidx.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i.i, label %if.end6.i.i.cleanup_crit_edge, label %if.end12.i.i

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.end6.i.i
  %stream_name.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 1
  %7 = ptrtoint ptr %stream_name.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %stream_name.i.i, align 4
  %cpus.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 2
  %8 = ptrtoint ptr %cpus.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %cpus.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i.i.i, i32 1
  %codecs.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 4
  %9 = ptrtoint ptr %codecs.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx18.i.i, ptr %codecs.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i.i.i, i32 2
  %platforms.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 6
  %10 = ptrtoint ptr %platforms.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx20.i.i, ptr %platforms.i.i, align 4
  %num_cpus.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 3
  %11 = ptrtoint ptr %num_cpus.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %num_cpus.i.i, align 4
  %num_codecs.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 5
  %12 = ptrtoint ptr %num_codecs.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_codecs.i.i, align 4
  %num_platforms.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 7
  %13 = ptrtoint ptr %num_platforms.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_platforms.i.i, align 4
  %id.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 8
  %14 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.02.i.i, ptr %id.i.i, align 4
  %no_pcm.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 18
  %15 = ptrtoint ptr %no_pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i.i = load i32, ptr %no_pcm.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i.i, 16777216
  store i32 %bf.set.i.i, ptr %no_pcm.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %5, i32 %i.02.i.i
  %16 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx27.i.i, align 8
  %dai_name.i.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %dai_name.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dai_name.i.i, align 4
  %19 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end12.i.i.dev_name.exit.i.i_crit_edge

if.end12.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end12.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.end.i.i.i ], [ %22, %if.end12.i.i.dev_name.exit.i.i_crit_edge ]
  %25 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i.i.i, ptr %arrayidx20.i.i, align 4
  %dai_name37.i.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i.i.i, i32 1, i32 2
  %26 = ptrtoint ptr %dai_name37.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.3, ptr %dai_name37.i.i, align 4
  %27 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.4, ptr %arrayidx18.i.i, align 4
  %channels_min.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %5, i32 %i.02.i.i, i32 11, i32 5
  %28 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels_min.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool42.not.i.i, label %dev_name.exit.i.i.if.end48.i.i_crit_edge, label %if.then43.i.i

dev_name.exit.i.i.if.end48.i.i_crit_edge:         ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i.i

if.then43.i.i:                                    ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set47.i.i = or i32 %bf.load.i.i, 18874368
  %30 = ptrtoint ptr %no_pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.set47.i.i, ptr %no_pcm.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then43.i.i, %dev_name.exit.i.i.if.end48.i.i_crit_edge
  %channels_min50.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %5, i32 %i.02.i.i, i32 10, i32 5
  %31 = ptrtoint ptr %channels_min50.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channels_min50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool51.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool51.not.i.i, label %if.end48.i.i.if.end57.i.i_crit_edge, label %if.then52.i.i

if.end48.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i.i

if.then52.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %no_pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load54.i.i = load i32, ptr %no_pcm.i.i, align 4
  %bf.set56.i.i = or i32 %bf.load54.i.i, 4194304
  store i32 %bf.set56.i.i, ptr %no_pcm.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then52.i.i, %if.end48.i.i.if.end57.i.i_crit_edge
  %be_hw_params_fixup.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i, i32 %i.02.i.i, i32 15
  %34 = ptrtoint ptr %be_hw_params_fixup.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sof_pcm_dai_link_fixup, ptr %be_hw_params_fixup.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %if.end57.i.i.if.end_crit_edge, label %if.end57.i.i.for.body.i.i_crit_edge

if.end57.i.i.for.body.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end57.i.i.if.end_crit_edge:                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.end57.i.i.if.end_crit_edge, %for.cond.preheader.i.i.if.end_crit_edge
  store ptr %call.i.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @sof_nocodec_card, i32 0, i32 24), align 4
  store i32 %3, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @sof_nocodec_card, i32 0, i32 25), align 4
  %call6 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @sof_nocodec_card) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %if.end.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %for.body.i.i.cleanup_crit_edge ], [ -12, %if.end6.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sof_nocodec_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_pcm_dai_link_fixup(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_snd_sof_nocodec__244_119_sof_nocodec_audio_init6, !1, !"__initcall__kmod_snd_sof_nocodec__244_119_sof_nocodec_audio_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/nocodec.c", i32 119, i32 1}
!2 = !{ptr @__exitcall_sof_nocodec_audio_exit, !1, !"__exitcall_sof_nocodec_audio_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/nocodec.c", i32 121, i32 1}
!5 = !{ptr @__UNIQUE_ID_author246, !6, !"__UNIQUE_ID_author246", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/nocodec.c", i32 122, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../sound/soc/sof/nocodec.c", i32 123, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias249, !11, !"__UNIQUE_ID_alias249", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/nocodec.c", i32 124, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/nocodec.c", i32 115, i32 11}
!14 = !{ptr @sof_nocodec_audio, !15, !"sof_nocodec_audio", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/nocodec.c", i32 111, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/nocodec.c", i32 17, i32 10}
!18 = !{ptr @sof_nocodec_card, !19, !"sof_nocodec_card", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/nocodec.c", i32 16, i32 28}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/nocodec.c", i32 40, i32 13}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/nocodec.c", i32 58, i32 31}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/nocodec.c", i32 59, i32 27}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
