; ModuleID = '/llk/IR_all_yes/sound/soc/bcm/bcm63xx-pcm-whistler.c_pt.bc'
source_filename = "../sound/soc/bcm/bcm63xx-pcm-whistler.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_i2s_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.bcm63xx_runtime_data = type { i32, i32, i32 }
%struct.i2s_dma_desc = type { ptr, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_dma\00", [24 x i8] zeroinitializer }, align 32
@bcm63xx_soc_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"i2s_init: failed to request interrupt.ret=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm63xx_soc_platform_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sound/soc/bcm/bcm63xx-pcm-whistler.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm63xx_soc_platform_probe._entry_ptr = internal global ptr @bcm63xx_soc_platform_probe._entry, section ".printk_index", align 4
@bcm63xx_soc_platform = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm63xx_soc_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm63xx_pcm_open, ptr @bcm63xx_pcm_close, ptr null, ptr @bcm63xx_pcm_hw_params, ptr @bcm63xx_pcm_hw_free, ptr @bcm63xx_pcm_prepare, ptr @bcm63xx_pcm_trigger, ptr null, ptr @bcm63xx_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author240 = internal constant [56 x i8] c"snd_soc_63xx.author=Kevin,Li <kevin-ke.li@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [62 x i8] c"snd_soc_63xx.description=Broadcom DSL XPON ASOC PCM Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [45 x i8] c"snd_soc_63xx.file=sound/soc/bcm/snd-soc-63xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [28 x i8] c"snd_soc_63xx.license=GPL v2\00", section ".modinfo", align 1
@bcm63xx_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 1024, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131072, i32 0, i32 8160, i32 1, i32 341, i32 32 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 396, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 398, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"bcm63xx_soc_platform\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 375, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"bcm63xx_pcm_hardware\00", align 1
@___asan_gen_.32 = private constant [40 x i8] c"../sound/soc/bcm/bcm63xx-pcm-whistler.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 30, i32 38 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @bcm63xx_soc_platform_probe._entry, ptr @bcm63xx_soc_platform_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcm63xx_soc_platform, ptr @bcm63xx_pcm_hardware], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_soc_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_soc_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm63xx_soc_platform_probe(ptr noundef %pdev, ptr noundef %i2s_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %call) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

if.end.irq_get_trigger_type.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 15
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %if.end.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i32 [ %and.i.i, %cond.true.i ], [ 0, %if.end.irq_get_trigger_type.exit_crit_edge ]
  %call.i17 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @i2s_dma_isr, ptr noundef null, i32 noundef %cond.i, ptr noundef nonnull @.str, ptr noundef %i2s_priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not = icmp eq i32 %call.i17, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i17) #10
  br label %cleanup

if.end5:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @bcm63xx_soc_platform, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i17, %do.end ], [ %call7, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_dma_isr(i32 noundef %irq, ptr nocapture noundef readonly %bcm_i2s_priv) #0 align 64 {
entry:
  %int_status = alloca i32, align 4
  %val_1 = alloca i32, align 4
  %val_2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_status) #7
  %0 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %int_status, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_1) #7
  %1 = ptrtoint ptr %val_1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val_1, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_2) #7
  %2 = ptrtoint ptr %val_2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val_2, align 4, !annotation !30
  %regmap_i2s1 = getelementptr inbounds %struct.bcm_i2s_priv, ptr %bcm_i2s_priv, i32 0, i32 1
  %3 = ptrtoint ptr %regmap_i2s1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_i2s1, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 68, ptr noundef nonnull %int_status) #7
  %5 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %int_status, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then:                                          ; preds = %entry
  %capture_substream = getelementptr inbounds %struct.bcm_i2s_priv, ptr %bcm_i2s_priv, i32 0, i32 4
  %7 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %capture_substream, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime2, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 44
  %13 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data3, align 8
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dais, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 5
  %19 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %18, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %18, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %21 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %and5 = lshr i32 %6, 12
  %shr = and i32 %and5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool6.not180 = icmp eq i32 %shr, 0
  br i1 %tobool6.not180, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %offlevel.0181 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %shr, %if.then.while.body_crit_edge ]
  %call7 = call i32 @regmap_read(ptr noundef %4, i32 noundef 92, ptr noundef nonnull %val_1) #7
  %call8 = call i32 @regmap_read(ptr noundef %4, i32 noundef 96, ptr noundef nonnull %val_2) #7
  %dec = add nsw i32 %offlevel.0181, -1
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %22 = ptrtoint ptr %val_1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val_1, align 4
  %24 = ptrtoint ptr %val_2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val_2, align 4
  %add = add i32 %25, %23
  %dma_addr_next = getelementptr inbounds %struct.bcm63xx_runtime_data, ptr %14, i32 0, i32 2
  %26 = ptrtoint ptr %dma_addr_next to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %dma_addr_next, align 4
  %27 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %int_status, align 4
  %and9 = lshr i32 %28, 8
  %shr10 = and i32 %and9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr10)
  %tobool12.not182 = icmp eq i32 %shr10, 8
  br i1 %tobool12.not182, label %while.end.while.end32_crit_edge, label %while.body13.lr.ph

