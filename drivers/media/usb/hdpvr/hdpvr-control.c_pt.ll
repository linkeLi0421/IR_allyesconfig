; ModuleID = '/llk/IR_all_yes/drivers/media/usb/hdpvr/hdpvr-control.c_pt.bc'
source_filename = "../drivers/media/usb/hdpvr/hdpvr-control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdpvr_device = type { %struct.video_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_device, %struct.anon.92, i32, i32, i32, i8, i8, %struct.hdpvr_options, i64, %struct.v4l2_dv_timings, i32, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.i2c_adapter, %struct.mutex, [128 x i8], %struct.IR_i2c_init_data, %struct.mutex, ptr, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.anon.92 = type { ptr, ptr, ptr }
%struct.hdpvr_options = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8 }
%struct.v4l2_dv_timings = type { i32, %union.anon.87 }
%union.anon.87 = type { [32 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hdpvr_video_info = type { i16, i16, i8, i8 }

@hdpvr_debug = external dso_local local_unnamed_addr global i32, align 4
@hdpvr_config_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: config call request for value 0x%x returned %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdpvr_config_call\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/hdpvr/hdpvr-control.c\00", [56 x i8] zeroinitializer }, align 32
@hdpvr_config_call._entry_ptr = internal global ptr @hdpvr_config_call._entry, section ".printk_index", align 4
@hdpvr_set_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: invalid audio codec %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdpvr_set_audio\00", [16 x i8] zeroinitializer }, align 32
@hdpvr_set_audio._entry_ptr = internal global ptr @hdpvr_set_audio._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 37, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [43 x i8] c"../drivers/media/usb/hdpvr/hdpvr-control.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 135, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @hdpvr_config_call._entry, ptr @hdpvr_config_call._entry_ptr, ptr @hdpvr_set_audio._entry, ptr @hdpvr_set_audio._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_config_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_set_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_config_call(ptr noundef %dev, i32 noundef %value, i8 noundef zeroext %valbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usbc_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex, i32 noundef 0) #4
  %usbc_buf = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbc_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %valbuf, ptr %1, align 1
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %conv4 = trunc i32 %value to i16
  %7 = load ptr, ptr %usbc_buf, align 4
  %call6 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext %conv4, i16 noundef zeroext 3, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %8 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %value, i32 noundef %call6) #7
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %9 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_video_info(ptr noundef %dev, ptr nocapture noundef %vidinf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.hdpvr_video_info, ptr %vidinf, i32 0, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %valid, align 1
  %usbc_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex, i32 noundef 0) #4
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or2 = or i32 %shl.i, -2147483520
  %usbc_buf = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 26
  %5 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usbc_buf, align 4
  %call3 = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or2, i8 noundef zeroext -127, i8 noundef zeroext -72, i16 noundef zeroext 5120, i16 noundef zeroext 3, ptr noundef %6, i16 noundef zeroext 5, i32 noundef 1000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usbc_buf, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i16
  %shl = shl nuw i16 %conv, 8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 1
  %conv8 = zext i8 %12 to i16
  %or9 = or i16 %shl, %conv8
  %13 = ptrtoint ptr %vidinf to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or9, ptr %vidinf, align 2
  %14 = load ptr, ptr %usbc_buf, align 4
  %arrayidx12 = getelementptr i8, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i16
  %shl14 = shl nuw i16 %conv13, 8
  %arrayidx16 = getelementptr i8, ptr %14, i32 2
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %18 to i16
  %or18 = or i16 %shl14, %conv17
  %height = getelementptr inbounds %struct.hdpvr_video_info, ptr %vidinf, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %or18, ptr %height, align 2
  %20 = load ptr, ptr %usbc_buf, align 4
  %arrayidx21 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21, align 1
  %fps = getelementptr inbounds %struct.hdpvr_video_info, ptr %vidinf, i32 0, i32 2
  %23 = ptrtoint ptr %fps to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %fps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or9)
  %tobool.not = icmp eq i16 %or9, 0
  br i1 %tobool.not, label %if.end.land.end_crit_edge, label %land.lhs.true

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or18)
  %tobool26.not = icmp ne i16 %or18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29 = icmp ne i8 %22, 0
  %spec.select = select i1 %tobool26.not, i1 %tobool29, i1 false
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %if.end.land.end_crit_edge
  %24 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %frombool = zext i1 %24 to i8
  %25 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %valid, align 1
  br label %cleanup

