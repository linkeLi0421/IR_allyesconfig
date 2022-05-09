; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/magellan.c_pt.bc'
source_filename = "../drivers/input/joystick/magellan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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
%struct.magellan = type { ptr, i32, [32 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [48 x i8] c"magellan.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [68 x i8] c"magellan.description=Magellan and SpaceMouse 6dof controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [46 x i8] c"magellan.file=drivers/input/joystick/magellan\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [21 x i8] c"magellan.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_magellan__231_208_magellan_drv_init6 = internal global ptr @magellan_drv_init, section ".initcall6.init", align 4
@magellan_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @magellan_serio_ids, i8 0, ptr null, ptr @magellan_interrupt, ptr @magellan_connect, ptr null, ptr null, ptr @magellan_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_magellan_drv_exit = internal global ptr @magellan_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"magellan\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Magellan and SpaceMouse 6dof controller driver\00", [49 x i8] zeroinitializer }, align 32
@magellan_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 26 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@magellan_crunch_nibbles.nibbles = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0AB3D56GH9:K<MN?", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LogiCad3D Magellan / SpaceMouse\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 100, i64 107]
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"magellan_drv\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 197, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 208, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 201, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"magellan_serio_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 185, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"nibbles\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 54, i32 23 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 144, i32 51 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [37 x i8] c"../drivers/input/joystick/magellan.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 146, i32 20 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_magellan_drv_exit, ptr @__initcall__kmod_magellan__231_208_magellan_drv_init6, ptr @magellan_drv_exit, ptr @magellan_drv, ptr @.str, ptr @.str.1, ptr @magellan_serio_ids, ptr @magellan_crunch_nibbles.nibbles, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magellan_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magellan_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magellan_crunch_nibbles.nibbles to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @magellan_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @magellan_drv, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @magellan_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_unregister_driver(ptr noundef nonnull @magellan_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magellan_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %data)
  %cmp = icmp eq i8 %data, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %data2.i = getelementptr inbounds %struct.magellan, ptr %1, i32 0, i32 2
  %idx.i = getelementptr inbounds %struct.magellan, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.magellan_process_packet.exit_crit_edge, label %if.end.i

if.then.magellan_process_packet.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %magellan_process_packet.exit

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %data2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data2.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end.i.sw.epilog.i_crit_edge [
    i8 100, label %sw.bb.i
    i8 107, label %sw.bb33.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 25
  br i1 %cmp.not.i, label %sw.bb.i.do.body.i.i_crit_edge, label %sw.bb.i.magellan_process_packet.exit_crit_edge

sw.bb.i.magellan_process_packet.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %magellan_process_packet.exit

sw.bb.i.do.body.i.i_crit_edge:                    ; preds = %sw.bb.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i.do.body.i.i_crit_edge, %sw.bb.i.do.body.i.i_crit_edge
  %count.addr.0.i.i = phi i32 [ %dec.i.i, %if.then.i.i.do.body.i.i_crit_edge ], [ 24, %sw.bb.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %data2.i, i32 %count.addr.0.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %11 = and i8 %10, 15
  %and.i.i = zext i8 %11 to i32
  %arrayidx3.i.i = getelementptr [16 x i8], ptr @magellan_crunch_nibbles.nibbles, i32 0, i32 %and.i.i
  %12 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %13)
  %cmp.i.i = icmp eq i8 %10, %13
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body.i.i.magellan_process_packet.exit_crit_edge

do.body.i.i.magellan_process_packet.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %magellan_process_packet.exit

if.then.i.i:                                      ; preds = %do.body.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %arrayidx.i.i, align 1
  %dec.i.i = add nsw i32 %count.addr.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.preheader.i, label %if.then.i.i.do.body.i.i_crit_edge

if.then.i.i.do.body.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

for.body.preheader.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %16 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 12
  %arrayidx19.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %18 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 8
  %or.i = or i32 %shl21.i, %shl16.i
  %arrayidx24.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %20 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 4
  %or27.i = or i32 %or.i, %shl26.i
  %arrayidx30.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %22 to i32
  %or32.i = or i32 %or27.i, %conv31.i
  %sub.i = add nsw i32 %or32.i, -32768
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %sub.i) #5
  %arrayidx14.1.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14.1.i, align 1
  %conv15.1.i = zext i8 %24 to i32
  %shl16.1.i = shl nuw nsw i32 %conv15.1.i, 12
  %arrayidx19.1.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 6
  %25 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19.1.i, align 1
  %conv20.1.i = zext i8 %26 to i32
  %shl21.1.i = shl nuw nsw i32 %conv20.1.i, 8
  %or.1.i = or i32 %shl21.1.i, %shl16.1.i
  %arrayidx24.1.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx24.1.i, align 1
  %conv25.1.i = zext i8 %28 to i32
  %shl26.1.i = shl nuw nsw i32 %conv25.1.i, 4
  %or27.1.i = or i32 %or.1.i, %shl26.1.i
  %arrayidx30.1.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30.1.i, align 1
  %conv31.1.i = zext i8 %30 to i32
  %or32.1.i = or i32 %or27.1.i, %conv31.1.i
  %sub.1.i = add nsw i32 %or32.1.i, -32768
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %sub.1.i) #5
  %arrayidx14.2.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 9
  %31 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx14.2.i, align 1
  %conv15.2.i = zext i8 %32 to i32
  %shl16.2.i = shl nuw nsw i32 %conv15.2.i, 12
  %arrayidx19.2.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 10
  %33 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx19.2.i, align 1
  %conv20.2.i = zext i8 %34 to i32
  %shl21.2.i = shl nuw nsw i32 %conv20.2.i, 8
  %or.2.i = or i32 %shl21.2.i, %shl16.2.i
  %arrayidx24.2.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 11
  %35 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx24.2.i, align 1
  %conv25.2.i = zext i8 %36 to i32
  %shl26.2.i = shl nuw nsw i32 %conv25.2.i, 4
  %or27.2.i = or i32 %or.2.i, %shl26.2.i
  %arrayidx30.2.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 12
  %37 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx30.2.i, align 1
  %conv31.2.i = zext i8 %38 to i32
  %or32.2.i = or i32 %or27.2.i, %conv31.2.i
  %sub.2.i = add nsw i32 %or32.2.i, -32768
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 2, i32 noundef %sub.2.i) #5
  %arrayidx14.3.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 13
  %39 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx14.3.i, align 1
  %conv15.3.i = zext i8 %40 to i32
  %shl16.3.i = shl nuw nsw i32 %conv15.3.i, 12
  %arrayidx19.3.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 14
  %41 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx19.3.i, align 1
  %conv20.3.i = zext i8 %42 to i32
  %shl21.3.i = shl nuw nsw i32 %conv20.3.i, 8
  %or.3.i = or i32 %shl21.3.i, %shl16.3.i
  %arrayidx24.3.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 15
  %43 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx24.3.i, align 1
  %conv25.3.i = zext i8 %44 to i32
  %shl26.3.i = shl nuw nsw i32 %conv25.3.i, 4
  %or27.3.i = or i32 %or.3.i, %shl26.3.i
  %arrayidx30.3.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 16
  %45 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx30.3.i, align 1
  %conv31.3.i = zext i8 %46 to i32
  %or32.3.i = or i32 %or27.3.i, %conv31.3.i
  %sub.3.i = add nsw i32 %or32.3.i, -32768
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 3, i32 noundef %sub.3.i) #5
  %arrayidx14.4.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 17
  %47 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx14.4.i, align 1
  %conv15.4.i = zext i8 %48 to i32
  %shl16.4.i = shl nuw nsw i32 %conv15.4.i, 12
  %arrayidx19.4.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 18
  %49 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx19.4.i, align 1
  %conv20.4.i = zext i8 %50 to i32
  %shl21.4.i = shl nuw nsw i32 %conv20.4.i, 8
  %or.4.i = or i32 %shl21.4.i, %shl16.4.i
  %arrayidx24.4.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 19
  %51 = ptrtoint ptr %arrayidx24.4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx24.4.i, align 1
  %conv25.4.i = zext i8 %52 to i32
  %shl26.4.i = shl nuw nsw i32 %conv25.4.i, 4
  %or27.4.i = or i32 %or.4.i, %shl26.4.i
  %arrayidx30.4.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 20
  %53 = ptrtoint ptr %arrayidx30.4.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx30.4.i, align 1
  %conv31.4.i = zext i8 %54 to i32
  %or32.4.i = or i32 %or27.4.i, %conv31.4.i
  %sub.4.i = add nsw i32 %or32.4.i, -32768
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 4, i32 noundef %sub.4.i) #5
  %arrayidx14.5.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 21
  %55 = ptrtoint ptr %arrayidx14.5.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx14.5.i, align 1
  %conv15.5.i = zext i8 %56 to i32
  %shl16.5.i = shl nuw nsw i32 %conv15.5.i, 12
  %arrayidx19.5.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 22
  %57 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx19.5.i, align 1
  %conv20.5.i = zext i8 %58 to i32
  %shl21.5.i = shl nuw nsw i32 %conv20.5.i, 8
  %or.5.i = or i32 %shl21.5.i, %shl16.5.i
  %arrayidx24.5.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 23
  %59 = ptrtoint ptr %arrayidx24.5.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx24.5.i, align 1
  %conv25.5.i = zext i8 %60 to i32
  %shl26.5.i = shl nuw nsw i32 %conv25.5.i, 4
  %or27.5.i = or i32 %or.5.i, %shl26.5.i
  %arrayidx30.5.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 24
  %61 = ptrtoint ptr %arrayidx30.5.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx30.5.i, align 1
  %conv31.5.i = zext i8 %62 to i32
  %or32.5.i = or i32 %or27.5.i, %conv31.5.i
  %sub.5.i = add nsw i32 %or32.5.i, -32768
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 5, i32 noundef %sub.5.i) #5
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp35.not.i = icmp eq i32 %5, 4
  br i1 %cmp35.not.i, label %do.body.i94.preheader.i, label %sw.bb33.i.magellan_process_packet.exit_crit_edge