while.end.while.end32_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end32

while.body13.lr.ph:                               ; preds = %while.end
  %sub = sub nsw i32 8, %shr10
  %dma_addr = getelementptr inbounds %struct.i2s_dma_desc, ptr %cond.i, i32 0, i32 1
  %dma_addr18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 51
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 52
  %dma_area23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 50
  %dma_addr26 = getelementptr inbounds %struct.bcm63xx_runtime_data, ptr %14, i32 0, i32 1
  br label %while.body13

while.body13:                                     ; preds = %if.end.while.body13_crit_edge, %while.body13.lr.ph
  %availdepth.0183 = phi i32 [ %sub, %while.body13.lr.ph ], [ %dec31, %if.end.while.body13_crit_edge ]
  %29 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %runtime2, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %30, i32 0, i32 21
  %33 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %34, %32
  %div1.i.i = lshr i32 %mul.i.i, 3
  %35 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr, align 4
  %add15 = add i32 %div1.i.i, %36
  store i32 %add15, ptr %dma_addr, align 4
  %37 = load ptr, ptr %runtime2, align 4
  %period_size.i149 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %period_size.i149 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %period_size.i149, align 4
  %frame_bits.i.i150 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 21
  %40 = ptrtoint ptr %frame_bits.i.i150 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frame_bits.i.i150, align 8
  %mul.i.i151 = mul i32 %41, %39
  %div1.i.i152 = lshr i32 %mul.i.i151, 3
  %42 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cond.i, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 %div1.i.i152
  store ptr %add.ptr, ptr %cond.i, align 4
  %44 = ptrtoint ptr %dma_addr18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr18, align 8
  %sub19 = sub i32 %add15, %45
  %46 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %47)
  %cmp.not = icmp ult i32 %sub19, %47
  br i1 %cmp.not, label %while.body13.if.end_crit_edge, label %if.then20

while.body13.if.end_crit_edge:                    ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then20:                                        ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %dma_addr, align 4
  %49 = ptrtoint ptr %dma_area23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_area23, align 4
  %51 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %cond.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then20, %while.body13.if.end_crit_edge
  %52 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_addr, align 4
  %54 = ptrtoint ptr %dma_addr26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %dma_addr26, align 4
  %55 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %runtime2, align 4
  %period_size.i154 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %period_size.i154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %period_size.i154, align 4
  %frame_bits.i.i155 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 21
  %59 = ptrtoint ptr %frame_bits.i.i155 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %frame_bits.i.i155, align 8
  %mul.i.i156 = mul i32 %60, %58
  %div1.i.i157 = lshr i32 %mul.i.i156, 3
  %call28 = call i32 @regmap_write(ptr noundef %4, i32 noundef 88, i32 noundef %div1.i.i157) #7
  %61 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_addr, align 4
  %call30 = call i32 @regmap_write(ptr noundef %4, i32 noundef 84, i32 noundef %62) #7
  %dec31 = add i32 %availdepth.0183, -1
  %tobool12.not = icmp eq i32 %dec31, 0
  br i1 %tobool12.not, label %if.end.while.end32_crit_edge, label %if.end.while.body13_crit_edge

if.end.while.body13_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body13

if.end.while.end32_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end32

while.end32:                                      ; preds = %if.end.while.end32_crit_edge, %while.end.while.end32_crit_edge
  call void @snd_pcm_period_elapsed(ptr noundef %8) #7
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 68, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end34

if.end34:                                         ; preds = %while.end32, %entry.if.end34_crit_edge
  %call35 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %int_status) #7
  %63 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %int_status, align 4
  %and36 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end88_crit_edge, label %if.then38