cleanup:                                          ; preds = %land.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_input_lines_info(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usbc_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex, i32 noundef 0) #4
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or2 = or i32 %shl.i, -2147483520
  %usbc_buf = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 26
  %4 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbc_buf, align 4
  %call3 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2, i8 noundef zeroext -127, i8 noundef zeroext -72, i16 noundef zeroext 6144, i16 noundef zeroext 3, ptr noundef %5, i16 noundef zeroext 3, i32 noundef 1000) #4
  %6 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbc_buf, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 1
  %conv7 = zext i8 %11 to i32
  %or8 = or i32 %shl, %conv7
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #4
  ret i32 %or8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_set_bitrate(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usbc_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex, i32 noundef 0) #4
  %usbc_buf = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbc_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %bitrate = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 3
  %3 = ptrtoint ptr %bitrate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bitrate, align 1
  %5 = load ptr, ptr %usbc_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %5, align 1
  %peak_bitrate = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 4
  %7 = ptrtoint ptr %peak_bitrate to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %peak_bitrate, align 4
  %9 = load ptr, ptr %usbc_buf, align 4
  %arrayidx4 = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %arrayidx4, align 1
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or = or i32 %shl.i, -2147483648
  %15 = load ptr, ptr %usbc_buf, align 4
  %call7 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 4096, i16 noundef zeroext 3, ptr noundef %15, i16 noundef zeroext 4, i32 noundef 1000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #4
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_set_audio(ptr noundef %dev, i8 noundef zeroext %input, i32 noundef %codec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %usbc_mutex.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %usbc_buf.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 26
  %2 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbc_buf.i, align 4
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %3, align 1
  %5 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usbc_buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %input, ptr %6, align 1
  %8 = zext i32 %codec to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %codec, label %if.else9 [
    i32 3, label %if.then.if.end11_crit_edge
    i32 4, label %if.then6
  ]

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.else9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %codec) #7
  br label %error

if.end11:                                         ; preds = %if.then6, %if.then.if.end11_crit_edge
  %.sink = phi i8 [ 1, %if.then6 ], [ 0, %if.then.if.end11_crit_edge ]
  %9 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usbc_buf.i, align 4
  %arrayidx8 = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %arrayidx8, align 1
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or = or i32 %shl.i, -2147483648
  %16 = load ptr, ptr %usbc_buf.i, align 4
  %call15 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 9472, i16 noundef zeroext 3, ptr noundef %16, i16 noundef zeroext 2, i32 noundef 1000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp17 = icmp eq i32 %call15, 2
  %spec.store.select = select i1 %cmp17, i32 0, i32 %call15
  br label %error

if.else20:                                        ; preds = %entry
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %input, ptr %3, align 1
  %udev.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %22 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 9472, i16 noundef zeroext 3, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %24 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp sgt i32 %24, 0
  br i1 %cmp.i, label %do.end.i, label %if.else20.hdpvr_config_call.exit_crit_edge

if.else20.hdpvr_config_call.exit_crit_edge:       ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit

do.end.i:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef 9472, i32 noundef %call6.i) #7
  br label %hdpvr_config_call.exit

hdpvr_config_call.exit:                           ; preds = %do.end.i, %if.else20.hdpvr_config_call.exit_crit_edge
  %25 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0) #4
  br label %error

