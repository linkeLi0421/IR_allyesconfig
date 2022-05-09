; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msm_dp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, i32, ptr }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.dp_catalog = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.dp_audio_private = type { ptr, ptr, ptr, ptr, i8, i32, %struct.dp_audio }
%struct.dp_audio = type { i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.99 }
%union.anon.99 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@codec_data = internal global { %struct.hdmi_codec_pdata, [16 x i8] } { %struct.hdmi_codec_pdata { ptr @dp_audio_codec_ops, i8 -128, i32 8, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid dp_audio data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Header Byte 1: value = 0x%x, parity_byte = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Header Byte 2: value = 0x%x, parity_byte = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Header Byte 3: value = 0x%x, parity_byte = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown link rate\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"setting the default safe_to_exit_level = %u\0A\00", [51 x i8] zeroinitializer }, align 32
@dp_audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @dp_audio_hw_params, ptr null, ptr @dp_audio_shutdown, ptr null, ptr @dp_audio_get_eld, ptr null, ptr @dp_audio_hook_plugged_cb, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get audio data\0A\00", [38 x i8] zeroinitializer }, align 32
@dp_audio_hook_plugged_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013[drm-dp] %s: invalid input\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dp_audio_hook_plugged_cb\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/msm/dp/dp_audio.c\00", [62 x i8] zeroinitializer }, align 32
@dp_audio_hook_plugged_cb._entry_ptr = internal global ptr @dp_audio_hook_plugged_cb._entry, section ".printk_index", align 4
@dp_audio_hook_plugged_cb._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dp_audio_hook_plugged_cb._entry_ptr.13 = internal global ptr @dp_audio_hook_plugged_cb._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 10, i64 20, i64 30]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 589, i32 7 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"codec_data\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 574, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 605, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 437, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 139, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 151, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 165, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 373, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 398, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"dp_audio_codec_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 567, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 547, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 454, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private constant [37 x i8] c"../drivers/gpu/drm/msm/dp/dp_audio.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 460, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @dp_audio_hook_plugged_cb._entry, ptr @dp_audio_hook_plugged_cb._entry.12, ptr @dp_audio_hook_plugged_cb._entry_ptr, ptr @dp_audio_hook_plugged_cb._entry_ptr.13, ptr @.str, ptr @codec_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dp_audio_codec_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_audio_hook_plugged_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_audio_hook_plugged_cb._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_audio_hw_params(ptr noundef readonly %dev, ptr nocapture readnone %data, ptr nocapture readnone %daifmt, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power_on = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_on, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %tobool2.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond, label %if.end.if.then3.sink.split_crit_edge, label %if.end5.i

if.end.if.then3.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.sink.split

if.end5.i:                                        ; preds = %if.end
  %dp_audio6.i = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %dp_audio6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp_audio6.i, align 4
  %tobool7.not.i = icmp eq ptr %5, null
  br i1 %tobool7.not.i, label %if.end5.i.if.then3.sink.split_crit_edge, label %dp_audio_get_data.exit

if.end5.i.if.then3.sink.split_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.sink.split

dp_audio_get_data.exit:                           ; preds = %if.end5.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -24
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dp_audio_get_data.exit.if.then3_crit_edge, label %if.end5

dp_audio_get_data.exit.if.then3_crit_edge:        ; preds = %dp_audio_get_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3.sink.split:                              ; preds = %if.end5.i.if.then3.sink.split_crit_edge, %if.end.if.then3.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.end.if.then3.sink.split_crit_edge ], [ @.str.2, %if.end5.i.if.then3.sink.split_crit_edge ]
  %retval.0.i25.ph = phi ptr [ inttoptr (i32 -19 to ptr), %if.end.if.then3.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.if.then3.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink) #5
  br label %if.then3

if.then3:                                         ; preds = %if.then3.sink.split, %dp_audio_get_data.exit.if.then3_crit_edge
  %retval.0.i25 = phi ptr [ %add.ptr.i, %dp_audio_get_data.exit.if.then3_crit_edge ], [ %retval.0.i25.ph, %if.then3.sink.split ]
  %6 = ptrtoint ptr %retval.0.i25 to i32
  br label %end

