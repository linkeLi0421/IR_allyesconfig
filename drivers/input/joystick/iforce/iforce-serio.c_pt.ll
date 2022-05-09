; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/iforce/iforce-serio.c_pt.bc'
source_filename = "../drivers/input/joystick/iforce/iforce-serio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iforce_xport_ops = type { ptr, ptr, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.iforce_serio = type { %struct.iforce, ptr, i32, i32, i32, i32, i8, i8, [16 x i8], i8, [16 x i8] }
%struct.iforce = type { ptr, ptr, ptr, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i32], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RS232 I-Force joysticks and wheels driver\00", [54 x i8] zeroinitializer }, align 32
@iforce_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 29 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iforce\00", [25 x i8] zeroinitializer }, align 32
@iforce_serio_drv = dso_local global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str, ptr @iforce_serio_ids, i8 0, ptr @iforce_serio_write_wakeup, ptr @iforce_serio_irq, ptr @iforce_serio_connect, ptr null, ptr null, ptr @iforce_serio_disconnect, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_iforce_serio__227_253_iforce_serio_drv_init6 = internal global ptr @iforce_serio_drv_init, section ".initcall6.init", align 4
@__exitcall_iforce_serio_drv_exit = internal global ptr @iforce_serio_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [93 x i8] c"iforce_serio.author=Vojtech Pavlik <vojtech@ucw.cz>, Johann Deneux <johann.deneux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [67 x i8] c"iforce_serio.description=RS232 I-Force joysticks and wheels driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [61 x i8] c"iforce_serio.file=drivers/input/joystick/iforce/iforce-serio\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [25 x i8] c"iforce_serio.license=GPL\00", section ".modinfo", align 1
@iforce_serio_xport_ops = internal constant { %struct.iforce_xport_ops, [16 x i8] } { %struct.iforce_xport_ops { ptr @iforce_serio_xmit, ptr @iforce_serio_get_id, ptr @iforce_serio_start_io, ptr @iforce_serio_stop_io }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/input/joystick/iforce/iforce-serio.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iforce_serio\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 255]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 245, i32 17 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"iforce_serio_ids\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 229, i32 37 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 243, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"iforce_serio_drv\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 241, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"iforce_serio_xport_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 113, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 84, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [48 x i8] c"../drivers/input/joystick/iforce/iforce-serio.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 253, i32 1 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_iforce_serio_drv_exit, ptr @__initcall__kmod_iforce_serio__227_253_iforce_serio_drv_init6, ptr @iforce_serio_drv_exit, ptr @.str, ptr @iforce_serio_ids, ptr @.str.1, ptr @iforce_serio_drv, ptr @iforce_serio_xport_ops, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_serio_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_serio_xport_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_serio_write_wakeup(ptr nocapture noundef readonly %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iforce_serio_xmit(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_serio_irq(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pkt = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pkt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %data)
  %cmp = icmp eq i8 %data, 43
  br i1 %cmp, label %if.then3, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %pkt, align 4
  br label %out

if.end5:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.end5
  %7 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %data, label %if.then14 [
    i8 -1, label %if.then7.if.else_crit_edge
    i8 3, label %if.then7.if.else_crit_edge117
    i8 2, label %if.then7.if.else_crit_edge118
    i8 1, label %if.then7.if.else_crit_edge119
    i8 0, label %if.then7.if.else_crit_edge120
  ]

if.then7.if.else_crit_edge120:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then7.if.else_crit_edge119:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then7.if.else_crit_edge118:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then7.if.else_crit_edge117:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then7.if.else_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pkt, align 4
  br label %out

if.else:                                          ; preds = %if.then7.if.else_crit_edge, %if.then7.if.else_crit_edge117, %if.then7.if.else_crit_edge118, %if.then7.if.else_crit_edge119, %if.then7.if.else_crit_edge120
  %conv8 = zext i8 %data to i32
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv8, ptr %id, align 4
  br label %out

if.end19:                                         ; preds = %if.end5
  %len = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %if.then21, label %if.end32

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %data)
  %cmp23 = icmp ugt i8 %data, 16
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pkt, align 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %id, align 4
  br label %out

if.else28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = zext i8 %data to i32
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv22, ptr %len, align 4
  br label %out

if.end32:                                         ; preds = %if.end19
  %idx = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp34 = icmp slt i32 %16, %11
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i32 %16, 1
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc, ptr %idx, align 4
  %arrayidx = getelementptr %struct.iforce_serio, ptr %1, i32 0, i32 10, i32 %16
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %data, ptr %arrayidx, align 1
  %csum = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %csum to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %csum, align 4
  %add = add i8 %20, %data
  store i8 %add, ptr %csum, align 4
  br label %out

if.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp44 = icmp eq i32 %16, %11
  br i1 %cmp44, label %if.then46, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then46:                                        ; preds = %if.end41
  %expect_packet = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %expect_packet to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %expect_packet, align 1
  %conv47 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv47)
  %cmp49 = icmp eq i32 %6, %conv47
  br i1 %cmp49, label %if.then51, label %if.else57