error:                                            ; preds = %hdpvr_config_call.exit, %if.end11, %if.else9
  %ret.0 = phi i32 [ %spec.store.select, %if.end11 ], [ -22, %if.else9 ], [ %25, %hdpvr_config_call.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_set_options(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 8
  %usbc_mutex.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %usbc_buf.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 26
  %2 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbc_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %3, align 1
  %udev.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 5888, i16 noundef zeroext 3, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %10 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp sgt i32 %10, 0
  br i1 %cmp.i, label %do.end.i, label %entry.hdpvr_config_call.exit_crit_edge

entry.hdpvr_config_call.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef 5888, i32 noundef %call6.i) #7
  br label %hdpvr_config_call.exit

hdpvr_config_call.exit:                           ; preds = %do.end.i, %entry.hdpvr_config_call.exit_crit_edge
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %video_input, align 1
  %add = add i8 %12, 1
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %13 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usbc_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add, ptr %14, align 1
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i49 = shl i32 %19, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %20 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i51 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i50, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 5376, i16 noundef zeroext 3, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %21 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i52 = icmp sgt i32 %21, 0
  br i1 %cmp.i52, label %do.end.i55, label %hdpvr_config_call.exit.hdpvr_config_call.exit56_crit_edge

hdpvr_config_call.exit.hdpvr_config_call.exit56_crit_edge: ; preds = %hdpvr_config_call.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit56

do.end.i55:                                       ; preds = %hdpvr_config_call.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name.i53 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i53, i32 noundef 5376, i32 noundef %call6.i51) #7
  br label %hdpvr_config_call.exit56

hdpvr_config_call.exit56:                         ; preds = %do.end.i55, %hdpvr_config_call.exit.hdpvr_config_call.exit56_crit_edge
  %audio_input = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %audio_input to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %audio_input, align 2
  %add6 = add i8 %23, 1
  %audio_codec = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 7
  %24 = ptrtoint ptr %audio_codec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %audio_codec, align 8
  %call9 = tail call i32 @hdpvr_set_audio(ptr noundef %dev, i8 noundef zeroext %add6, i32 noundef %25)
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %26 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usbc_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %27, align 1
  %bitrate.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 3
  %29 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bitrate.i, align 1
  %31 = load ptr, ptr %usbc_buf.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %31, align 1
  %peak_bitrate.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 4
  %33 = ptrtoint ptr %peak_bitrate.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %peak_bitrate.i, align 4
  %35 = load ptr, ptr %usbc_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %34, ptr %arrayidx4.i, align 1
  %37 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i60 = shl i32 %40, 8
  %or.i61 = or i32 %shl.i.i60, -2147483648
  %41 = load ptr, ptr %usbc_buf.i, align 4
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i61, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 4096, i16 noundef zeroext 3, ptr noundef %41, i16 noundef zeroext 4, i32 noundef 1000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  %bitrate_mode = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 5
  %42 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bitrate_mode, align 1
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %44 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usbc_buf.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %43, ptr %45, align 1
  %47 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udev.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shl.i.i65 = shl i32 %50, 8
  %or.i66 = or i32 %shl.i.i65, -2147483648
  %51 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i67 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or.i66, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 4608, i16 noundef zeroext 3, ptr noundef %51, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %52 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i68 = icmp sgt i32 %52, 0
  br i1 %cmp.i68, label %do.end.i71, label %hdpvr_config_call.exit56.hdpvr_config_call.exit72_crit_edge

hdpvr_config_call.exit56.hdpvr_config_call.exit72_crit_edge: ; preds = %hdpvr_config_call.exit56
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit72

do.end.i71:                                       ; preds = %hdpvr_config_call.exit56
  call void @__sanitizer_cov_trace_pc() #6
  %name.i69 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i69, i32 noundef 4608, i32 noundef %call6.i67) #7
  br label %hdpvr_config_call.exit72