if.end5:                                          ; preds = %dp_audio_get_data.exit
  %channels = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 4
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channels, align 4
  %channels6 = getelementptr i8, ptr %5, i32 -4
  %9 = ptrtoint ptr %channels6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %channels6, align 4
  %catalog.i = getelementptr i8, ptr %5, i32 -16
  %10 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %catalog.i, align 4
  tail call void @dp_catalog_audio_config_sdp(ptr noundef %11) #5
  %12 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %catalog.i, align 4
  %sdp_type.i.i.i = getelementptr inbounds %struct.dp_catalog, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %sdp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sdp_type.i.i.i, align 4
  %sdp_header.i.i.i = getelementptr inbounds %struct.dp_catalog, ptr %13, i32 0, i32 6
  %15 = ptrtoint ptr %sdp_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sdp_header.i.i.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %13) #5
  %audio_data.i.i.i = getelementptr inbounds %struct.dp_catalog, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %audio_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %audio_data.i.i.i, align 4
  %or4.i.i = or i32 %17, -838729728
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %or4.i.i, i32 noundef 206) #5
  %18 = ptrtoint ptr %sdp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sdp_type.i.i.i, align 4
  %19 = ptrtoint ptr %sdp_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sdp_header.i.i.i, align 4
  %20 = ptrtoint ptr %audio_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or4.i.i, ptr %audio_data.i.i.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %13) #5
  %21 = ptrtoint ptr %sdp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sdp_type.i.i.i, align 4
  %22 = ptrtoint ptr %sdp_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sdp_header.i.i.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %13) #5
  %23 = ptrtoint ptr %audio_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %audio_data.i.i.i, align 4
  %and.i.i.i = and i32 %24, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %conv2.i.i.i = select i1 %cmp.not.i.i.i, i32 2, i32 8
  br label %for.body.i82.i.i

for.body.i82.i.i:                                 ; preds = %for.body.i82.i.i.for.body.i82.i.i_crit_edge, %if.end5
  %indvars.iv.i53.i.i = phi i32 [ 0, %if.end5 ], [ %indvars.iv.next.i79.i.i, %for.body.i82.i.i.for.body.i82.i.i_crit_edge ]
  %x1.028.i54.i.i = phi i32 [ 0, %if.end5 ], [ %xor13.i75.i.i, %for.body.i82.i.i.for.body.i82.i.i_crit_edge ]
  %x0.027.i55.i.i = phi i32 [ 0, %if.end5 ], [ %phi.cast.i80.i.i, %for.body.i82.i.i.for.body.i82.i.i_crit_edge ]
  %mul.i56.i.i = shl nuw nsw i32 %indvars.iv.i53.i.i, 2
  %shr.i57.i.i = lshr i32 %24, %mul.i56.i.i
  %conv7.i58.i.i = and i32 %shr.i57.i.i, 15
  %xor.i59.i.i = xor i32 %conv7.i58.i.i, %x1.028.i54.i.i
  %conv10.i60.i.i = trunc i32 %xor.i59.i.i to i8
  %conv4.i.i61.i.i = and i8 %conv10.i60.i.i, 1
  %shr.1.i.i62.i.i = lshr i8 %conv10.i60.i.i, 1
  %conv4.1.i.i63.i.i = and i8 %shr.1.i.i62.i.i, 1
  %shr.2.i.i64.i.i = lshr i8 %conv10.i60.i.i, 2
  %conv4.2.i.i65.i.i = and i8 %shr.2.i.i64.i.i, 1
  %25 = lshr i8 %conv10.i60.i.i, 3
  %conv4.3.i.i66.i.i = and i8 %25, 1
  %xor58.i.i67.i.i = xor i8 %conv4.3.i.i66.i.i, %conv4.i.i61.i.i
  %xor1860.i.i68.i.i = xor i8 %xor58.i.i67.i.i, %conv4.1.i.i63.i.i
  %xor2561.i.i69.i.i = xor i8 %conv4.2.i.i65.i.i, %conv4.1.i.i63.i.i
  %xor3262.i.i70.i.i = xor i8 %conv4.2.i.i65.i.i, %conv4.3.i.i66.i.i
  %26 = shl nuw nsw i8 %xor1860.i.i68.i.i, 1
  %conv46.1.i.i71.i.i = or i8 %26, %xor58.i.i67.i.i
  %27 = shl nuw nsw i8 %xor2561.i.i69.i.i, 2
  %conv46.2.i.i72.i.i = or i8 %conv46.1.i.i71.i.i, %27
  %28 = shl nuw nsw i8 %xor3262.i.i70.i.i, 3
  %conv46.3.i.i73.i.i = or i8 %conv46.2.i.i72.i.i, %28
  %conv12.i74.i.i = zext i8 %conv46.3.i.i73.i.i to i32
  %xor13.i75.i.i = xor i32 %x0.027.i55.i.i, %conv12.i74.i.i
  %29 = shl nuw nsw i8 %xor58.i.i67.i.i, 1
  %conv28.1.i.i76.i.i = or i8 %29, %conv4.3.i.i66.i.i
  %30 = shl i8 %conv10.i60.i.i, 1
  %31 = and i8 %30, 4
  %conv28.2.i.i77.i.i = or i8 %conv28.1.i.i76.i.i, %31
  %32 = and i8 %30, 8
  %conv28.3.i.i78.i.i = or i8 %conv28.2.i.i77.i.i, %32
  %indvars.iv.next.i79.i.i = add nuw nsw i32 %indvars.iv.i53.i.i, 1
  %phi.cast.i80.i.i = zext i8 %conv28.3.i.i78.i.i to i32
  %exitcond.not.i81.i.i = icmp eq i32 %indvars.iv.next.i79.i.i, %conv2.i.i.i
  br i1 %exitcond.not.i81.i.i, label %dp_audio_calculate_parity.exit86.i.i, label %for.body.i82.i.i.for.body.i82.i.i_crit_edge