sw.bb33.i.magellan_process_packet.exit_crit_edge: ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %magellan_process_packet.exit

do.body.i94.preheader.i:                          ; preds = %sw.bb33.i
  %arrayidx.i90.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 3
  %63 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i90.i, align 1
  %65 = and i8 %64, 15
  %and.i91.i = zext i8 %65 to i32
  %arrayidx3.i92.i = getelementptr [16 x i8], ptr @magellan_crunch_nibbles.nibbles, i32 0, i32 %and.i91.i
  %66 = ptrtoint ptr %arrayidx3.i92.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx3.i92.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %67)
  %cmp.i93.i = icmp eq i8 %64, %67
  br i1 %cmp.i93.i, label %if.then.i97.i, label %do.body.i94.preheader.i.magellan_process_packet.exit_crit_edge

do.body.i94.preheader.i.magellan_process_packet.exit_crit_edge: ; preds = %do.body.i94.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %magellan_process_packet.exit

if.then.i97.i:                                    ; preds = %do.body.i94.preheader.i
  %68 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %65, ptr %arrayidx.i90.i, align 1
  %arrayidx.i90.1.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %arrayidx.i90.1.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i90.1.i, align 1
  %71 = and i8 %70, 15
  %and.i91.1.i = zext i8 %71 to i32
  %arrayidx3.i92.1.i = getelementptr [16 x i8], ptr @magellan_crunch_nibbles.nibbles, i32 0, i32 %and.i91.1.i
  %72 = ptrtoint ptr %arrayidx3.i92.1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx3.i92.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %73)
  %cmp.i93.1.i = icmp eq i8 %70, %73
  br i1 %cmp.i93.1.i, label %if.then.i97.1.i, label %if.then.i97.i.magellan_process_packet.exit_crit_edge