hdpvr_config_call.exit72:                         ; preds = %do.end.i71, %hdpvr_config_call.exit56.hdpvr_config_call.exit72_crit_edge
  %gop_mode = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 6
  %53 = ptrtoint ptr %gop_mode to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %gop_mode, align 2
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %55 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usbc_buf.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %54, ptr %56, align 1
  %58 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udev.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i76 = shl i32 %61, 8
  %or.i77 = or i32 %shl.i.i76, -2147483648
  %62 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i78 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i77, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 4864, i16 noundef zeroext 3, ptr noundef %62, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %63 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i79 = icmp sgt i32 %63, 0
  br i1 %cmp.i79, label %do.end.i82, label %hdpvr_config_call.exit72.hdpvr_config_call.exit83_crit_edge

hdpvr_config_call.exit72.hdpvr_config_call.exit83_crit_edge: ; preds = %hdpvr_config_call.exit72
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit83

do.end.i82:                                       ; preds = %hdpvr_config_call.exit72
  call void @__sanitizer_cov_trace_pc() #6
  %name.i80 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i80, i32 noundef 4864, i32 noundef %call6.i78) #7
  br label %hdpvr_config_call.exit83

hdpvr_config_call.exit83:                         ; preds = %do.end.i82, %hdpvr_config_call.exit72.hdpvr_config_call.exit83_crit_edge
  %brightness = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 8
  %64 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %brightness, align 4
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %66 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usbc_buf.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %65, ptr %67, align 1
  %69 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %udev.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 8
  %shl.i.i87 = shl i32 %72, 8
  %or.i88 = or i32 %shl.i.i87, -2147483648
  %73 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i89 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or.i88, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 10496, i16 noundef zeroext 3, ptr noundef %73, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %74 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i90 = icmp sgt i32 %74, 0
  br i1 %cmp.i90, label %do.end.i93, label %hdpvr_config_call.exit83.hdpvr_config_call.exit94_crit_edge

hdpvr_config_call.exit83.hdpvr_config_call.exit94_crit_edge: ; preds = %hdpvr_config_call.exit83
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit94

do.end.i93:                                       ; preds = %hdpvr_config_call.exit83
  call void @__sanitizer_cov_trace_pc() #6
  %name.i91 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i91, i32 noundef 10496, i32 noundef %call6.i89) #7
  br label %hdpvr_config_call.exit94

hdpvr_config_call.exit94:                         ; preds = %do.end.i93, %hdpvr_config_call.exit83.hdpvr_config_call.exit94_crit_edge
  %contrast = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 9
  %75 = ptrtoint ptr %contrast to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %contrast, align 1
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %77 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usbc_buf.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %78, align 1
  %80 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %udev.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i.i98 = shl i32 %83, 8
  %or.i99 = or i32 %shl.i.i98, -2147483648
  %84 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i100 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or.i99, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 10752, i16 noundef zeroext 3, ptr noundef %84, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %85 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i101 = icmp sgt i32 %85, 0
  br i1 %cmp.i101, label %do.end.i104, label %hdpvr_config_call.exit94.hdpvr_config_call.exit105_crit_edge

hdpvr_config_call.exit94.hdpvr_config_call.exit105_crit_edge: ; preds = %hdpvr_config_call.exit94
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit105

do.end.i104:                                      ; preds = %hdpvr_config_call.exit94
  call void @__sanitizer_cov_trace_pc() #6
  %name.i102 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i102, i32 noundef 10752, i32 noundef %call6.i100) #7
  br label %hdpvr_config_call.exit105