for.body.i82.i.i.for.body.i82.i.i_crit_edge:      ; preds = %for.body.i82.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i82.i.i

dp_audio_calculate_parity.exit86.i.i:             ; preds = %for.body.i82.i.i
  %shl.i83.i.i = shl nuw nsw i32 %phi.cast.i80.i.i, 4
  %shl.i83.masked.i.i = and i32 %shl.i83.i.i, 240
  %conv9.i.i = or i32 %xor13.i75.i.i, %shl.i83.masked.i.i
  %shl10.i.i = shl nuw nsw i32 %conv9.i.i, 8
  %or11.i.i = or i32 %shl10.i.i, %24
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %or11.i.i, i32 noundef %conv9.i.i) #5
  %33 = ptrtoint ptr %sdp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sdp_type.i.i.i, align 4
  %34 = ptrtoint ptr %sdp_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %sdp_header.i.i.i, align 4
  %35 = ptrtoint ptr %audio_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or11.i.i, ptr %audio_data.i.i.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %13) #5
  %36 = ptrtoint ptr %sdp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sdp_type.i.i.i, align 4
  %37 = ptrtoint ptr %sdp_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %sdp_header.i.i.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %13) #5
  %38 = ptrtoint ptr %audio_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %audio_data.i.i.i, align 4
  %40 = ptrtoint ptr %channels6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channels6, align 4
  %sub.i.i = add i32 %41, -1
  %and.i93.i.i = and i32 %sub.i.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.i.i)
  %cmp.not.i94.i.i = icmp eq i32 %and.i93.i.i, 0
  %conv2.i95.i.i = select i1 %cmp.not.i94.i.i, i32 2, i32 8
  br label %for.body.i125.i.i