if.then51:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %expect_packet to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %expect_packet, align 1
  %cmd_response = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 8
  %data_in53 = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 10
  %24 = call ptr @memcpy(ptr %cmd_response, ptr %data_in53, i32 16)
  %conv56 = trunc i32 %11 to i8
  %cmd_response_len = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %cmd_response_len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv56, ptr %cmd_response_len, align 2
  %wait = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end68

if.else57:                                        ; preds = %if.then46
  %type = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %tobool58.not = icmp eq ptr %27, null
  br i1 %tobool58.not, label %if.else57.if.end68_crit_edge, label %if.then61, !prof !32

if.else57.if.end68_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then61:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  %conv63 = trunc i32 %6 to i8
  %data_in64 = getelementptr inbounds %struct.iforce_serio, ptr %1, i32 0, i32 10
  tail call void @iforce_process_packet(ptr noundef %1, i8 noundef zeroext %conv63, ptr noundef %data_in64, i32 noundef %11) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %if.else57.if.end68_crit_edge, %if.then51
  %28 = call ptr @memset(ptr %idx, i32 0, i32 17)
  br label %out

out:                                              ; preds = %if.end68, %if.end41.out_crit_edge, %if.then36, %if.else28, %if.then25, %if.else, %if.then14, %if.then3, %if.then.out_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_serio_connect(ptr noundef %serio, ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2736) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %xport_ops = getelementptr inbounds %struct.iforce, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %xport_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @iforce_serio_xport_ops, ptr %xport_ops, align 8
  %serio1 = getelementptr inbounds %struct.iforce_serio, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %serio1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serio, ptr %serio1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %call7 = tail call i32 @iforce_init_device(ptr noundef %dev, i16 noundef zeroext 19, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %fail2

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail2:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_close(ptr noundef %serio) #6
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.fail1_crit_edge ], [ %call7, %fail2 ]
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_serio_disconnect(ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %3) #6
  tail call void @serio_close(ptr noundef %serio) #6
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_serio_drv_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @iforce_serio_drv, ptr noundef null, ptr noundef nonnull @.str.3) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iforce_serio_drv_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_unregister_driver(ptr noundef nonnull @iforce_serio_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_serio_xmit(ptr noundef %iforce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xmit_flags = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %xmit_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %xmit_flags) #6
  br label %cleanup

do.body3:                                         ; preds = %entry
  %xmit_lock = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xmit_lock) #6
  %xmit = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4
  %head = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4, i32 1
  %tail = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4, i32 2
  %serio = getelementptr inbounds %struct.iforce_serio, ptr %iforce, i32 0, i32 1
  br label %again

again:                                            ; preds = %serio_write.exit125.again_crit_edge, %do.body3
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp10 = icmp eq i32 %1, %3
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %xmit_flags) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmit_lock, i32 noundef %call6) #6
  br label %cleanup

if.end16:                                         ; preds = %again
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end16.serio_write.exit_crit_edge, label %if.then.i

if.end16.serio_write.exit_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %serio_write.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %7(ptr noundef %5, i8 noundef zeroext 43) #6
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %if.end16.serio_write.exit_crit_edge
  %8 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serio, align 4
  %write.i111 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write.i111 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i111, align 8
  %tobool.not.i112 = icmp eq ptr %11, null
  br i1 %tobool.not.i112, label %serio_write.exit.serio_write.exit115_crit_edge, label %if.then.i114

serio_write.exit.serio_write.exit115_crit_edge:   ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %serio_write.exit115

if.then.i114:                                     ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xmit, align 4
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %call.i113 = tail call i32 %11(ptr noundef %9, i8 noundef zeroext %17) #6
  br label %serio_write.exit115