hdpvr_config_call.exit105:                        ; preds = %do.end.i104, %hdpvr_config_call.exit94.hdpvr_config_call.exit105_crit_edge
  %hue = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 10
  %86 = ptrtoint ptr %hue to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %hue, align 2
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %88 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usbc_buf.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %87, ptr %89, align 1
  %91 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %udev.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  %shl.i.i109 = shl i32 %94, 8
  %or.i110 = or i32 %shl.i.i109, -2147483648
  %95 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i111 = tail call i32 @usb_control_msg(ptr noundef %92, i32 noundef %or.i110, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 11008, i16 noundef zeroext 3, ptr noundef %95, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %96 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i112 = icmp sgt i32 %96, 0
  br i1 %cmp.i112, label %do.end.i115, label %hdpvr_config_call.exit105.hdpvr_config_call.exit116_crit_edge

hdpvr_config_call.exit105.hdpvr_config_call.exit116_crit_edge: ; preds = %hdpvr_config_call.exit105
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit116

do.end.i115:                                      ; preds = %hdpvr_config_call.exit105
  call void @__sanitizer_cov_trace_pc() #6
  %name.i113 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i113, i32 noundef 11008, i32 noundef %call6.i111) #7
  br label %hdpvr_config_call.exit116

hdpvr_config_call.exit116:                        ; preds = %do.end.i115, %hdpvr_config_call.exit105.hdpvr_config_call.exit116_crit_edge
  %saturation = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 11
  %97 = ptrtoint ptr %saturation to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %saturation, align 1
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %99 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %usbc_buf.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %98, ptr %100, align 1
  %102 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %udev.i, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  %shl.i.i120 = shl i32 %105, 8
  %or.i121 = or i32 %shl.i.i120, -2147483648
  %106 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i122 = tail call i32 @usb_control_msg(ptr noundef %103, i32 noundef %or.i121, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 11264, i16 noundef zeroext 3, ptr noundef %106, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %107 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i123 = icmp sgt i32 %107, 0
  br i1 %cmp.i123, label %do.end.i126, label %hdpvr_config_call.exit116.hdpvr_config_call.exit127_crit_edge

hdpvr_config_call.exit116.hdpvr_config_call.exit127_crit_edge: ; preds = %hdpvr_config_call.exit116
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit127

do.end.i126:                                      ; preds = %hdpvr_config_call.exit116
  call void @__sanitizer_cov_trace_pc() #6
  %name.i124 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i124, i32 noundef 11264, i32 noundef %call6.i122) #7
  br label %hdpvr_config_call.exit127

hdpvr_config_call.exit127:                        ; preds = %do.end.i126, %hdpvr_config_call.exit116.hdpvr_config_call.exit127_crit_edge
  %sharpness = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 12
  %108 = ptrtoint ptr %sharpness to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sharpness, align 8
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex.i, i32 noundef 0) #4
  %110 = ptrtoint ptr %usbc_buf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usbc_buf.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %109, ptr %111, align 1
  %113 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %udev.i, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 8
  %shl.i.i131 = shl i32 %116, 8
  %or.i132 = or i32 %shl.i.i131, -2147483648
  %117 = load ptr, ptr %usbc_buf.i, align 4
  %call6.i133 = tail call i32 @usb_control_msg(ptr noundef %114, i32 noundef %or.i132, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 11520, i16 noundef zeroext 3, ptr noundef %117, i16 noundef zeroext 1, i32 noundef 10000) #4
  tail call void @mutex_unlock(ptr noundef %usbc_mutex.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %118 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i134 = icmp sgt i32 %118, 0
  br i1 %cmp.i134, label %do.end.i137, label %hdpvr_config_call.exit127.hdpvr_config_call.exit138_crit_edge

hdpvr_config_call.exit127.hdpvr_config_call.exit138_crit_edge: ; preds = %hdpvr_config_call.exit127
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdpvr_config_call.exit138

do.end.i137:                                      ; preds = %hdpvr_config_call.exit127
  call void @__sanitizer_cov_trace_pc() #6
  %name.i135 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call10.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i135, i32 noundef 11520, i32 noundef %call6.i133) #7
  br label %hdpvr_config_call.exit138

hdpvr_config_call.exit138:                        ; preds = %do.end.i137, %hdpvr_config_call.exit127.hdpvr_config_call.exit138_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/hdpvr/hdpvr-control.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hdpvr_config_call._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hdpvr_config_call._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/hdpvr/hdpvr-control.c", i32 135, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hdpvr_set_audio._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @hdpvr_set_audio._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