for.body.i125.i.i:                                ; preds = %for.body.i125.i.i.for.body.i125.i.i_crit_edge, %dp_audio_calculate_parity.exit86.i.i
  %indvars.iv.i96.i.i = phi i32 [ 0, %dp_audio_calculate_parity.exit86.i.i ], [ %indvars.iv.next.i122.i.i, %for.body.i125.i.i.for.body.i125.i.i_crit_edge ]
  %x1.028.i97.i.i = phi i32 [ 0, %dp_audio_calculate_parity.exit86.i.i ], [ %xor13.i118.i.i, %for.body.i125.i.i.for.body.i125.i.i_crit_edge ]
  %x0.027.i98.i.i = phi i32 [ 0, %dp_audio_calculate_parity.exit86.i.i ], [ %phi.cast.i123.i.i, %for.body.i125.i.i.for.body.i125.i.i_crit_edge ]
  %mul.i99.i.i = shl nuw nsw i32 %indvars.iv.i96.i.i, 2
  %shr.i100.i.i = lshr i32 %sub.i.i, %mul.i99.i.i
  %conv7.i101.i.i = and i32 %shr.i100.i.i, 15
  %xor.i102.i.i = xor i32 %conv7.i101.i.i, %x1.028.i97.i.i
  %conv10.i103.i.i = trunc i32 %xor.i102.i.i to i8
  %conv4.i.i104.i.i = and i8 %conv10.i103.i.i, 1
  %shr.1.i.i105.i.i = lshr i8 %conv10.i103.i.i, 1
  %conv4.1.i.i106.i.i = and i8 %shr.1.i.i105.i.i, 1
  %shr.2.i.i107.i.i = lshr i8 %conv10.i103.i.i, 2
  %conv4.2.i.i108.i.i = and i8 %shr.2.i.i107.i.i, 1
  %42 = lshr i8 %conv10.i103.i.i, 3
  %conv4.3.i.i109.i.i = and i8 %42, 1
  %xor58.i.i110.i.i = xor i8 %conv4.3.i.i109.i.i, %conv4.i.i104.i.i
  %xor1860.i.i111.i.i = xor i8 %xor58.i.i110.i.i, %conv4.1.i.i106.i.i
  %xor2561.i.i112.i.i = xor i8 %conv4.2.i.i108.i.i, %conv4.1.i.i106.i.i
  %xor3262.i.i113.i.i = xor i8 %conv4.2.i.i108.i.i, %conv4.3.i.i109.i.i
  %43 = shl nuw nsw i8 %xor1860.i.i111.i.i, 1
  %conv46.1.i.i114.i.i = or i8 %43, %xor58.i.i110.i.i
  %44 = shl nuw nsw i8 %xor2561.i.i112.i.i, 2
  %conv46.2.i.i115.i.i = or i8 %conv46.1.i.i114.i.i, %44
  %45 = shl nuw nsw i8 %xor3262.i.i113.i.i, 3
  %conv46.3.i.i116.i.i = or i8 %conv46.2.i.i115.i.i, %45
  %conv12.i117.i.i = zext i8 %conv46.3.i.i116.i.i to i32
  %xor13.i118.i.i = xor i32 %x0.027.i98.i.i, %conv12.i117.i.i
  %46 = shl nuw nsw i8 %xor58.i.i110.i.i, 1
  %conv28.1.i.i119.i.i = or i8 %46, %conv4.3.i.i109.i.i
  %47 = shl i8 %conv10.i103.i.i, 1
  %48 = and i8 %47, 4
  %conv28.2.i.i120.i.i = or i8 %conv28.1.i.i119.i.i, %48
  %49 = and i8 %47, 8
  %conv28.3.i.i121.i.i = or i8 %conv28.2.i.i120.i.i, %49
  %indvars.iv.next.i122.i.i = add nuw nsw i32 %indvars.iv.i96.i.i, 1
  %phi.cast.i123.i.i = zext i8 %conv28.3.i.i121.i.i to i32
  %exitcond.not.i124.i.i = icmp eq i32 %indvars.iv.next.i122.i.i, %conv2.i95.i.i
  br i1 %exitcond.not.i124.i.i, label %dp_audio_setup_sdp.exit, label %for.body.i125.i.i.for.body.i125.i.i_crit_edge

for.body.i125.i.i.for.body.i125.i.i_crit_edge:    ; preds = %for.body.i125.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i125.i.i

