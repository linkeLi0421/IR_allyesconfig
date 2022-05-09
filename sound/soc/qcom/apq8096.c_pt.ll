; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/apq8096.c_pt.bc'
source_filename = "../sound/soc/qcom/apq8096.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_apq8096__238_141_msm_snd_apq8096_driver_init6 = internal global ptr @msm_snd_apq8096_driver_init, section ".initcall6.init", align 4
@msm_snd_apq8096_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @apq8096_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_snd_apq8096_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_msm_snd_apq8096_driver_exit = internal global ptr @msm_snd_apq8096_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [75 x i8] c"snd_soc_apq8096.author=Srinivas Kandagatla <srinivas.kandagatla@linaro.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [56 x i8] c"snd_soc_apq8096.description=APQ8096 ASoC Machine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [52 x i8] c"snd_soc_apq8096.file=sound/soc/qcom/snd-soc-apq8096\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [31 x i8] c"snd_soc_apq8096.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msm-snd-apq8096\00", [16 x i8] zeroinitializer }, align 32
@msm_snd_apq8096_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8096-sndcard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@apq8096_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @msm_snd_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__const.apq8096_init.rx_ch = private unnamed_addr constant [16 x i32] [i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 0, i32 0, i32 0], align 4
@__const.apq8096_init.tx_ch = private unnamed_addr constant [16 x i32] [i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143], align 4
@msm_snd_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed to get codec chan map, err:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_snd_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/qcom/apq8096.c\00", [39 x i8] zeroinitializer }, align 32
@msm_snd_hw_params._entry_ptr = internal global ptr @msm_snd_hw_params._entry, section ".printk_index", align 4
@msm_snd_hw_params._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Failed to set cpu chan map, err:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@msm_snd_hw_params._entry_ptr.6 = internal global ptr @msm_snd_hw_params._entry.4, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"msm_snd_apq8096_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 134, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 137, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"msm_snd_apq8096_dt_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 127, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"apq8096_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 63, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 43, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [28 x i8] c"../sound/soc/qcom/apq8096.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 56, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_msm_snd_apq8096_driver_exit, ptr @__initcall__kmod_snd_soc_apq8096__238_141_msm_snd_apq8096_driver_init6, ptr @msm_snd_apq8096_driver_exit, ptr @msm_snd_hw_params._entry, ptr @msm_snd_hw_params._entry.4, ptr @msm_snd_hw_params._entry_ptr, ptr @msm_snd_hw_params._entry_ptr.6, ptr @msm_snd_apq8096_driver, ptr @.str, ptr @msm_snd_apq8096_dt_match, ptr @apq8096_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_snd_apq8096_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_snd_apq8096_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8096_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_snd_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_snd_hw_params._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_snd_apq8096_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_snd_apq8096_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msm_snd_apq8096_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_snd_apq8096_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apq8096_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call3 = tail call i32 @qcom_snd_parse_of(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dai_link.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 24
  %num_links.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 25
  %3 = ptrtoint ptr %num_links.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.i = icmp sgt i32 %4, 0
  br i1 %cmp8.i, label %if.end6.land.rhs.i_crit_edge, label %if.end6.apq8096_add_be_ops.exit_crit_edge

if.end6.apq8096_add_be_ops.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %apq8096_add_be_ops.exit

if.end6.land.rhs.i_crit_edge:                     ; preds = %if.end6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end6.land.rhs.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %if.end6.land.rhs.i_crit_edge ]
  %5 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dai_link.i, align 4
  %arrayidx.i = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.09.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %land.rhs.i.apq8096_add_be_ops.exit_crit_edge, label %for.body.i

land.rhs.i.apq8096_add_be_ops.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apq8096_add_be_ops.exit

for.body.i:                                       ; preds = %land.rhs.i
  %no_pcm.i = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.09.i, i32 18
  %7 = ptrtoint ptr %no_pcm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i = load i32, ptr %no_pcm.i, align 4
  %8 = and i32 %bf.load.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not.i = icmp eq i32 %8, 0
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %be_hw_params_fixup.i = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.09.i, i32 15
  %9 = ptrtoint ptr %be_hw_params_fixup.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @apq8096_be_hw_params_fixup, ptr %be_hw_params_fixup.i, align 4
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.09.i, i32 13
  %10 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @apq8096_init, ptr %init.i, align 4
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.09.i, i32 16
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @apq8096_ops, ptr %ops.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %12 = ptrtoint ptr %num_links.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_links.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.apq8096_add_be_ops.exit_crit_edge

for.inc.i.apq8096_add_be_ops.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apq8096_add_be_ops.exit

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

