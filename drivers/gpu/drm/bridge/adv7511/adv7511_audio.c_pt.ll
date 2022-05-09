; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/adv7511/adv7511_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7511_audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.of_endpoint = type { i32, i32, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@codec_data = internal constant { %struct.hdmi_codec_pdata, [16 x i8] } { %struct.hdmi_codec_pdata { ptr @adv7511_codec_ops, i8 -64, i32 2, ptr null }, [16 x i8] zeroinitializer }, align 32
@adv7511_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr @audio_startup, ptr @adv7511_hdmi_hw_params, ptr null, ptr @audio_shutdown, ptr null, ptr null, ptr @adv7511_hdmi_i2s_get_dai_id, ptr null, i8 0 }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.3 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 243, i32 6 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"codec_data\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 233, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"adv7511_codec_ops\00", align 1
@___asan_gen_.11 = private constant [50 x i8] c"../drivers/gpu/drm/bridge/adv7511/adv7511_audio.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 226, i32 36 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @codec_data, ptr @adv7511_codec_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv7511_audio_init(ptr noundef %dev, ptr nocapture noundef writeonly %adv7511) local_unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #4
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %pdevinfo.i.i, align 8
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
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @codec_data, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #4
  %audio_pdev = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 31
  %13 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %audio_pdev, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call.i.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %14, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv7511_audio_exit(ptr nocapture noundef %adv7511) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_pdev = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 31
  %0 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_pdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %audio_pdev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_startup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 11, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 74, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 68, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 68, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 18, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 68, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 75, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 76, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %audio_source = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %audio_source to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audio_source, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 8
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 11, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_hdmi_hw_params(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %fmt, ptr nocapture noundef readonly %hparms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 2
  %2 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample_rate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 32000, label %entry.sw.epilog_crit_edge
    i32 44100, label %sw.bb1
    i32 48000, label %sw.bb2
    i32 88200, label %sw.bb3
    i32 96000, label %sw.bb4
    i32 176400, label %sw.bb5
    i32 192000, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %rate.0 = phi i32 [ 224, %sw.bb6 ], [ 192, %sw.bb5 ], [ 160, %sw.bb4 ], [ 128, %sw.bb3 ], [ 32, %sw.bb2 ], [ 0, %sw.bb1 ], [ 48, %entry.sw.epilog_crit_edge ]
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 3
  %5 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sample_width, align 4
  %7 = add i32 %6, -16
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 31)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %8, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog13_crit_edge
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 8, label %sw.bb10
    i32 4, label %sw.epilog.sw.bb11_crit_edge
  ]

sw.epilog.sw.bb11_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

sw.epilog.sw.epilog13_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog13

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog13

sw.bb10:                                          ; preds = %sw.epilog
  %bit_fmt = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %fmt, i32 0, i32 2
  %10 = ptrtoint ptr %bit_fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %11)
  %cmp.not = icmp eq i32 %11, 18
  br i1 %cmp.not, label %sw.bb10.sw.bb11_crit_edge, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb10.sw.bb11_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb10.sw.bb11_crit_edge, %sw.epilog.sw.bb11_crit_edge
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %sw.bb11, %sw.bb9, %sw.bb8, %sw.epilog.sw.epilog13_crit_edge
  %len.0 = phi i32 [ 11, %sw.bb11 ], [ 3, %sw.bb9 ], [ 4, %sw.bb8 ], [ 2, %sw.epilog.sw.epilog13_crit_edge ]
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %13, label %sw.epilog13.cleanup_crit_edge [
    i32 0, label %sw.bb15
    i32 1, label %sw.epilog13.sw.epilog24_crit_edge
    i32 2, label %sw.bb21
    i32 6, label %sw.bb22
  ]

sw.epilog13.sw.epilog24_crit_edge:                ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog24

sw.epilog13.cleanup_crit_edge:                    ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb15:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #6
  %bit_fmt16 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %fmt, i32 0, i32 2
  %15 = ptrtoint ptr %bit_fmt16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bit_fmt16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %16)
  %cmp17 = icmp eq i32 %16, 18
  %spec.store.select = select i1 %cmp17, i32 3, i32 0
  br label %sw.epilog24

sw.bb21:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog24

sw.bb22:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb22, %sw.bb21, %sw.bb15, %sw.epilog13.sw.epilog24_crit_edge
  %audio_source.0 = phi i32 [ 1, %sw.bb22 ], [ 0, %sw.bb21 ], [ 0, %sw.bb15 ], [ 0, %sw.epilog13.sw.epilog24_crit_edge ]
  %i2s_format.0 = phi i32 [ 0, %sw.bb22 ], [ 2, %sw.bb21 ], [ %spec.store.select, %sw.bb15 ], [ %13, %sw.epilog13.sw.epilog24_crit_edge ]
  %bit_clk_inv = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %fmt, i32 0, i32 1
  %17 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %bit_clk_inv, align 4
  %regmap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 8
  %shl = shl nuw nsw i32 %audio_source.0, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 10, i32 noundef 112, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 8
  %22 = lshr i8 %bf.load, 1
  %23 = and i8 %22, 64
  %shl27 = zext i8 %23 to i32
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 11, i32 noundef 64, i32 noundef %shl27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 8
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 12, i32 noundef 3, i32 noundef %i2s_format.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %audio_source31 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %audio_source31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %audio_source.0, ptr %audio_source31, align 8
  %27 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sample_rate, align 4
  %f_audio = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %f_audio to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %f_audio, align 4
  %f_tmds.i = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %f_tmds.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_tmds.i, align 8
  %32 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %28, label %entry.sw.epilog_crit_edge.i.i [
    i32 32000, label %sw.epilog24.sw.bb.i.i_crit_edge
    i32 48000, label %sw.epilog24.sw.bb.i.i_crit_edge65
    i32 96000, label %sw.epilog24.sw.bb.i.i_crit_edge66
    i32 192000, label %sw.epilog24.sw.bb.i.i_crit_edge67
    i32 44100, label %sw.epilog24.sw.bb1.i.i_crit_edge
    i32 88200, label %sw.epilog24.sw.bb1.i.i_crit_edge68
    i32 176400, label %sw.epilog24.sw.bb1.i.i_crit_edge69
  ]