dp_audio_setup_sdp.exit:                          ; preds = %for.body.i125.i.i
  %shl.i126.i.i = shl nuw nsw i32 %phi.cast.i123.i.i, 4
  %shl16.i.i = shl i32 %sub.i.i, 16
  %shl.i126.masked.i.i = and i32 %shl.i126.i.i, 240
  %conv17.i.i = or i32 %xor13.i118.i.i, %shl.i126.masked.i.i
  %shl18.i.i = shl nuw i32 %conv17.i.i, 24
  %or19.i.i = or i32 %shl16.i.i, %39
  %or20.i.i = or i32 %or19.i.i, %shl18.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %or20.i.i, i32 noundef %conv17.i.i) #5
  %50 = ptrtoint ptr %sdp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %sdp_type.i.i.i, align 4
  %51 = ptrtoint ptr %sdp_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %sdp_header.i.i.i, align 4
  %52 = ptrtoint ptr %audio_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or20.i.i, ptr %audio_data.i.i.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %13) #5
  %53 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %catalog.i, align 4
  %sdp_type.i.i7.i = getelementptr inbounds %struct.dp_catalog, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %sdp_type.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %sdp_type.i.i7.i, align 4
  %sdp_header.i.i8.i = getelementptr inbounds %struct.dp_catalog, ptr %54, i32 0, i32 6
  %56 = ptrtoint ptr %sdp_header.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %sdp_header.i.i8.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %54) #5
  %audio_data.i.i9.i = getelementptr inbounds %struct.dp_catalog, ptr %54, i32 0, i32 7
  %57 = ptrtoint ptr %audio_data.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %audio_data.i.i9.i, align 4
  %or4.i10.i = or i32 %58, 1728118784
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %or4.i10.i, i32 noundef 103) #5
  %59 = ptrtoint ptr %sdp_type.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %sdp_type.i.i7.i, align 4
  %60 = ptrtoint ptr %sdp_header.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %sdp_header.i.i8.i, align 4
  %61 = ptrtoint ptr %audio_data.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or4.i10.i, ptr %audio_data.i.i9.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %54) #5
  %62 = ptrtoint ptr %sdp_type.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %sdp_type.i.i7.i, align 4
  %63 = ptrtoint ptr %sdp_header.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %sdp_header.i.i8.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %54) #5
  %64 = ptrtoint ptr %audio_data.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %audio_data.i.i9.i, align 4
  %or12.i.i = or i32 %65, 13591
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %or12.i.i, i32 noundef 53) #5
  %66 = ptrtoint ptr %sdp_type.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %sdp_type.i.i7.i, align 4
  %67 = ptrtoint ptr %sdp_header.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %sdp_header.i.i8.i, align 4
  %68 = ptrtoint ptr %audio_data.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or12.i.i, ptr %audio_data.i.i9.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %54) #5
  %69 = ptrtoint ptr %sdp_type.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %sdp_type.i.i7.i, align 4
  %70 = ptrtoint ptr %sdp_header.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %sdp_header.i.i8.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %54) #5
  %71 = ptrtoint ptr %audio_data.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %audio_data.i.i9.i, align 4
  %or20.i11.i = or i32 %72, 860094464
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %or20.i11.i, i32 noundef 51) #5
  %73 = ptrtoint ptr %sdp_type.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %sdp_type.i.i7.i, align 4
  %74 = ptrtoint ptr %sdp_header.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %sdp_header.i.i8.i, align 4
  %75 = ptrtoint ptr %audio_data.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or20.i11.i, ptr %audio_data.i.i9.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %54) #5
  %76 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %catalog.i, align 4
  %sdp_type.i.i13.i = getelementptr inbounds %struct.dp_catalog, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %sdp_type.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %sdp_type.i.i13.i, align 4
  %sdp_header.i.i14.i = getelementptr inbounds %struct.dp_catalog, ptr %77, i32 0, i32 6
  %79 = ptrtoint ptr %sdp_header.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %sdp_header.i.i14.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %77) #5
  %audio_data.i.i15.i = getelementptr inbounds %struct.dp_catalog, ptr %77, i32 0, i32 7
  %80 = ptrtoint ptr %audio_data.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %audio_data.i.i15.i, align 4
  %or4.i16.i = or i32 %81, -2071724032
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %or4.i16.i, i32 noundef 132) #5
  %82 = ptrtoint ptr %sdp_type.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %sdp_type.i.i13.i, align 4
  %83 = ptrtoint ptr %sdp_header.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %sdp_header.i.i14.i, align 4
  %84 = ptrtoint ptr %audio_data.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or4.i16.i, ptr %audio_data.i.i15.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %77) #5
  %85 = ptrtoint ptr %sdp_type.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %sdp_type.i.i13.i, align 4
  %86 = ptrtoint ptr %sdp_header.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %sdp_header.i.i14.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %77) #5
  %87 = ptrtoint ptr %audio_data.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %audio_data.i.i15.i, align 4
  %or12.i17.i = or i32 %88, 55067
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %or12.i17.i, i32 noundef 215) #5
  %89 = ptrtoint ptr %sdp_type.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %sdp_type.i.i13.i, align 4
  %90 = ptrtoint ptr %sdp_header.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %sdp_header.i.i14.i, align 4
  %91 = ptrtoint ptr %audio_data.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or12.i17.i, ptr %audio_data.i.i15.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %77) #5
  %92 = ptrtoint ptr %sdp_type.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %sdp_type.i.i13.i, align 4
  %93 = ptrtoint ptr %sdp_header.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %sdp_header.i.i14.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %77) #5
  %94 = ptrtoint ptr %audio_data.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %audio_data.i.i15.i, align 4
  %or20.i18.i = or i32 %95, 860094464
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef 68, i32 noundef 51) #5
  %96 = ptrtoint ptr %sdp_type.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2, ptr %sdp_type.i.i13.i, align 4
  %97 = ptrtoint ptr %sdp_header.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %sdp_header.i.i14.i, align 4
  %98 = ptrtoint ptr %audio_data.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or20.i18.i, ptr %audio_data.i.i15.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %77) #5
  %99 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %catalog.i, align 4
  %sdp_type.i.i20.i = getelementptr inbounds %struct.dp_catalog, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %sdp_type.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %sdp_type.i.i20.i, align 4
  %sdp_header.i.i21.i = getelementptr inbounds %struct.dp_catalog, ptr %100, i32 0, i32 6
  %102 = ptrtoint ptr %sdp_header.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %sdp_header.i.i21.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %100) #5
  %audio_data.i.i22.i = getelementptr inbounds %struct.dp_catalog, ptr %100, i32 0, i32 7
  %103 = ptrtoint ptr %audio_data.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %audio_data.i.i22.i, align 4
  %or4.i23.i = or i32 %104, -670760960
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %or4.i23.i, i32 noundef 216) #5
  %105 = ptrtoint ptr %sdp_type.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %sdp_type.i.i20.i, align 4
  %106 = ptrtoint ptr %sdp_header.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %sdp_header.i.i21.i, align 4
  %107 = ptrtoint ptr %audio_data.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or4.i23.i, ptr %audio_data.i.i22.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %100) #5
  %108 = ptrtoint ptr %sdp_type.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %sdp_type.i.i20.i, align 4
  %109 = ptrtoint ptr %sdp_header.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %sdp_header.i.i21.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %100) #5
  %110 = ptrtoint ptr %audio_data.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %audio_data.i.i22.i, align 4
  %or12.i24.i = or i32 %111, 19215
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %or12.i24.i, i32 noundef 75) #5
  %112 = ptrtoint ptr %sdp_type.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 3, ptr %sdp_type.i.i20.i, align 4
  %113 = ptrtoint ptr %sdp_header.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %sdp_header.i.i21.i, align 4
  %114 = ptrtoint ptr %audio_data.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or12.i24.i, ptr %audio_data.i.i22.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %100) #5
  %115 = ptrtoint ptr %sdp_type.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 3, ptr %sdp_type.i.i20.i, align 4
  %116 = ptrtoint ptr %sdp_header.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 2, ptr %sdp_header.i.i21.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %100) #5
  %117 = ptrtoint ptr %audio_data.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %audio_data.i.i22.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %118, i32 noundef 0) #5
  %119 = ptrtoint ptr %sdp_type.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 3, ptr %sdp_type.i.i20.i, align 4
  %120 = ptrtoint ptr %sdp_header.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %sdp_header.i.i21.i, align 4
  %121 = ptrtoint ptr %audio_data.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %118, ptr %audio_data.i.i22.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %100) #5
  %122 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %catalog.i, align 4
  %sdp_type.i.i26.i = getelementptr inbounds %struct.dp_catalog, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %sdp_type.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 4, ptr %sdp_type.i.i26.i, align 4
  %sdp_header.i.i27.i = getelementptr inbounds %struct.dp_catalog, ptr %123, i32 0, i32 6
  %125 = ptrtoint ptr %sdp_header.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %sdp_header.i.i27.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %123) #5
  %audio_data.i.i28.i = getelementptr inbounds %struct.dp_catalog, ptr %123, i32 0, i32 7
  %126 = ptrtoint ptr %audio_data.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %audio_data.i.i28.i, align 4
  %or4.i29.i = or i32 %127, 1896218624
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %or4.i29.i, i32 noundef 113) #5
  %128 = ptrtoint ptr %sdp_type.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4, ptr %sdp_type.i.i26.i, align 4
  %129 = ptrtoint ptr %sdp_header.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %sdp_header.i.i27.i, align 4
  %130 = ptrtoint ptr %audio_data.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or4.i29.i, ptr %audio_data.i.i28.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %123) #5
  %131 = ptrtoint ptr %sdp_type.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 4, ptr %sdp_type.i.i26.i, align 4
  %132 = ptrtoint ptr %sdp_header.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %sdp_header.i.i27.i, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %123) #5
  %133 = ptrtoint ptr %audio_data.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %audio_data.i.i28.i, align 4
  %or12.i30.i = or i32 %134, 19215
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %or12.i30.i, i32 noundef 75) #5
  %135 = ptrtoint ptr %sdp_type.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 4, ptr %sdp_type.i.i26.i, align 4
  %136 = ptrtoint ptr %sdp_header.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %sdp_header.i.i27.i, align 4
  %137 = ptrtoint ptr %audio_data.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or12.i30.i, ptr %audio_data.i.i28.i, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %123) #5
  %138 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %catalog.i, align 4
  %bw_code.i = getelementptr i8, ptr %5, i32 4
  %140 = ptrtoint ptr %bw_code.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bw_code.i, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values)
  switch i32 %141, label %sw.default.i [
    i32 6, label %dp_audio_setup_sdp.exit.dp_audio_setup_acr.exit_crit_edge
    i32 10, label %sw.bb2.i
    i32 20, label %sw.bb3.i
    i32 30, label %sw.bb4.i
  ]

