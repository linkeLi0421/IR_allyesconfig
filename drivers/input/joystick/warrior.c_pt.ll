; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/warrior.c_pt.bc'
source_filename = "../drivers/input/joystick/warrior.c"
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
%struct.warrior = type { ptr, i32, i32, [16 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [47 x i8] c"warrior.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [61 x i8] c"warrior.description=Logitech WingMan Warrior joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [44 x i8] c"warrior.file=drivers/input/joystick/warrior\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [20 x i8] c"warrior.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_warrior__231_203_warrior_drv_init6 = internal global ptr @warrior_drv_init, section ".initcall6.init", align 4
@warrior_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @warrior_serio_ids, i8 0, ptr null, ptr @warrior_interrupt, ptr @warrior_connect, ptr null, ptr null, ptr @warrior_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_warrior_drv_exit = internal global ptr @warrior_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"warrior\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Logitech WingMan Warrior joystick driver\00", [55 x i8] zeroinitializer }, align 32
@warrior_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 24 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@warrior_lengths = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\04\0C\03\04\04\00\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Logitech WingMan Warrior\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"warrior_drv\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 192, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 203, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 196, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"warrior_serio_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 180, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"warrior_lengths\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 30, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 136, i32 49 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [36 x i8] c"../drivers/input/joystick/warrior.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 138, i32 20 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_warrior_drv_exit, ptr @__initcall__kmod_warrior__231_203_warrior_drv_init6, ptr @warrior_drv_exit, ptr @warrior_drv, ptr @.str, ptr @.str.1, ptr @warrior_serio_ids, ptr @warrior_lengths, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warrior_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warrior_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warrior_lengths to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @warrior_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @warrior_drv, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @warrior_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_unregister_driver(ptr noundef nonnull @warrior_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @warrior_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %data to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %idx = getelementptr inbounds %struct.warrior, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @warrior_process_packet(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idx, align 4
  %5 = lshr i32 %conv, 4
  %and5 = and i32 %5, 7
  %arrayidx = getelementptr [8 x i8], ptr @warrior_lengths, i32 0, i32 %and5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %7 to i32
  %len = getelementptr inbounds %struct.warrior, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %len, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %idx8 = getelementptr inbounds %struct.warrior, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %idx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx8, align 4
  %len9 = getelementptr inbounds %struct.warrior, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %if.then11, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nsw i32 %10, 1
  %13 = ptrtoint ptr %idx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %idx8, align 4
  %arrayidx14 = getelementptr %struct.warrior, ptr %1, i32 0, i32 3, i32 %10
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %data, ptr %arrayidx14, align 1
  %.pr = load i32, ptr %idx8, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  %15 = phi i32 [ %.pr, %if.then11 ], [ %10, %if.end7.if.end15_crit_edge ]
  %16 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp18 = icmp eq i32 %15, %17
  br i1 %cmp18, label %if.then20, label %if.end15.if.end27_crit_edge

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %if.then20.if.end24_crit_edge, label %if.then23

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @warrior_process_packet(ptr noundef %1)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20.if.end24_crit_edge
  %18 = ptrtoint ptr %idx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idx8, align 4
  %19 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %len9, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end15.if.end27_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @warrior_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #8
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
  %phys = getelementptr inbounds %struct.warrior, ptr %call7.i.i, i32 0, i32 4
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
  store i16 24, ptr %vendor, align 2
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
  store i32 14, ptr %evbit, align 8
  %arrayidx14 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 9
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 27, ptr %arrayidx14, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 7
  %11 = ptrtoint ptr %relbit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %relbit, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef -64, i32 noundef 64, i32 noundef 0, i32 noundef 8) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef -64, i32 noundef 64, i32 noundef 0, i32 noundef 8) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 6, i32 noundef -112, i32 noundef 112, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

if.end19:                                         ; preds = %if.end
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %call21 = tail call i32 @input_register_device(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %fail3

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail3:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_close(ptr noundef %serio) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.0 = phi i32 [ %call16, %if.end.fail2_crit_edge ], [ %call21, %fail3 ]
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @warrior_disconnect(ptr noundef %serio) #2 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @warrior_process_packet(ptr nocapture noundef readonly %warrior) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %warrior to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %warrior, align 4
  %data2 = getelementptr inbounds %struct.warrior, ptr %warrior, i32 0, i32 3
  %idx = getelementptr inbounds %struct.warrior, ptr %warrior, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data2, align 1
  %conv = zext i8 %5 to i32
  %6 = lshr i32 %conv, 4
  %and = and i32 %6, 7
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb18
    i32 5, label %sw.bb40
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr %struct.warrior, ptr %warrior, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %10 = and i8 %9, 1
  %11 = zext i8 %10 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 288, i32 noundef %11) #5
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3, align 1
  %14 = lshr i8 %13, 1
  %.lobit = and i8 %14, 1
  %15 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 289, i32 noundef %15) #5
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3, align 1
  %18 = lshr i8 %17, 2
  %.lobit125 = and i8 %18, 1
  %19 = zext i8 %.lobit125 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 291, i32 noundef %19) #5
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3, align 1
  %22 = lshr i8 %21, 3
  %.lobit126 = and i8 %22, 1
  %23 = zext i8 %.lobit126 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 292, i32 noundef %23) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and21 = shl nuw nsw i32 %conv, 5
  %shl = and i32 %and21, 256
  %arrayidx22 = getelementptr %struct.warrior, ptr %warrior, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  %shl27 = and i32 %and21, 128
  %or = or i32 %shl27, %conv23
  %sub = sub nsw i32 %shl, %or
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %sub) #5
  %arrayidx28 = getelementptr %struct.warrior, ptr %warrior, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %27 to i32
  %28 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data2, align 1
  %conv31 = zext i8 %29 to i32
  %and32 = shl nuw nsw i32 %conv31, 7
  %shl33 = and i32 %and32, 128
  %or34 = or i32 %shl33, %conv29
  %shl38 = and i32 %and32, 256
  %sub39 = sub nsw i32 %or34, %shl38
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %sub39) #5
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx41 = getelementptr %struct.warrior, ptr %warrior, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %31 to i32
  %and45 = shl nuw nsw i32 %conv, 7
  %shl46 = and i32 %and45, 128
  %or47 = or i32 %shl46, %conv42
  %shl51 = and i32 %and45, 256
  %sub52 = sub nsw i32 %or47, %shl51
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 6, i32 noundef %sub52) #5
  %arrayidx53 = getelementptr %struct.warrior, ptr %warrior, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %33 to i32
  %and55 = lshr i32 %conv54, 1
  %and55.lobit = and i32 %and55, 1
  %and59 = and i32 %conv54, 1
  %sub62 = sub nsw i32 %and55.lobit, %and59
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 16, i32 noundef %sub62) #5
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx53, align 1
  %conv64 = zext i8 %35 to i32
  %and65 = lshr i32 %conv64, 3
  %and65.lobit = and i32 %and65, 1
  %36 = shl i32 %conv64, 29
  %37 = ashr i32 %36, 31
  %sub73 = add nsw i32 %37, %and65.lobit
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 17, i32 noundef %sub73) #5
  %arrayidx74 = getelementptr %struct.warrior, ptr %warrior, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %39 to i32
  %40 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data2, align 1
  %conv77 = zext i8 %41 to i32
  %and78 = shl nuw nsw i32 %conv77, 5
  %shl79 = and i32 %and78, 128
  %or80 = or i32 %shl79, %conv75
  %shl84 = and i32 %and78, 256
  %sub85 = sub nsw i32 %or80, %shl84
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 7, i32 noundef %sub85) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb18, %sw.bb, %if.end.sw.epilog_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/warrior.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/warrior.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/warrior.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_warrior__231_203_warrior_drv_init6, !8, !"__initcall__kmod_warrior__231_203_warrior_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/warrior.c", i32 203, i32 1}
!9 = !{ptr @__exitcall_warrior_drv_exit, !8, !"__exitcall_warrior_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/warrior.c", i32 196, i32 17}
!13 = !{ptr @warrior_drv, !14, !"warrior_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/warrior.c", i32 192, i32 28}
!15 = !{ptr @warrior_serio_ids, !16, !"warrior_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/warrior.c", i32 180, i32 37}
!17 = !{ptr @warrior_lengths, !18, !"warrior_lengths", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/warrior.c", i32 30, i32 13}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/warrior.c", i32 136, i32 49}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/warrior.c", i32 138, i32 20}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