sw.epilog24.sw.bb1.i.i_crit_edge69:               ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i.i

sw.epilog24.sw.bb1.i.i_crit_edge68:               ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i.i

sw.epilog24.sw.bb1.i.i_crit_edge:                 ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i.i

sw.epilog24.sw.bb.i.i_crit_edge67:                ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

sw.epilog24.sw.bb.i.i_crit_edge66:                ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

sw.epilog24.sw.bb.i.i_crit_edge65:                ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

sw.epilog24.sw.bb.i.i_crit_edge:                  ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

entry.sw.epilog_crit_edge.i.i:                    ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i.i = shl i32 %28, 7
  br label %adv7511_update_cts_n.exit

sw.bb.i.i:                                        ; preds = %sw.epilog24.sw.bb.i.i_crit_edge, %sw.epilog24.sw.bb.i.i_crit_edge65, %sw.epilog24.sw.bb.i.i_crit_edge66, %sw.epilog24.sw.bb.i.i_crit_edge67
  %mul.i.i = shl nuw nsw i32 %28, 7
  %div.i.i = udiv i32 %mul.i.i, 1000
  br label %adv7511_update_cts_n.exit

sw.bb1.i.i:                                       ; preds = %sw.epilog24.sw.bb1.i.i_crit_edge, %sw.epilog24.sw.bb1.i.i_crit_edge68, %sw.epilog24.sw.bb1.i.i_crit_edge69
  %mul2.i.i = shl nuw nsw i32 %28, 7
  %div3.i.i = udiv i32 %mul2.i.i, 900
  br label %adv7511_update_cts_n.exit

adv7511_update_cts_n.exit:                        ; preds = %sw.bb1.i.i, %sw.bb.i.i, %entry.sw.epilog_crit_edge.i.i
  %n.0.i = phi i32 [ 0, %entry.sw.epilog_crit_edge.i.i ], [ %div3.i.i, %sw.bb1.i.i ], [ %div.i.i, %sw.bb.i.i ]
  %mul5.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.sw.epilog_crit_edge.i.i ], [ %mul2.i.i, %sw.bb1.i.i ], [ %mul.i.i, %sw.bb.i.i ]
  %mul4.i.i = mul i32 %n.0.i, %31
  %div6.i.i = udiv i32 %mul4.i.i, %mul5.pre-phi.i.i
  %mul7.i.i = mul i32 %div6.i.i, 1000
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 8
  %shr.i = lshr i32 %n.0.i, 16
  %call.i62 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 1, i32 noundef %shr.i) #4
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 8
  %shr2.i = lshr i32 %n.0.i, 8
  %call4.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 2, i32 noundef %shr2.i) #4
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 8
  %and6.i = and i32 %n.0.i, 255
  %call7.i = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 3, i32 noundef %and6.i) #4
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 8
  %shr9.i = lshr i32 %mul7.i.i, 16
  %and10.i = and i32 %shr9.i, 15
  %call11.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 7, i32 noundef %and10.i) #4
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 8
  %shr13.i = lshr i32 %mul7.i.i, 8
  %and14.i = and i32 %shr13.i, 255
  %call15.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 8, i32 noundef %and14.i) #4
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 8
  %and17.i = and i32 %mul7.i.i, 248
  %call18.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 9, i32 noundef %and17.i) #4
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 8
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 20, i32 noundef 15, i32 noundef %len.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 8
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 21, i32 noundef 240, i32 noundef %rate.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 8
  %call40 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 115, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %adv7511_update_cts_n.exit, %sw.epilog13.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %adv7511_update_cts_n.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %audio_source = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %audio_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_source, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regmap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 11, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_hdmi_i2s_get_dai_id(ptr nocapture noundef readnone %component, ptr noundef %endpoint) #0 align 64 {
entry:
  %of_ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep) #4
  %0 = ptrtoint ptr %of_ep to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %of_ep, align 4, !annotation !15
  %1 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !15
  %3 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !15
  %call = call i32 @of_graph_parse_endpoint(ptr noundef %endpoint, ptr noundef nonnull %of_ep) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %of_ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %of_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  %. = select i1 %cmp1, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_audio.c", i32 243, i32 6}
!2 = !{ptr @codec_data, !3, !"codec_data", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_audio.c", i32 233, i32 38}
!4 = !{ptr @adv7511_codec_ops, !5, !"adv7511_codec_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_audio.c", i32 226, i32 36}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