if.then.i97.i.magellan_process_packet.exit_crit_edge: ; preds = %if.then.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %magellan_process_packet.exit

if.then.i97.1.i:                                  ; preds = %if.then.i97.i
  %74 = ptrtoint ptr %arrayidx.i90.1.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %71, ptr %arrayidx.i90.1.i, align 1
  %arrayidx.i90.2.i = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %arrayidx.i90.2.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i90.2.i, align 1
  %77 = and i8 %76, 15
  %and.i91.2.i = zext i8 %77 to i32
  %arrayidx3.i92.2.i = getelementptr [16 x i8], ptr @magellan_crunch_nibbles.nibbles, i32 0, i32 %and.i91.2.i
  %78 = ptrtoint ptr %arrayidx3.i92.2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx3.i92.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %79)
  %cmp.i93.2.i = icmp eq i8 %76, %79
  br i1 %cmp.i93.2.i, label %if.then.i97.2.i, label %if.then.i97.1.i.magellan_process_packet.exit_crit_edge

if.then.i97.1.i.magellan_process_packet.exit_crit_edge: ; preds = %if.then.i97.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %magellan_process_packet.exit

if.then.i97.2.i:                                  ; preds = %if.then.i97.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %arrayidx.i90.2.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %77, ptr %arrayidx.i90.2.i, align 1
  %shl45.i = shl nuw nsw i32 %and.i91.2.i, 1
  %shl48.i = shl nuw nsw i32 %and.i91.1.i, 5
  %or49.i = or i32 %shl45.i, %shl48.i
  %or52.i = or i32 %or49.i, %and.i91.i
  %81 = and i32 %and.i91.i, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 256, i32 noundef %81) #5
  %82 = lshr i32 %or52.i, 1
  %83 = and i32 %82, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 257, i32 noundef %83) #5
  %84 = lshr i32 %or52.i, 2
  %85 = and i32 %84, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 258, i32 noundef %85) #5
  %86 = lshr i32 %or52.i, 3
  %87 = and i32 %86, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 259, i32 noundef %87) #5
  %88 = lshr i32 %and.i91.2.i, 3
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 260, i32 noundef %88) #5
  %89 = and i32 %and.i91.1.i, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 261, i32 noundef %89) #5
  %90 = lshr i32 %and.i91.1.i, 1
  %91 = and i32 %90, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 262, i32 noundef %91) #5
  %92 = lshr i32 %and.i91.1.i, 2
  %93 = and i32 %92, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 263, i32 noundef %93) #5
  %94 = lshr i32 %and.i91.1.i, 3
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 264, i32 noundef %94) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then.i97.2.i, %for.body.preheader.i, %if.end.i.sw.epilog.i_crit_edge
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %magellan_process_packet.exit