if.end34.if.end88_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then38:                                        ; preds = %if.end34
  %play_substream = getelementptr inbounds %struct.bcm_i2s_priv, ptr %bcm_i2s_priv, i32 0, i32 3
  %65 = ptrtoint ptr %play_substream to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %play_substream, align 4
  %runtime39 = getelementptr inbounds %struct.snd_pcm_substream, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %runtime39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %runtime39, align 4
  %private_data40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %private_data40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private_data40, align 4
  %private_data41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %68, i32 0, i32 44
  %71 = ptrtoint ptr %private_data41 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private_data41, align 8
  %dais42 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %70, i32 0, i32 9
  %73 = ptrtoint ptr %dais42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dais42, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %stream.i158 = getelementptr inbounds %struct.snd_pcm_substream, ptr %66, i32 0, i32 5
  %77 = ptrtoint ptr %stream.i158 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %stream.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i159 = icmp eq i32 %78, 0
  %playback_dma_data.i160 = getelementptr inbounds %struct.snd_soc_dai, ptr %76, i32 0, i32 7
  %capture_dma_data.i161 = getelementptr inbounds %struct.snd_soc_dai, ptr %76, i32 0, i32 8
  %cond.in.i162 = select i1 %cmp.i159, ptr %playback_dma_data.i160, ptr %capture_dma_data.i161
  %79 = ptrtoint ptr %cond.in.i162 to i32
  call void @__asan_load4_noabort(i32 %79)
  %cond.i163 = load ptr, ptr %cond.in.i162, align 4
  %and45 = lshr i32 %64, 12
  %shr46 = and i32 %and45, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr46)
  %tobool48.not184 = icmp eq i32 %shr46, 0
  br i1 %tobool48.not184, label %if.then38.while.end55_crit_edge, label %while.body49.lr.ph

if.then38.while.end55_crit_edge:                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end55

while.body49.lr.ph:                               ; preds = %if.then38
  %dma_addr_next53 = getelementptr inbounds %struct.bcm63xx_runtime_data, ptr %72, i32 0, i32 2
  br label %while.body49

while.body49:                                     ; preds = %while.body49.while.body49_crit_edge, %while.body49.lr.ph
  %offlevel.1185 = phi i32 [ %shr46, %while.body49.lr.ph ], [ %dec54, %while.body49.while.body49_crit_edge ]
  %call50 = call i32 @regmap_read(ptr noundef %4, i32 noundef 28, ptr noundef nonnull %val_1) #7
  %call51 = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %val_2) #7
  %80 = ptrtoint ptr %val_1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val_1, align 4
  %82 = ptrtoint ptr %val_2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val_2, align 4
  %add52 = add i32 %83, %81
  %84 = ptrtoint ptr %dma_addr_next53 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add52, ptr %dma_addr_next53, align 4
  %dec54 = add nsw i32 %offlevel.1185, -1
  %tobool48.not = icmp eq i32 %dec54, 0
  br i1 %tobool48.not, label %while.body49.while.end55_crit_edge, label %while.body49.while.body49_crit_edge

while.body49.while.body49_crit_edge:              ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body49

while.body49.while.end55_crit_edge:               ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end55

while.end55:                                      ; preds = %while.body49.while.end55_crit_edge, %if.then38.while.end55_crit_edge
  %85 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %int_status, align 4
  %and56 = lshr i32 %86, 8
  %shr57 = and i32 %and56, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr57)
  %tobool60.not186 = icmp eq i32 %shr57, 8
  br i1 %tobool60.not186, label %while.end55.while.end86_crit_edge, label %while.body61.lr.ph

while.end55.while.end86_crit_edge:                ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end86

while.body61.lr.ph:                               ; preds = %while.end55
  %sub58 = sub nsw i32 8, %shr57
  %dma_addr63 = getelementptr inbounds %struct.i2s_dma_desc, ptr %cond.i163, i32 0, i32 1
  %dma_addr69 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %68, i32 0, i32 51
  %dma_bytes71 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %68, i32 0, i32 52
  %dma_area76 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %68, i32 0, i32 50
  %dma_addr80 = getelementptr inbounds %struct.bcm63xx_runtime_data, ptr %72, i32 0, i32 1
  br label %while.body61

