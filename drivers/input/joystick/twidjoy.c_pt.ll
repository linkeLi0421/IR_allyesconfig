; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/twidjoy.c_pt.bc'
source_filename = "../drivers/input/joystick/twidjoy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.twidjoy_button_spec = type { i32, i32, [3 x i32] }
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
%struct.twidjoy = type { ptr, i32, [5 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_description227 = internal constant [68 x i8] c"twidjoy.description=Handykey Twiddler keyboard as a joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [44 x i8] c"twidjoy.file=drivers/input/joystick/twidjoy\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [20 x i8] c"twidjoy.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_twidjoy__230_247_twidjoy_drv_init6 = internal global ptr @twidjoy_drv_init, section ".initcall6.init", align 4
@twidjoy_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @twidjoy_serio_ids, i8 0, ptr null, ptr @twidjoy_interrupt, ptr @twidjoy_connect, ptr null, ptr null, ptr @twidjoy_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_twidjoy_drv_exit = internal global ptr @twidjoy_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twidjoy\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Handykey Twiddler keyboard as a joystick driver\00", [48 x i8] zeroinitializer }, align 32
@twidjoy_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 36 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@twidjoy_buttons = internal constant { [11 x %struct.twidjoy_button_spec], [36 x i8] } { [11 x %struct.twidjoy_button_spec] [%struct.twidjoy_button_spec { i32 0, i32 3, [3 x i32] [i32 304, i32 305, i32 306] }, %struct.twidjoy_button_spec { i32 2, i32 3, [3 x i32] [i32 307, i32 308, i32 309] }, %struct.twidjoy_button_spec { i32 4, i32 3, [3 x i32] [i32 310, i32 311, i32 313] }, %struct.twidjoy_button_spec { i32 6, i32 3, [3 x i32] [i32 314, i32 315, i32 316] }, %struct.twidjoy_button_spec { i32 8, i32 1, [3 x i32] [i32 298, i32 0, i32 0] }, %struct.twidjoy_button_spec { i32 9, i32 1, [3 x i32] [i32 294, i32 0, i32 0] }, %struct.twidjoy_button_spec { i32 10, i32 1, [3 x i32] [i32 296, i32 0, i32 0] }, %struct.twidjoy_button_spec { i32 11, i32 1, [3 x i32] [i32 297, i32 0, i32 0] }, %struct.twidjoy_button_spec { i32 12, i32 1, [3 x i32] [i32 295, i32 0, i32 0] }, %struct.twidjoy_button_spec { i32 13, i32 1, [3 x i32] [i32 299, i32 0, i32 0] }, %struct.twidjoy_button_spec zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Handykey Twiddler\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"twidjoy_drv\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 236, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 247, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 240, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"twidjoy_serio_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 224, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"twidjoy_buttons\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 60, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 183, i32 49 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [36 x i8] c"../drivers/input/joystick/twidjoy.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 185, i32 20 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_twidjoy_drv_exit, ptr @__initcall__kmod_twidjoy__230_247_twidjoy_drv_init6, ptr @twidjoy_drv_exit, ptr @twidjoy_drv, ptr @.str, ptr @.str.1, ptr @twidjoy_serio_ids, ptr @twidjoy_buttons, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twidjoy_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twidjoy_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twidjoy_buttons to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twidjoy_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @twidjoy_drv, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twidjoy_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_unregister_driver(ptr noundef nonnull @twidjoy_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twidjoy_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %data)
  %cmp = icmp sgt i8 %data, -1
  %idx = getelementptr inbounds %struct.twidjoy, ptr %1, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idx, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  %idx7 = getelementptr inbounds %struct.twidjoy, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %idx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp8 = icmp slt i32 %6, 5
  br i1 %cmp8, label %if.then10, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nsw i32 %6, 1
  %7 = ptrtoint ptr %idx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %idx7, align 4
  %arrayidx = getelementptr %struct.twidjoy, ptr %1, i32 0, i32 2, i32 %6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %arrayidx, align 1
  %.pr = load i32, ptr %idx7, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %9 = phi i32 [ %.pr, %if.then10 ], [ %6, %if.end6.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp15 = icmp eq i32 %9, 5
  br i1 %cmp15, label %if.then17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %data2.i = getelementptr inbounds %struct.twidjoy, ptr %1, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.twidjoy, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %14 = and i8 %13, 127
  %and.i = zext i8 %14 to i32
  %shl.i = shl nuw nsw i32 %and.i, 7
  %15 = ptrtoint ptr %data2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data2.i, align 1
  %17 = and i8 %16, 127
  %and5.i = zext i8 %17 to i32
  %or.i = or i32 %shl.i, %and5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.then17
  %18 = phi i32 [ 3, %if.then17 ], [ %28, %for.end.i.for.body.i_crit_edge ]
  %bitmask75.i = phi ptr [ getelementptr inbounds ([11 x %struct.twidjoy_button_spec], ptr @twidjoy_buttons, i32 0, i32 0, i32 1), %if.then17 ], [ %bitmask.i, %for.end.i.for.body.i_crit_edge ]
  %bp.073.i = phi ptr [ @twidjoy_buttons, %if.then17 ], [ %incdec.ptr.i, %for.end.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %bp.073.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bp.073.i, align 4
  %shl7.i = shl i32 %18, %20
  %and8.i = and i32 %shl7.i, %or.i
  %shr.i = lshr i32 %and8.i, %20
  %21 = ptrtoint ptr %bitmask75.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bitmask75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp71.i = icmp sgt i32 %22, 0
  br i1 %cmp71.i, label %for.body.i.for.body13.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body13.i_crit_edge:                ; preds = %for.body.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.body.i.for.body13.i_crit_edge
  %i.072.i = phi i32 [ %add.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %for.body.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr %struct.twidjoy_button_spec, ptr %bp.073.i, i32 0, i32 2, i32 %i.072.i
  %23 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add nuw nsw i32 %i.072.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shr.i)
  %cmp15.i = icmp eq i32 %add.i, %shr.i
  %lnot.ext.i.i = zext i1 %cmp15.i to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef %24, i32 noundef %lnot.ext.i.i) #5
  %25 = ptrtoint ptr %bitmask75.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bitmask75.i, align 4
  %cmp.i = icmp slt i32 %add.i, %26
  br i1 %cmp.i, label %for.body13.i.for.body13.i_crit_edge, label %for.body13.i.for.end.i_crit_edge

for.body13.i.for.end.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.end.i:                                        ; preds = %for.body13.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.twidjoy_button_spec, ptr %bp.073.i, i32 1
  %bitmask.i = getelementptr %struct.twidjoy_button_spec, ptr %bp.073.i, i32 1, i32 1
  %27 = ptrtoint ptr %bitmask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitmask.i, align 4
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %twidjoy_process_packet.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

twidjoy_process_packet.exit:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx19.i = getelementptr %struct.twidjoy, ptr %1, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %30 to i32
  %and21.i = shl nuw nsw i32 %conv20.i, 5
  %shl22.i = and i32 %and21.i, 224
  %arrayidx23.i = getelementptr %struct.twidjoy, ptr %1, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx23.i, align 1
  %33 = lshr i8 %32, 2
  %34 = and i8 %33, 31
  %35 = zext i8 %34 to i32
  %or27.i = or i32 %shl22.i, %35
  %and30.i = and i32 %conv20.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %sub.i = or i32 %or27.i, -256
  %spec.select.i = select i1 %tobool31.not.i, i32 %or27.i, i32 %sub.i
  %conv33.i = zext i8 %32 to i32
  %and34.i = shl nuw nsw i32 %conv33.i, 7
  %shl35.i = and i32 %and34.i, 128
  %arrayidx36.i = getelementptr %struct.twidjoy, ptr %1, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx36.i, align 1
  %38 = and i8 %37, 127
  %and38.i = zext i8 %38 to i32
  %or40.i = or i32 %shl35.i, %and38.i
  %and43.i = and i32 %conv33.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %sub46.i = or i32 %or40.i, -256
  %abs_y.0.i = select i1 %tobool44.not.i, i32 %or40.i, i32 %sub46.i
  %sub48.i = sub nsw i32 0, %spec.select.i
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 0, i32 noundef %sub48.i) #5
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 1, i32 noundef %abs_y.0.i) #5
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %39 = ptrtoint ptr %idx7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %idx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %twidjoy_process_packet.exit, %if.end13.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twidjoy_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #8
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
  %phys = getelementptr inbounds %struct.twidjoy, ptr %call7.i.i, i32 0, i32 3
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
  store i16 36, ptr %vendor, align 2
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
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef -50, i32 noundef 50, i32 noundef 4, i32 noundef 4) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef -50, i32 noundef 50, i32 noundef 4, i32 noundef 4) #5
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc20.for.cond15.preheader_crit_edge, %if.end
  %10 = phi i32 [ 3, %if.end ], [ %16, %for.inc20.for.cond15.preheader_crit_edge ]
  %bitmask71 = phi ptr [ getelementptr inbounds ([11 x %struct.twidjoy_button_spec], ptr @twidjoy_buttons, i32 0, i32 0, i32 1), %if.end ], [ %bitmask, %for.inc20.for.cond15.preheader_crit_edge ]
  %bp.069 = phi ptr [ @twidjoy_buttons, %if.end ], [ %incdec.ptr, %for.inc20.for.cond15.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp67 = icmp sgt i32 %10, 0
  br i1 %cmp67, label %for.cond15.preheader.for.body17_crit_edge, label %for.cond15.preheader.for.inc20_crit_edge

for.cond15.preheader.for.inc20_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.068 = phi i32 [ %inc, %for.body17.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.twidjoy_button_spec, ptr %bp.069, i32 0, i32 2, i32 %i.068
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx18, align 4
  tail call void @_set_bit(i32 noundef %12, ptr noundef %keybit) #5
  %inc = add nuw nsw i32 %i.068, 1
  %13 = ptrtoint ptr %bitmask71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bitmask71, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body17.for.body17_crit_edge, label %for.body17.for.inc20_crit_edge

for.body17.for.inc20_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17

for.inc20:                                        ; preds = %for.body17.for.inc20_crit_edge, %for.cond15.preheader.for.inc20_crit_edge
  %incdec.ptr = getelementptr %struct.twidjoy_button_spec, ptr %bp.069, i32 1
  %bitmask = getelementptr %struct.twidjoy_button_spec, ptr %bp.069, i32 1, i32 1
  %15 = ptrtoint ptr %bitmask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bitmask, align 4
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %for.end21, label %for.inc20.for.cond15.preheader_crit_edge

for.inc20.for.cond15.preheader_crit_edge:         ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond15.preheader

for.end21:                                        ; preds = %for.inc20
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call22 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %for.end21.fail2_crit_edge

for.end21.fail2_crit_edge:                        ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

if.end25:                                         ; preds = %for.end21
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %call27 = tail call i32 @input_register_device(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %fail3

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail3:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_close(ptr noundef %serio) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %for.end21.fail2_crit_edge
  %err.0 = phi i32 [ %call22, %for.end21.fail2_crit_edge ], [ %call27, %fail3 ]
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twidjoy_disconnect(ptr noundef %serio) #2 align 64 {
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
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__UNIQUE_ID_description227, !1, !"__UNIQUE_ID_description227", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/twidjoy.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_file228, !3, !"__UNIQUE_ID_file228", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/twidjoy.c", i32 47, i32 1}
!4 = !{ptr @__UNIQUE_ID_license229, !3, !"__UNIQUE_ID_license229", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_twidjoy__230_247_twidjoy_drv_init6, !6, !"__initcall__kmod_twidjoy__230_247_twidjoy_drv_init6", i1 false, i1 false}
!6 = !{!"../drivers/input/joystick/twidjoy.c", i32 247, i32 1}
!7 = !{ptr @__exitcall_twidjoy_drv_exit, !6, !"__exitcall_twidjoy_drv_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/input/joystick/twidjoy.c", i32 240, i32 17}
!11 = !{ptr @twidjoy_drv, !12, !"twidjoy_drv", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/twidjoy.c", i32 236, i32 28}
!13 = !{ptr @twidjoy_serio_ids, !14, !"twidjoy_serio_ids", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/twidjoy.c", i32 224, i32 37}
!15 = !{ptr @twidjoy_buttons, !16, !"twidjoy_buttons", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/twidjoy.c", i32 60, i32 1}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/twidjoy.c", i32 183, i32 49}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/twidjoy.c", i32 185, i32 20}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
