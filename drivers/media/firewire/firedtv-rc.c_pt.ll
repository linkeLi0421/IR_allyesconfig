; ModuleID = '/llk/IR_all_yes/drivers/media/firewire/firedtv-rc.c_pt.bc'
source_filename = "../drivers/media/firewire/firedtv-rc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.firedtv = type { ptr, %struct.list_head, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dvb_net, %struct.dvb_frontend, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i8, %struct.work_struct, ptr, i32, i8, i8, ptr, i32, i32, %struct.mutex, i32, [16 x i16], i32, [512 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.131], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.131 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.132 }>
%union.anon.132 = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FireDTV remote control\00", [41 x i8] zeroinitializer }, align 32
@keytable = internal constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 116, i16 142, i16 128, i16 352, i16 106, i16 2, i16 3, i16 4, i16 105, i16 5, i16 6, i16 7, i16 103, i16 8, i16 9, i16 10, i16 108, i16 369, i16 11, i16 190, i16 375, i16 113, i16 370, i16 167, i16 388, i16 392, i16 398, i16 412, i16 168, i16 164, i16 407, i16 115, i16 402, i16 191, i16 377, i16 389, i16 379, i16 390, i16 399, i16 400, i16 401, i16 363, i16 360, i16 114, i16 403, i16 405, i16 358, i16 159, i16 395, i16 364, i16 139, i16 365, i16 174], [54 x i8] zeroinitializer }, align 32
@oldtable = internal constant { [34 x i16], [60 x i8] } { [34 x i16] [i16 1, i16 67, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 23, i16 11, i16 28, i16 398, i16 103, i16 399, i16 68, i16 57, i16 87, i16 400, i16 108, i16 401, i16 44, i16 25, i16 109, i16 105, i16 17, i16 106, i16 25, i16 50, i16 19, i16 47, i16 46], [60 x i8] zeroinitializer }, align 32
@fdtv_handle_rc.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"firedtv\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fdtv_handle_rc\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/firewire/firedtv-rc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid key code 0x%04x from remote control\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 135, i32 15 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"keytable\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 63, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"oldtable\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 19, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [39 x i8] c"../drivers/media/firewire/firedtv-rc.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 183, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @keytable, ptr @oldtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keytable to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldtable to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_register_rc(ptr nocapture noundef writeonly %fdtv, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote_ctrl_dev = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 15
  %0 = ptrtoint ptr %remote_ctrl_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %remote_ctrl_dev, align 8
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %call, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %evbit, align 8
  %call2 = tail call ptr @kmemdup(ptr noundef nonnull @keytable, i32 noundef 106, i32 noundef 3264) #2
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %keycode, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.fail_crit_edge, label %if.end6

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %fail

if.end6:                                          ; preds = %if.end
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 16
  %5 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 53, ptr %keycodemax, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6
  %i.030 = phi i32 [ 0, %if.end6 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx7 = getelementptr [53 x i16], ptr @keytable, i32 0, i32 %i.030
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx7, align 2
  %conv = zext i16 %8 to i32
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %keybit) #2
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  %call8 = tail call i32 @input_register_device(ptr noundef nonnull %call) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %fail_free_keymap

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

fail_free_keymap:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %keycode, align 4
  tail call void @kfree(ptr noundef %10) #2
  br label %fail

fail:                                             ; preds = %fail_free_keymap, %if.end.fail_crit_edge
  %err.0 = phi i32 [ %call8, %fail_free_keymap ], [ -12, %if.end.fail_crit_edge ]
  tail call void @input_free_device(ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fdtv_unregister_rc(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_ctrl_work = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %remote_ctrl_work) #2
  %remote_ctrl_dev = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 15
  %0 = ptrtoint ptr %remote_ctrl_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote_ctrl_dev, align 8
  %keycode = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keycode, align 4
  tail call void @kfree(ptr noundef %3) #2
  %4 = ptrtoint ptr %remote_ctrl_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote_ctrl_dev, align 8
  tail call void @input_unregister_device(ptr noundef %5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fdtv_handle_rc(ptr nocapture noundef readonly %fdtv, i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_ctrl_dev = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 15
  %0 = ptrtoint ptr %remote_ctrl_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote_ctrl_dev, align 8
  %keycode1 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %keycode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keycode1, align 4
  %4 = and i32 %code, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %4)
  %5 = icmp eq i32 %4, 768
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %sub = add nsw i32 %code, -768
  %arrayidx = getelementptr i16, ptr %3, i32 %sub
  br label %if.end39

if.else:                                          ; preds = %entry
  %6 = add i32 %code, -832
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %6)
  %7 = icmp ult i32 %6, 21
  br i1 %7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %sub9 = add nsw i32 %code, -800
  %arrayidx10 = getelementptr i16, ptr %3, i32 %sub9
  br label %if.end39

if.else12:                                        ; preds = %if.else
  %8 = add i32 %code, -17665
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %9 = icmp ult i32 %8, 31
  br i1 %9, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx20 = getelementptr [34 x i16], ptr @oldtable, i32 0, i32 %8
  br label %if.end39

if.else22:                                        ; preds = %if.else12
  %10 = add i32 %code, -17728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %if.then28, label %do.body

if.then28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #4
  %sub29 = add nsw i32 %code, -17697
  %arrayidx30 = getelementptr [34 x i16], ptr @oldtable, i32 0, i32 %sub29
  br label %if.end39

do.body:                                          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdtv_handle_rc.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdtv_handle_rc, %if.then35)) #2
          to label %cleanup [label %if.then35], !srcloc !21

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdtv_handle_rc.__UNIQUE_ID_ddebug381, ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef %code) #2
  br label %cleanup

if.end39:                                         ; preds = %if.then28, %if.then18, %if.then8, %if.then
  %code.addr.0.in.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx10, %if.then8 ], [ %arrayidx20, %if.then18 ], [ %arrayidx30, %if.then28 ]
  %14 = ptrtoint ptr %code.addr.0.in.in to i32
  call void @__asan_load2_noabort(i32 %14)
  %code.addr.0.in = load i16, ptr %code.addr.0.in.in, align 2
  %code.addr.0 = zext i16 %code.addr.0.in to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %code.addr.0, i32 noundef 1) #2
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %code.addr.0, i32 noundef 0) #2
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then35, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/firewire/firedtv-rc.c", i32 135, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/firewire/firedtv-rc.c", i32 183, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @fdtv_handle_rc.__UNIQUE_ID_ddebug381, !3, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!8 = !{ptr @keytable, !9, !"keytable", i1 false, i1 false}
!9 = !{!"../drivers/media/firewire/firedtv-rc.c", i32 63, i32 18}
!10 = !{ptr @oldtable, !11, !"oldtable", i1 false, i1 false}
!11 = !{!"../drivers/media/firewire/firedtv-rc.c", i32 19, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2149034903, i64 2149034908, i64 2149034921, i64 2149034965, i64 2149034999, i64 2149035020}