serio_write.exit115:                              ; preds = %if.then.i114, %serio_write.exit.serio_write.exit115_crit_edge
  %18 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xmit, align 4
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail, align 4
  %arrayidx27 = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx27, align 1
  %24 = xor i8 %23, 43
  %add = add i32 %21, 1
  %and = and i32 %add, 255
  store i32 %and, ptr %tail, align 4
  %arrayidx39 = getelementptr i8, ptr %19, i32 %and
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %26 to i32
  br label %for.body

for.body:                                         ; preds = %serio_write.exit120.for.body_crit_edge, %serio_write.exit115
  %i.0127 = phi i32 [ %conv40, %serio_write.exit115 ], [ %dec, %serio_write.exit120.for.body_crit_edge ]
  %cs.0126 = phi i8 [ %24, %serio_write.exit115 ], [ %xor57110, %serio_write.exit120.for.body_crit_edge ]
  %27 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serio, align 4
  %write.i116 = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %write.i116 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i116, align 8
  %tobool.not.i117 = icmp eq ptr %30, null
  br i1 %tobool.not.i117, label %for.body.serio_write.exit120_crit_edge, label %if.then.i119

for.body.serio_write.exit120_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %serio_write.exit120

if.then.i119:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xmit, align 4
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail, align 4
  %arrayidx48 = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx48, align 1
  %call.i118 = tail call i32 %30(ptr noundef %28, i8 noundef zeroext %36) #6
  br label %serio_write.exit120

serio_write.exit120:                              ; preds = %if.then.i119, %for.body.serio_write.exit120_crit_edge
  %37 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xmit, align 4
  %39 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tail, align 4
  %arrayidx54 = getelementptr i8, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx54, align 1
  %xor57110 = xor i8 %42, %cs.0126
  %add61 = add i32 %40, 1
  %and64 = and i32 %add61, 255
  store i32 %and64, ptr %tail, align 4
  %dec = add nsw i32 %i.0127, -1
  %cmp41 = icmp sgt i32 %i.0127, 0
  br i1 %cmp41, label %serio_write.exit120.for.body_crit_edge, label %for.end

serio_write.exit120.for.body_crit_edge:           ; preds = %serio_write.exit120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %serio_write.exit120
  %43 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %serio, align 4
  %write.i121 = getelementptr inbounds %struct.serio, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %write.i121 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write.i121, align 8
  %tobool.not.i122 = icmp eq ptr %46, null
  br i1 %tobool.not.i122, label %for.end.serio_write.exit125_crit_edge, label %if.then.i124

for.end.serio_write.exit125_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %serio_write.exit125

if.then.i124:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i123 = tail call i32 %46(ptr noundef %44, i8 noundef zeroext %xor57110) #6
  br label %serio_write.exit125

serio_write.exit125:                              ; preds = %if.then.i124, %for.end.serio_write.exit125_crit_edge
  %call69 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %xmit_flags) #6
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %serio_write.exit125.again_crit_edge

serio_write.exit125.again_crit_edge:              ; preds = %serio_write.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %again

if.end72:                                         ; preds = %serio_write.exit125
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %xmit_flags) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmit_lock, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then12, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iforce_process_packet(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_init_device(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_serio_get_id(ptr noundef %iforce, i8 noundef zeroext %id, ptr nocapture noundef writeonly %response_data, ptr nocapture noundef writeonly %response_len) #0 align 64 {
entry:
  %id.addr = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %id, ptr %id.addr, align 1
  %expect_packet = getelementptr inbounds %struct.iforce_serio, ptr %iforce, i32 0, i32 7
  %1 = ptrtoint ptr %expect_packet to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %expect_packet, align 1
  %cmd_response_len = getelementptr inbounds %struct.iforce_serio, ptr %iforce, i32 0, i32 9
  %2 = ptrtoint ptr %cmd_response_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cmd_response_len, align 2
  %call = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext -255, ptr noundef nonnull %id.addr) #6
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 85) #6
  %3 = ptrtoint ptr %expect_packet to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %expect_packet, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end47_crit_edge, label %if.then12

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 7
  %call1486 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %6 = ptrtoint ptr %expect_packet to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %expect_packet, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not87 = icmp eq i8 %7, 0
  br i1 %tobool17.not87, label %if.then12.for.end_crit_edge, label %if.then12.if.end34_crit_edge