dp_audio_setup_sdp.exit.dp_audio_setup_acr.exit_crit_edge: ; preds = %dp_audio_setup_sdp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp_audio_setup_acr.exit

sw.bb2.i:                                         ; preds = %dp_audio_setup_sdp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp_audio_setup_acr.exit

sw.bb3.i:                                         ; preds = %dp_audio_setup_sdp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp_audio_setup_acr.exit

sw.bb4.i:                                         ; preds = %dp_audio_setup_sdp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp_audio_setup_acr.exit

sw.default.i:                                     ; preds = %dp_audio_setup_sdp.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6) #5
  br label %dp_audio_setup_acr.exit

dp_audio_setup_acr.exit:                          ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %dp_audio_setup_sdp.exit.dp_audio_setup_acr.exit_crit_edge
  %select.0.i = phi i32 [ 0, %sw.default.i ], [ 3, %sw.bb4.i ], [ 2, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 0, %dp_audio_setup_sdp.exit.dp_audio_setup_acr.exit_crit_edge ]
  %audio_data.i = getelementptr inbounds %struct.dp_catalog, ptr %139, i32 0, i32 7
  %143 = ptrtoint ptr %audio_data.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %select.0.i, ptr %audio_data.i, align 4
  tail call void @dp_catalog_audio_config_acr(ptr noundef %139) #5
  %144 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %catalog.i, align 4
  %146 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %5, align 4
  %148 = zext i32 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %147, label %sw.default.i19 [
    i32 1, label %dp_audio_setup_acr.exit.dp_audio_safe_to_exit_level.exit_crit_edge
    i32 2, label %sw.bb2.i17
    i32 4, label %sw.bb3.i18
  ]