apq8096_add_be_ops.exit:                          ; preds = %for.inc.i.apq8096_add_be_ops.exit_crit_edge, %land.rhs.i.apq8096_add_be_ops.exit_crit_edge, %if.end6.apq8096_add_be_ops.exit_crit_edge
  %call7 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %apq8096_add_be_ops.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %apq8096_add_be_ops.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_snd_parse_of(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @apq8096_be_hw_params_fixup(ptr nocapture noundef readnone %rtd, ptr nocapture noundef writeonly %params) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %arrayidx.i7 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %0 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 48000, ptr %max, align 4
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 48000, ptr %arrayidx.i, align 4
  %max2 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %max2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %max2, align 4
  %3 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %arrayidx.i7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apq8096_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  %rx_ch = alloca [16 x i32], align 4
  %tx_ch = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rx_ch) #6
  %6 = call ptr @memcpy(ptr %rx_ch, ptr @__const.apq8096_init.rx_ch, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tx_ch) #6
  %7 = call ptr @memcpy(ptr %tx_ch, ptr @__const.apq8096_init.tx_ch, i32 64)
  %call = call i32 @snd_soc_dai_set_channel_map(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %tx_ch, i32 noundef 16, ptr noundef nonnull %rx_ch) #6
  %call2 = call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 0, i32 noundef 9600000, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tx_ch) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rx_ch) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_channel_map(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_snd_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  %rx_ch = alloca [16 x i32], align 4
  %tx_ch = alloca [16 x i32], align 4
  %rx_ch_cnt = alloca i32, align 4
  %tx_ch_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rx_ch) #6
  %10 = call ptr @memset(ptr %rx_ch, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tx_ch) #6
  %11 = call ptr @memset(ptr %tx_ch, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_ch_cnt) #6
  %12 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_ch_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_ch_cnt) #6
  %13 = ptrtoint ptr %tx_ch_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_ch_cnt, align 4
  %call = call i32 @snd_soc_dai_get_channel_map(ptr noundef %7, ptr noundef nonnull %tx_ch_cnt, ptr noundef nonnull %tx_ch, ptr noundef nonnull %rx_ch_cnt, ptr noundef nonnull %rx_ch) #6
  %14 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 -524, label %entry.cleanup_crit_edge
    i32 0, label %if.end8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9 = icmp eq i32 %16, 0
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ch_cnt, align 4
  %call12 = call i32 @snd_soc_dai_set_channel_map(ptr noundef %9, i32 noundef 0, ptr noundef null, i32 noundef %18, ptr noundef nonnull %rx_ch) #6
  br label %if.end16

if.else13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %tx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_ch_cnt, align 4
  %call15 = call i32 @snd_soc_dai_set_channel_map(ptr noundef %9, i32 noundef %20, ptr noundef nonnull %tx_ch, i32 noundef 0, ptr noundef null) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then10
  %ret.0 = phi i32 [ %call12, %if.then10 ], [ %call15, %if.else13 ]
  %21 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %ret.0, label %do.end23 [
    i32 0, label %if.end16.if.else26_crit_edge
    i32 -524, label %if.end16.if.else26_crit_edge50
  ]

if.end16.if.else26_crit_edge50:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else26

if.end16.if.else26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %ret.0) #9
  br label %cleanup

if.else26:                                        ; preds = %if.end16.if.else26_crit_edge, %if.end16.if.else26_crit_edge50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %ret.0)
  %cmp27 = icmp eq i32 %ret.0, -524
  %spec.store.select = select i1 %cmp27, i32 0, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ %ret.0, %do.end23 ], [ %spec.store.select, %if.else26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_ch_cnt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_ch_cnt) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tx_ch) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rx_ch) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_get_channel_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_snd_soc_apq8096__238_141_msm_snd_apq8096_driver_init6, !1, !"__initcall__kmod_snd_soc_apq8096__238_141_msm_snd_apq8096_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/apq8096.c", i32 141, i32 1}
!2 = !{ptr @__exitcall_msm_snd_apq8096_driver_exit, !1, !"__exitcall_msm_snd_apq8096_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/apq8096.c", i32 142, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/apq8096.c", i32 143, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/qcom/apq8096.c", i32 144, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/apq8096.c", i32 137, i32 11}
!12 = !{ptr @msm_snd_apq8096_driver, !13, !"msm_snd_apq8096_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/apq8096.c", i32 134, i32 31}
!14 = !{ptr @apq8096_ops, !15, !"apq8096_ops", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/apq8096.c", i32 63, i32 33}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/apq8096.c", i32 43, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @msm_snd_hw_params._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @msm_snd_hw_params._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/apq8096.c", i32 56, i32 3}
!24 = !{ptr @msm_snd_hw_params._entry.4, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @msm_snd_hw_params._entry_ptr.6, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @msm_snd_apq8096_dt_match, !27, !"msm_snd_apq8096_dt_match", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/apq8096.c", i32 127, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