while.body61:                                     ; preds = %if.end78.while.body61_crit_edge, %while.body61.lr.ph
  %availdepth.1187 = phi i32 [ %sub58, %while.body61.lr.ph ], [ %dec85, %if.end78.while.body61_crit_edge ]
  %87 = ptrtoint ptr %runtime39 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %runtime39, align 4
  %period_size.i165 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %88, i32 0, i32 16
  %89 = ptrtoint ptr %period_size.i165 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %period_size.i165, align 4
  %frame_bits.i.i166 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %88, i32 0, i32 21
  %91 = ptrtoint ptr %frame_bits.i.i166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %frame_bits.i.i166, align 8
  %mul.i.i167 = mul i32 %92, %90
  %div1.i.i168 = lshr i32 %mul.i.i167, 3
  %93 = ptrtoint ptr %dma_addr63 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_addr63, align 4
  %add64 = add i32 %div1.i.i168, %94
  store i32 %add64, ptr %dma_addr63, align 4
  %95 = load ptr, ptr %runtime39, align 4
  %period_size.i170 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %period_size.i170 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %period_size.i170, align 4
  %frame_bits.i.i171 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 21
  %98 = ptrtoint ptr %frame_bits.i.i171 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %frame_bits.i.i171, align 8
  %mul.i.i172 = mul i32 %99, %97
  %div1.i.i173 = lshr i32 %mul.i.i172, 3
  %100 = ptrtoint ptr %cond.i163 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cond.i163, align 4
  %add.ptr67 = getelementptr i8, ptr %101, i32 %div1.i.i173
  store ptr %add.ptr67, ptr %cond.i163, align 4
  %102 = ptrtoint ptr %dma_addr69 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma_addr69, align 8
  %sub70 = sub i32 %add64, %103
  %104 = ptrtoint ptr %dma_bytes71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_bytes71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub70, i32 %105)
  %cmp72.not = icmp ult i32 %sub70, %105
  br i1 %cmp72.not, label %while.body61.if.end78_crit_edge, label %if.then73

while.body61.if.end78_crit_edge:                  ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then73:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %dma_addr63 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %103, ptr %dma_addr63, align 4
  %107 = ptrtoint ptr %dma_area76 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_area76, align 4
  %109 = ptrtoint ptr %cond.i163 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %cond.i163, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %while.body61.if.end78_crit_edge
  %110 = ptrtoint ptr %dma_addr63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_addr63, align 4
  %112 = ptrtoint ptr %dma_addr80 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %dma_addr80, align 4
  %113 = ptrtoint ptr %runtime39 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %runtime39, align 4
  %period_size.i175 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %114, i32 0, i32 16
  %115 = ptrtoint ptr %period_size.i175 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %period_size.i175, align 4
  %frame_bits.i.i176 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %114, i32 0, i32 21
  %117 = ptrtoint ptr %frame_bits.i.i176 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %frame_bits.i.i176, align 8
  %mul.i.i177 = mul i32 %118, %116
  %div1.i.i178 = lshr i32 %mul.i.i177, 3
  %call82 = call i32 @regmap_write(ptr noundef %4, i32 noundef 24, i32 noundef %div1.i.i178) #7
  %119 = ptrtoint ptr %dma_addr63 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_addr63, align 4
  %call84 = call i32 @regmap_write(ptr noundef %4, i32 noundef 20, i32 noundef %120) #7
  %dec85 = add i32 %availdepth.1187, -1
  %tobool60.not = icmp eq i32 %dec85, 0
  br i1 %tobool60.not, label %if.end78.while.end86_crit_edge, label %if.end78.while.body61_crit_edge

if.end78.while.body61_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body61

if.end78.while.end86_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end86

while.end86:                                      ; preds = %if.end78.while.end86_crit_edge, %while.end55.while.end86_crit_edge
  call void @snd_pcm_period_elapsed(ptr noundef %66) #7
  %call.i179 = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 4, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end88

if.end88:                                         ; preds = %while.end86, %if.end34.if.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_status) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bcm63xx_soc_platform_remove(ptr nocapture noundef readnone %pdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_soc_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
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
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_dma_configure_id(ptr noundef %13, ptr noundef %15, i1 noundef zeroext true, ptr noundef null) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev7 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev7, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %19, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %19, i64 noundef 4294967295) #7
  %substream = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 4
  %21 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream, align 8
  %tobool10.not = icmp eq ptr %22, null
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %play_substream = getelementptr inbounds %struct.bcm_i2s_priv, ptr %9, i32 0, i32 3
  %23 = ptrtoint ptr %play_substream to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %play_substream, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %substream18 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %24 = ptrtoint ptr %substream18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %substream18, align 8
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.end15.if.end24_crit_edge, label %if.then20

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %capture_substream = getelementptr inbounds %struct.bcm_i2s_priv, ptr %9, i32 0, i32 4
  %26 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %capture_substream, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end15.if.end24_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev26, align 8
  %call.i42 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 5, ptr noundef %30, i32 noundef 131072, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i42, %if.end24 ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_pcm_open(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %2 = call ptr @memcpy(ptr %hw, ptr @bcm63xx_pcm_hardware, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #11
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_pcm_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_pcm_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dais, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %6, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %6, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %9 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %capture_dma_data.sink.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_pcm_hw_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef %cond.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_pcm_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
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
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %13 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %14, %12
  %div1.i.i = lshr i32 %mul.i.i, 3
  %dma_len = getelementptr inbounds %struct.i2s_dma_desc, ptr %cond.i, i32 0, i32 2
  %15 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div1.i.i, ptr %dma_len, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 8
  %dma_addr3 = getelementptr inbounds %struct.i2s_dma_desc, ptr %cond.i, i32 0, i32 1
  %18 = ptrtoint ptr %dma_addr3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dma_addr3, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %19 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_area, align 4
  %21 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cond.i, align 4
  %22 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  %. = select i1 %cmp, i32 24, i32 88
  %.24 = select i1 %cmp, i32 20, i32 84
  %24 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dais, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %regmap_i2s8 = getelementptr inbounds %struct.bcm_i2s_priv, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %regmap_i2s8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap_i2s8, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %., i32 noundef %div1.i.i) #7
  %34 = ptrtoint ptr %dma_addr3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr3, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %.24, i32 noundef %35) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_pcm_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %regmap_i2s1 = getelementptr inbounds %struct.bcm_i2s_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap_i2s1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_i2s1, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.then.sw.bb4_crit_edge
    i32 5, label %if.then.sw.bb4_crit_edge30
    i32 3, label %if.then.sw.bb4_crit_edge31
  ]