dp_audio_setup_acr.exit.dp_audio_safe_to_exit_level.exit_crit_edge: ; preds = %dp_audio_setup_acr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp_audio_safe_to_exit_level.exit

sw.bb2.i17:                                       ; preds = %dp_audio_setup_acr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp_audio_safe_to_exit_level.exit

sw.bb3.i18:                                       ; preds = %dp_audio_setup_acr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp_audio_safe_to_exit_level.exit

sw.default.i19:                                   ; preds = %dp_audio_setup_acr.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  br label %dp_audio_safe_to_exit_level.exit

dp_audio_safe_to_exit_level.exit:                 ; preds = %sw.default.i19, %sw.bb3.i18, %sw.bb2.i17, %dp_audio_setup_acr.exit.dp_audio_safe_to_exit_level.exit_crit_edge
  %safe_to_exit_level.0.i = phi i32 [ 14, %sw.default.i19 ], [ 5, %sw.bb3.i18 ], [ 8, %sw.bb2.i17 ], [ 14, %dp_audio_setup_acr.exit.dp_audio_safe_to_exit_level.exit_crit_edge ]
  %audio_data.i20 = getelementptr inbounds %struct.dp_catalog, ptr %145, i32 0, i32 7
  %149 = ptrtoint ptr %audio_data.i20 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %safe_to_exit_level.0.i, ptr %audio_data.i20, align 4
  tail call void @dp_catalog_audio_sfe_level(ptr noundef %145) #5
  %150 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %catalog.i, align 4
  %audio_data.i22 = getelementptr inbounds %struct.dp_catalog, ptr %151, i32 0, i32 7
  %152 = ptrtoint ptr %audio_data.i22 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %audio_data.i22, align 4
  tail call void @dp_catalog_audio_enable(ptr noundef %151) #5
  %engine_on.i = getelementptr i8, ptr %5, i32 -8
  %153 = ptrtoint ptr %engine_on.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %engine_on.i, align 4
  tail call void @dp_display_signal_audio_start(ptr noundef nonnull %1) #5
  %audio_enabled = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 7
  %154 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %audio_enabled, align 1
  br label %end

