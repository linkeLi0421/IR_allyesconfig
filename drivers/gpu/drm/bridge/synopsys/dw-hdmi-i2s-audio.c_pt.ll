; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
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
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.dw_hdmi_i2s_audio_data = type { ptr, ptr, ptr, ptr }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.of_endpoint = type { i32, i32, ptr }

@__initcall__kmod_dw_hdmi_i2s_audio__316_234_snd_dw_hdmi_driver_init6 = internal global ptr @snd_dw_hdmi_driver_init, section ".initcall6.init", align 4
@snd_dw_hdmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_dw_hdmi_probe, ptr @snd_dw_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_dw_hdmi_driver_exit = internal global ptr @snd_dw_hdmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author317 = internal constant [78 x i8] c"dw_hdmi_i2s_audio.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [78 x i8] c"dw_hdmi_i2s_audio.description=Synopsis Designware HDMI I2S ALSA SoC interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [73 x i8] c"dw_hdmi_i2s_audio.file=drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [33 x i8] c"dw_hdmi_i2s_audio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias321 = internal constant [51 x i8] c"dw_hdmi_i2s_audio.alias=platform:dw-hdmi-i2s-audio\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw-hdmi-i2s-audio\00", [46 x i8] zeroinitializer }, align 32
@dw_hdmi_i2s_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr @dw_hdmi_i2s_audio_startup, ptr @dw_hdmi_i2s_hw_params, ptr null, ptr @dw_hdmi_i2s_audio_shutdown, ptr null, ptr @dw_hdmi_i2s_get_eld, ptr @dw_hdmi_i2s_get_dai_id, ptr @dw_hdmi_i2s_hook_plugged_cb, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@dw_hdmi_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 49, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported clock settings\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_hdmi_i2s_hw_params\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_hdmi_i2s_hw_params._entry_ptr = internal global ptr @dw_hdmi_i2s_hw_params._entry, section ".printk_index", align 4
@dw_hdmi_i2s_hw_params._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unsupported format\0A\00", [44 x i8] zeroinitializer }, align 32
@dw_hdmi_i2s_hw_params._entry_ptr.9 = internal global ptr @dw_hdmi_i2s_hw_params._entry.7, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"snd_dw_hdmi_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 227, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 231, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"dw_hdmi_i2s_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 180, i32 36 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 204, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 49, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [55 x i8] c"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 100, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias321, ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_snd_dw_hdmi_driver_exit, ptr @__initcall__kmod_dw_hdmi_i2s_audio__316_234_snd_dw_hdmi_driver_init6, ptr @dw_hdmi_i2s_hw_params._entry, ptr @dw_hdmi_i2s_hw_params._entry.7, ptr @dw_hdmi_i2s_hw_params._entry_ptr, ptr @dw_hdmi_i2s_hw_params._entry_ptr.9, ptr @snd_dw_hdmi_driver_exit, ptr @snd_dw_hdmi_driver, ptr @.str, ptr @dw_hdmi_i2s_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dw_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_i2s_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_i2s_hw_params._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dw_hdmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_dw_hdmi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_dw_hdmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_dw_hdmi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dw_hdmi_probe(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  %pdevinfo = alloca %struct.platform_device_info, align 8
  %pdata = alloca %struct.hdmi_codec_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pdata) #6
  %2 = getelementptr inbounds i8, ptr %pdata, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dw_hdmi_i2s_ops, ptr %pdata, align 4
  %max_i2s_channels = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %pdata, i32 0, i32 2
  %5 = ptrtoint ptr %max_i2s_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %max_i2s_channels, align 4
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %pdata, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %data, align 4
  %7 = call ptr @memset(ptr %pdevinfo, i32 0, i32 56)
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %10 = ptrtoint ptr %pdevinfo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdevinfo, align 8
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2, ptr %id, align 8
  %name = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.1, ptr %name, align 4
  %data3 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 7
  %13 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdata, ptr %data3, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 8
  %14 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %size_data, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9
  %15 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 4294967295, ptr %dma_mask, align 8
  %call = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdata) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dw_hdmi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_i2s_audio_startup(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @dw_hdmi_audio_enable(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_i2s_hw_params(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %fmt, ptr noundef %hparms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %bit_clk_master = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %bit_clk_master to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %bit_clk_master, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.lshr3 = lshr i8 %bf.load, 4
  %bf.clear75 = or i8 %bf.lshr, %bf.lshr3
  %or74 = and i8 %bf.clear75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or74)
  %tobool.not = icmp eq i8 %or74, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %write.i = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  tail call void %4(ptr noundef %1, i8 noundef zeroext -128, i32 noundef 12544) #6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  tail call void %8(ptr noundef %6, i8 noundef zeroext -9, i32 noundef 16386) #6
  %channels = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 4
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.sw.epilog_crit_edge [
    i32 7, label %if.end.sw.bb_crit_edge
    i32 8, label %if.end.sw.bb_crit_edge80
    i32 5, label %if.end.sw.bb8_crit_edge
    i32 6, label %if.end.sw.bb8_crit_edge81
    i32 3, label %if.end.sw.bb12_crit_edge
    i32 4, label %if.end.sw.bb12_crit_edge82
  ]

if.end.sw.bb12_crit_edge82:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

if.end.sw.bb8_crit_edge81:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end.sw.bb_crit_edge80:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge80
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb, %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge81
  %conf0.0 = phi i8 [ 39, %if.end.sw.bb8_crit_edge ], [ 39, %if.end.sw.bb8_crit_edge81 ], [ 47, %sw.bb ]
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb8, %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge82
  %conf0.1 = phi i8 [ 35, %if.end.sw.bb12_crit_edge ], [ 35, %if.end.sw.bb12_crit_edge82 ], [ %conf0.0, %sw.bb8 ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %if.end.sw.epilog_crit_edge
  %conf0.2 = phi i8 [ 33, %if.end.sw.epilog_crit_edge ], [ %conf0.1, %sw.bb12 ]
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 3
  %12 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sample_width, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %13, label %sw.epilog.sw.epilog18_crit_edge [
    i32 16, label %sw.bb16
    i32 24, label %sw.epilog.sw.bb17_crit_edge
    i32 32, label %sw.epilog.sw.bb17_crit_edge83
  ]

sw.epilog.sw.bb17_crit_edge83:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

sw.epilog.sw.epilog18_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog18

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog18

sw.bb17:                                          ; preds = %sw.epilog.sw.bb17_crit_edge, %sw.epilog.sw.bb17_crit_edge83
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb17, %sw.bb16, %sw.epilog.sw.epilog18_crit_edge
  %conf1.0 = phi i8 [ 0, %sw.epilog.sw.epilog18_crit_edge ], [ 24, %sw.bb17 ], [ 16, %sw.bb16 ]
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %16, label %do.end42 [
    i32 0, label %sw.epilog18.sw.epilog43_crit_edge
    i32 1, label %sw.bb24
    i32 2, label %sw.bb28
    i32 3, label %sw.bb32
    i32 4, label %sw.bb36
  ]

sw.epilog18.sw.epilog43_crit_edge:                ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43

sw.bb24:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  %18 = or i8 %conf1.0, 32
  br label %sw.epilog43

sw.bb28:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  %19 = or i8 %conf1.0, 64
  br label %sw.epilog43

sw.bb32:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  %20 = or i8 %conf1.0, 96
  br label %sw.epilog43

sw.bb36:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  %21 = or i8 %conf1.0, -128
  br label %sw.epilog43

do.end42:                                         ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

sw.epilog43:                                      ; preds = %sw.bb36, %sw.bb32, %sw.bb28, %sw.bb24, %sw.epilog18.sw.epilog43_crit_edge
  %conf1.1 = phi i8 [ %21, %sw.bb36 ], [ %20, %sw.bb32 ], [ %19, %sw.bb28 ], [ %18, %sw.bb24 ], [ %conf1.0, %sw.epilog18.sw.epilog43_crit_edge ]
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 2
  %22 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sample_rate, align 4
  tail call void @dw_hdmi_set_sample_rate(ptr noundef %1, i32 noundef %23) #6
  %iec = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 1
  tail call void @dw_hdmi_set_channel_status(ptr noundef %1, ptr noundef %iec) #6
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels, align 4
  tail call void @dw_hdmi_set_channel_count(ptr noundef %1, i32 noundef %25) #6
  %channel_allocation = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %hparms, i32 0, i32 8
  %26 = ptrtoint ptr %channel_allocation to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %channel_allocation, align 4
  %conv45 = zext i8 %27 to i32
  tail call void @dw_hdmi_set_channel_allocation(ptr noundef %1, i32 noundef %conv45) #6
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i, align 4
  tail call void %31(ptr noundef %29, i8 noundef zeroext 4, i32 noundef 12806) #6
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i, align 4
  tail call void %35(ptr noundef %33, i8 noundef zeroext %conf0.2, i32 noundef 12544) #6
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i, align 4
  tail call void %39(ptr noundef %37, i8 noundef zeroext %conf1.1, i32 noundef 12545) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ 0, %sw.epilog43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_i2s_audio_shutdown(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @dw_hdmi_audio_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_i2s_get_eld(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %get_eld = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %get_eld to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_eld, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call ptr %1(ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %5 = call ptr @memcpy(ptr %buf, ptr %call, i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memset(ptr %buf, i32 0, i32 %len)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_i2s_get_dai_id(ptr nocapture noundef readnone %component, ptr noundef %endpoint) #2 align 64 {
entry:
  %of_ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep) #6
  %0 = ptrtoint ptr %of_ep to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %of_ep, align 4, !annotation !41
  %1 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !41
  %3 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !41
  %call = call i32 @of_graph_parse_endpoint(ptr noundef %endpoint, ptr noundef nonnull %of_ep) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %of_ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %of_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  %. = select i1 %cmp1, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_i2s_hook_plugged_cb(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %fn, ptr noundef %codec_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @dw_hdmi_set_plugged_cb(ptr noundef %1, ptr noundef %fn, ptr noundef %codec_dev) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_audio_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_sample_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_channel_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_channel_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_channel_allocation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_audio_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_hdmi_set_plugged_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_dw_hdmi_i2s_audio__316_234_snd_dw_hdmi_driver_init6, !1, !"__initcall__kmod_dw_hdmi_i2s_audio__316_234_snd_dw_hdmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 234, i32 1}
!2 = !{ptr @__exitcall_snd_dw_hdmi_driver_exit, !1, !"__exitcall_snd_dw_hdmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author317, !4, !"__UNIQUE_ID_author317", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 236, i32 1}
!5 = !{ptr @__UNIQUE_ID_description318, !6, !"__UNIQUE_ID_description318", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 237, i32 1}
!7 = !{ptr @__UNIQUE_ID_file319, !8, !"__UNIQUE_ID_file319", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 238, i32 1}
!9 = !{ptr @__UNIQUE_ID_license320, !8, !"__UNIQUE_ID_license320", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias321, !11, !"__UNIQUE_ID_alias321", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 239, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 231, i32 11}
!14 = !{ptr @snd_dw_hdmi_driver, !15, !"snd_dw_hdmi_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 227, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 204, i32 19}
!18 = !{ptr @dw_hdmi_i2s_ops, !19, !"dw_hdmi_i2s_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 180, i32 36}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 49, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dw_hdmi_i2s_hw_params._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @dw_hdmi_i2s_hw_params._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c", i32 100, i32 3}
!30 = !{ptr @dw_hdmi_i2s_hw_params._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dw_hdmi_i2s_hw_params._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