if.then.sw.bb4_crit_edge31:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.then.sw.bb4_crit_edge30:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.then.sw.bb4_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

sw.bb4:                                           ; preds = %if.then.sw.bb4_crit_edge, %if.then.sw.bb4_crit_edge30, %if.then.sw.bb4_crit_edge31
  %call5 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8, i32 noundef 0) #7
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %cmd, label %if.else.if.end_crit_edge [
    i32 1, label %sw.bb7
    i32 0, label %if.else.sw.bb10_crit_edge
    i32 5, label %if.else.sw.bb10_crit_edge32
    i32 3, label %if.else.sw.bb10_crit_edge33
  ]

if.else.sw.bb10_crit_edge33:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.else.sw.bb10_crit_edge32:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.else.sw.bb10_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb7:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 72, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 64, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

sw.bb10:                                          ; preds = %if.else.sw.bb10_crit_edge, %if.else.sw.bb10_crit_edge32, %if.else.sw.bb10_crit_edge33
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 72, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 64, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %sw.bb10, %sw.bb7, %if.else.if.end_crit_edge, %sw.bb4, %sw.bb, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ -22, %if.then.if.end_crit_edge ], [ -22, %if.else.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm63xx_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dma_addr_next = getelementptr inbounds %struct.bcm63xx_runtime_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dma_addr_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %8 = ptrtoint ptr %dma_addr_next to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dma_addr_next, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime, align 4
  %11 = ptrtoint ptr %dma_addr_next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr_next, align 4
  %dma_addr6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 51
  %13 = ptrtoint ptr %dma_addr6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr6, align 8
  %sub = sub i32 %12, %14
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %16
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 18
  %17 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %18)
  %cmp = icmp eq i32 %div.i, %18
  %spec.select = select i1 %cmp, i32 0, i32 %div.i
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/bcm/bcm63xx-pcm-whistler.c", i32 396, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/bcm/bcm63xx-pcm-whistler.c", i32 398, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bcm63xx_soc_platform_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @bcm63xx_soc_platform_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author240, !11, !"__UNIQUE_ID_author240", i1 false, i1 false}
!11 = !{!"../sound/soc/bcm/bcm63xx-pcm-whistler.c", i32 412, i32 1}
!12 = !{ptr @__UNIQUE_ID_description241, !13, !"__UNIQUE_ID_description241", i1 false, i1 false}
!13 = !{!"../sound/soc/bcm/bcm63xx-pcm-whistler.c", i32 413, i32 1}
!14 = !{ptr @__UNIQUE_ID_file242, !15, !"__UNIQUE_ID_file242", i1 false, i1 false}
!15 = !{!"../sound/soc/bcm/bcm63xx-pcm-whistler.c", i32 414, i32 1}
!16 = !{ptr @__UNIQUE_ID_license243, !15, !"__UNIQUE_ID_license243", i1 false, i1 false}
!17 = !{ptr @bcm63xx_soc_platform, !18, !"bcm63xx_soc_platform", i1 false, i1 false}
!18 = !{!"../sound/soc/bcm/bcm63xx-pcm-whistler.c", i32 375, i32 46}
!19 = !{ptr @bcm63xx_pcm_hardware, !20, !"bcm63xx_pcm_hardware", i1 false, i1 false}
!20 = !{!"../sound/soc/bcm/bcm63xx-pcm-whistler.c", i32 30, i32 38}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