end:                                              ; preds = %dp_audio_safe_to_exit_level.exit, %if.then3, %entry.end_crit_edge
  %rc.0 = phi i32 [ %6, %if.then3 ], [ 0, %dp_audio_safe_to_exit_level.exit ], [ -22, %entry.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_display_signal_audio_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_register_audio_driver(ptr noundef %dev, ptr nocapture noundef writeonly %dp_audio) local_unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dp_audio, i32 -24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
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
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %add.ptr, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call.i.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %14, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_audio_get(ptr noundef %pdev, ptr noundef %panel, ptr noundef %catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdev, null
  %tobool1.not = icmp eq ptr %panel, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %catalog, null
  %or.cond23 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond23, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev7 = getelementptr inbounds %struct.dp_audio_private, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev7, align 4
  %panel8 = getelementptr inbounds %struct.dp_audio_private, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %panel8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %panel, ptr %panel8, align 4
  %catalog9 = getelementptr inbounds %struct.dp_audio_private, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %catalog9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %catalog, ptr %catalog9, align 4
  %dp_audio10 = getelementptr inbounds %struct.dp_audio_private, ptr %call.i, i32 0, i32 6
  tail call void @dp_catalog_audio_init(ptr noundef nonnull %catalog) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dp_audio10, %if.end6 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_audio_put(ptr noundef %dp_audio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_audio, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %dp_audio, i32 -24
  %pdev = getelementptr i8, ptr %dp_audio, i32 -20
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_config_sdp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_get_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_set_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_config_acr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_sfe_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_audio_shutdown(ptr noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %tobool2.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond, label %entry.if.then.sink.split_crit_edge, label %if.end5.i

entry.if.then.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.sink.split

if.end5.i:                                        ; preds = %entry
  %dp_audio6.i = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dp_audio6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp_audio6.i, align 4
  %tobool7.not.i = icmp eq ptr %3, null
  br i1 %tobool7.not.i, label %if.end5.i.if.then.sink.split_crit_edge, label %dp_audio_get_data.exit

if.end5.i.if.then.sink.split_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.sink.split

dp_audio_get_data.exit:                           ; preds = %if.end5.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -24
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dp_audio_get_data.exit.if.then_crit_edge, label %if.end

dp_audio_get_data.exit.if.then_crit_edge:         ; preds = %dp_audio_get_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.sink.split:                               ; preds = %if.end5.i.if.then.sink.split_crit_edge, %entry.if.then.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %entry.if.then.sink.split_crit_edge ], [ @.str.2, %if.end5.i.if.then.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink) #5
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %dp_audio_get_data.exit.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end:                                           ; preds = %dp_audio_get_data.exit
  %audio_enabled = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %audio_enabled, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %catalog1.i = getelementptr i8, ptr %3, i32 -16
  %6 = ptrtoint ptr %catalog1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %catalog1.i, align 4
  %audio_data.i = getelementptr inbounds %struct.dp_catalog, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %audio_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %audio_data.i, align 4
  tail call void @dp_catalog_audio_enable(ptr noundef %7) #5
  %engine_on.i = getelementptr i8, ptr %3, i32 -8
  %9 = ptrtoint ptr %engine_on.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %engine_on.i, align 4
  tail call void @dp_display_signal_audio_complete(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_audio_get_eld(ptr noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %connector = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 4
  %eld = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 42
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %5 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -19, %if.then2 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_audio_hook_plugged_cb(ptr noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %fn, ptr noundef %codec_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @dp_display_set_plugged_cb(ptr noundef nonnull %1, ptr noundef %fn, ptr noundef %codec_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -19, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_display_signal_audio_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_display_set_plugged_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 589, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 605, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 437, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 139, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 151, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 165, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 373, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 398, i32 3}
!16 = !{ptr @codec_data, !17, !"codec_data", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 574, i32 32}
!18 = !{ptr @dp_audio_codec_ops, !19, !"dp_audio_codec_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 567, i32 36}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 547, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 454, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dp_audio_hook_plugged_cb._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @dp_audio_hook_plugged_cb._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @dp_audio_hook_plugged_cb._entry.12, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dp/dp_audio.c", i32 460, i32 3}
!30 = !{ptr @dp_audio_hook_plugged_cb._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i8 0, i8 2}