if.then12.if.end34_crit_edge:                     ; preds = %if.then12
  br label %if.end34

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end34:                                         ; preds = %cleanup.if.end34_crit_edge, %if.then12.if.end34_crit_edge
  %__ret13.189 = phi i32 [ %__ret13.1, %cleanup.if.end34_crit_edge ], [ 100, %if.then12.if.end34_crit_edge ]
  %call1488 = phi i32 [ %call14, %cleanup.if.end34_crit_edge ], [ %call1486, %if.then12.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1488)
  %tobool35.not = icmp eq i32 %call1488, 0
  br i1 %tobool35.not, label %cleanup, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

cleanup:                                          ; preds = %if.end34
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret13.189) #6
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %8 = ptrtoint ptr %expect_packet to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %expect_packet, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool22.not = icmp eq i32 %call38, 0
  %10 = select i1 %tobool17.not, i1 %tobool22.not, i1 false
  %__ret13.1 = select i1 %10, i32 1, i32 %call38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool28.not = icmp eq i32 %__ret13.1, 0
  %11 = select i1 %tobool17.not, i1 true, i1 %tobool28.not
  br i1 %11, label %cleanup.for.end_crit_edge, label %cleanup.if.end34_crit_edge

cleanup.if.end34_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then12.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.end34.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  %12 = ptrtoint ptr %expect_packet to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %expect_packet, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool44.not = icmp eq i8 %.pr, 0
  br i1 %tobool44.not, label %if.end41.if.end47_crit_edge, label %if.then45

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %expect_packet to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %expect_packet, align 1
  br label %cleanup57

if.end47:                                         ; preds = %if.end41.if.end47_crit_edge, %entry.if.end47_crit_edge
  %cmd_response = getelementptr inbounds %struct.iforce_serio, ptr %iforce, i32 0, i32 8
  %14 = ptrtoint ptr %cmd_response to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_response, align 2
  %16 = ptrtoint ptr %id.addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id.addr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp.not = icmp eq i8 %15, %17
  br i1 %cmp.not, label %if.end51, label %if.end47.cleanup57_crit_edge

if.end47.cleanup57_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %cmd_response_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmd_response_len, align 2
  %conv54 = zext i8 %19 to i32
  %20 = call ptr @memcpy(ptr %response_data, ptr %cmd_response, i32 %conv54)
  %21 = load i8, ptr %cmd_response_len, align 2
  %conv56 = zext i8 %21 to i32
  %22 = ptrtoint ptr %response_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv56, ptr %response_len, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %if.end51, %if.end47.cleanup57_crit_edge, %if.then45
  %retval.0 = phi i32 [ -110, %if.then45 ], [ 0, %if.end51 ], [ -5, %if.end47.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iforce_serio_start_io(ptr nocapture noundef readnone %iforce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iforce_serio_stop_io(ptr nocapture noundef %iforce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_send_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 245, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 243, i32 11}
!4 = !{ptr @iforce_serio_drv, !5, !"iforce_serio_drv", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 241, i32 21}
!6 = !{ptr @__initcall__kmod_iforce_serio__227_253_iforce_serio_drv_init6, !7, !"__initcall__kmod_iforce_serio__227_253_iforce_serio_drv_init6", i1 false, i1 false}
!7 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 253, i32 1}
!8 = !{ptr @__exitcall_iforce_serio_drv_exit, !7, !"__exitcall_iforce_serio_drv_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author228, !10, !"__UNIQUE_ID_author228", i1 false, i1 false}
!10 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 255, i32 1}
!11 = !{ptr @__UNIQUE_ID_description229, !12, !"__UNIQUE_ID_description229", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 256, i32 1}
!13 = !{ptr @__UNIQUE_ID_file230, !14, !"__UNIQUE_ID_file230", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 257, i32 1}
!15 = !{ptr @__UNIQUE_ID_license231, !14, !"__UNIQUE_ID_license231", i1 false, i1 false}
!16 = !{ptr @iforce_serio_ids, !17, !"iforce_serio_ids", i1 false, i1 false}
!17 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 229, i32 37}
!18 = !{ptr @iforce_serio_xport_ops, !19, !"iforce_serio_xport_ops", i1 false, i1 false}
!19 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 113, i32 38}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/joystick/iforce/iforce-serio.c", i32 84, i32 2}
!22 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