magellan_process_packet.exit:                     ; preds = %sw.epilog.i, %if.then.i97.1.i.magellan_process_packet.exit_crit_edge, %if.then.i97.i.magellan_process_packet.exit_crit_edge, %do.body.i94.preheader.i.magellan_process_packet.exit_crit_edge, %sw.bb33.i.magellan_process_packet.exit_crit_edge, %do.body.i.i.magellan_process_packet.exit_crit_edge, %sw.bb.i.magellan_process_packet.exit_crit_edge, %if.then.magellan_process_packet.exit_crit_edge
  %95 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %idx.i, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %idx2 = getelementptr inbounds %struct.magellan, ptr %1, i32 0, i32 1
  %96 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %idx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %97)
  %cmp3 = icmp slt i32 %97, 32
  br i1 %cmp3, label %if.then5, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nsw i32 %97, 1
  %98 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %inc, ptr %idx2, align 4
  %arrayidx = getelementptr %struct.magellan, ptr %1, i32 0, i32 2, i32 %97
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %data, ptr %arrayidx, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else.if.end8_crit_edge, %magellan_process_packet.exit
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magellan_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #8
  %call1 = tail call ptr @input_allocate_device() #5
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail1

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.magellan, ptr %call7.i.i, i32 0, i32 3
  %phys3 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %phys3)
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.3, ptr %call1, align 8
  %phys8 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %phys8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %phys, ptr %phys8, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 26, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %version, align 2
  %dev12 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev12, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %9 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %evbit, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 256, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 257, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 258, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 259, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 260, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 261, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 262, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 263, ptr noundef %keybit) #5
  tail call void @_set_bit(i32 noundef 264, ptr noundef %keybit) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef -360, i32 noundef 360, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef -360, i32 noundef 360, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 2, i32 noundef -360, i32 noundef 360, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 3, i32 noundef -360, i32 noundef 360, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 4, i32 noundef -360, i32 noundef 360, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 5, i32 noundef -360, i32 noundef 360, i32 noundef 0, i32 noundef 0) #5
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call23 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

if.end26:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %call28 = tail call i32 @input_register_device(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %fail3

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail3:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_close(ptr noundef %serio) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.0 = phi i32 [ %call23, %if.end.fail2_crit_edge ], [ %call28, %fail3 ]
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @magellan_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #5
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %4) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/magellan.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/magellan.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/magellan.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_magellan__231_208_magellan_drv_init6, !8, !"__initcall__kmod_magellan__231_208_magellan_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/magellan.c", i32 208, i32 1}
!9 = !{ptr @__exitcall_magellan_drv_exit, !8, !"__exitcall_magellan_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/magellan.c", i32 201, i32 17}
!13 = !{ptr @magellan_drv, !14, !"magellan_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/magellan.c", i32 197, i32 28}
!15 = !{ptr @magellan_serio_ids, !16, !"magellan_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/magellan.c", i32 185, i32 37}
!17 = !{ptr @magellan_crunch_nibbles.nibbles, !18, !"nibbles", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/magellan.c", i32 54, i32 23}
!19 = distinct !{null, !20, !"magellan_axes", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/magellan.c", i32 32, i32 12}
!21 = distinct !{null, !22, !"magellan_buttons", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/magellan.c", i32 31, i32 12}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/magellan.c", i32 144, i32 51}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/magellan.c", i32 146, i32 20}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
