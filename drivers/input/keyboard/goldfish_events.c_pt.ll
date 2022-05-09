; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/goldfish_events.c_pt.bc'
source_filename = "../drivers/input/keyboard/goldfish_events.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.event_dev = type { ptr, i32, ptr, [0 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_goldfish_events__228_197_events_driver_init6 = internal global ptr @events_driver_init, section ".initcall6.init", align 4
@events_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @events_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @goldfish_events_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_events_driver_exit = internal global ptr @events_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [38 x i8] c"goldfish_events.author=Brian Swetland\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [50 x i8] c"goldfish_events.description=Goldfish Event Device\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [60 x i8] c"goldfish_events.file=drivers/input/keyboard/goldfish_events\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [28 x i8] c"goldfish_events.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goldfish_events\00", [16 x i8] zeroinitializer }, align 32
@goldfish_events_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,goldfish-events-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@events_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"events_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/keyboard/goldfish_events.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: keymap=%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"goldfish-events-keypad\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"events_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 188, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 191, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"goldfish_events_of_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 174, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 145, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [44 x i8] c"../drivers/input/keyboard/goldfish_events.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 163, i32 6 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_events_driver_exit, ptr @__initcall__kmod_goldfish_events__228_197_events_driver_init6, ptr @events_driver_exit, ptr @events_driver, ptr @.str, ptr @goldfish_events_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @events_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_events_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @events_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @events_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @events_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @events_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @events_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %call4 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %1, i32 noundef 4096) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call4, i32 0) #4, !srcloc !32
  %add.ptr8 = getelementptr i8, ptr %call4, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !33
  %add11 = add i32 %2, 13
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add11, i32 noundef 3520) #4
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call17 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call17, ptr %call.i, align 4
  %addr21 = getelementptr inbounds %struct.event_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %addr21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %addr21, align 4
  %irq22 = getelementptr inbounds %struct.event_dev, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %irq22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp23115.not = icmp eq i32 %2, 0
  br i1 %cmp23115.not, label %if.end20.do.body_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %6 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr21, align 4
  %add.ptr25 = getelementptr i8, ptr %7, i32 8
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 %i.0116
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #4, !srcloc !34
  %arrayidx = getelementptr %struct.event_dev, ptr %call.i, i32 0, i32 3, i32 %i.0116
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.end20.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @events_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@events_probe, %if.then32)) #4
          to label %do.end [label %if.then32], !srcloc !35

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name33 = getelementptr inbounds %struct.event_dev, ptr %call.i, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @events_probe.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %name33) #4
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %name35 = getelementptr inbounds %struct.event_dev, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %name35, ptr %call17, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 3
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 25, ptr %id, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 5
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %evbit, i32 noundef 0, i32 noundef 31)
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 6
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %keybit, i32 noundef 1, i32 noundef 767)
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 7
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %relbit, i32 noundef 2, i32 noundef 15)
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 8
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %absbit, i32 noundef 3, i32 noundef 63)
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 9
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %mscbit, i32 noundef 4, i32 noundef 7)
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 10
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %ledbit, i32 noundef 17, i32 noundef 15)
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 11
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %sndbit, i32 noundef 18, i32 noundef 7)
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 12
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %ffbit, i32 noundef 21, i32 noundef 127)
  %swbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 13
  tail call fastcc void @events_import_bits(ptr noundef nonnull %call.i, ptr noundef %swbit, i32 noundef 5, i32 noundef 16)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %14 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 131075) #4, !srcloc !32
  %add.ptr2.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !33
  %div34.i = lshr i32 %16, 4
  %17 = tail call i32 @llvm.umin.i32(i32 %div34.i, i32 63) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp336.not.i = icmp eq i32 %17, 0
  br i1 %cmp336.not.i, label %do.end.events_import_abs_params.exit_crit_edge, label %for.body.lr.ph.i

do.end.events_import_abs_params.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %events_import_abs_params.exit

for.body.lr.ph.i:                                 ; preds = %do.end
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc20.i, %for.inc19.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.037.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %absbit.i, i32 %div3.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.037.i, 31
  %20 = shl nuw i32 1, %and.i.i
  %21 = and i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc19.i_crit_edge, label %for.cond7.preheader.i

for.body.i.for.inc19.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = shl i32 %i.037.i, 4
  %22 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr21, align 4
  %add.ptr12.i = getelementptr i8, ptr %23, i32 8
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i, i32 %mul.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #4, !srcloc !33
  %mul10.1.i = or i32 %mul.i, 4
  %25 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr21, align 4
  %add.ptr12.1.i = getelementptr i8, ptr %26, i32 8
  %add.ptr13.1.i = getelementptr i8, ptr %add.ptr12.1.i, i32 %mul10.1.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.1.i) #4, !srcloc !33
  %mul10.2.i = or i32 %mul.i, 8
  %28 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr21, align 4
  %add.ptr12.2.i = getelementptr i8, ptr %29, i32 8
  %add.ptr13.2.i = getelementptr i8, ptr %add.ptr12.2.i, i32 %mul10.2.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.2.i) #4, !srcloc !33
  %add.3.i = or i32 %mul.i, 12
  %31 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr21, align 4
  %add.ptr12.3.i = getelementptr i8, ptr %32, i32 8
  %add.ptr13.3.i = getelementptr i8, ptr %add.ptr12.3.i, i32 %add.3.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.3.i) #4, !srcloc !33
  tail call void @input_set_abs_params(ptr noundef %13, i32 noundef %i.037.i, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33) #4
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %for.cond7.preheader.i, %for.body.i.for.inc19.i_crit_edge
  %inc20.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, %17
  br i1 %exitcond.not.i, label %for.inc19.i.events_import_abs_params.exit_crit_edge, label %for.inc19.i.for.body.i_crit_edge

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc19.i.events_import_abs_params.exit_crit_edge: ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %events_import_abs_params.exit

events_import_abs_params.exit:                    ; preds = %for.inc19.i.events_import_abs_params.exit_crit_edge, %do.end.events_import_abs_params.exit_crit_edge
  %34 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq22, align 4
  %call.i113 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %35, ptr noundef nonnull @events_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool50.not = icmp eq i32 %call.i113, 0
  br i1 %tobool50.not, label %if.end52, label %events_import_abs_params.exit.cleanup_crit_edge

events_import_abs_params.exit.cleanup_crit_edge:  ; preds = %events_import_abs_params.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end52:                                         ; preds = %events_import_abs_params.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = tail call i32 @input_register_device(ptr noundef nonnull %call17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %events_import_abs_params.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ %call.i113, %events_import_abs_params.exit.cleanup_crit_edge ], [ %call53, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @events_import_bits(ptr nocapture noundef readonly %edev, ptr noundef %bits, i32 noundef %type, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.event_dev, ptr %edev, i32 0, i32 2
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr1, align 4
  %or = or i32 %type, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #4, !srcloc !32
  %add.ptr2 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #4, !srcloc !33
  %mul = shl i32 %2, 3
  %3 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp426.not = icmp eq i32 %3, 0
  br i1 %cmp426.not, label %entry.for.end13_crit_edge, label %for.body.preheader

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end13

for.body.preheader:                               ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %1, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.7.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %add12, %for.inc.7.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %addr.027 = phi ptr [ %incdec.ptr, %for.inc.7.for.body_crit_edge ], [ %add.ptr3, %for.body.preheader ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr.027) #4, !srcloc !34
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef %i.028, ptr noundef %bits) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %and.1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %add.1 = or i32 %i.028, 1
  tail call void @_set_bit(i32 noundef %add.1, ptr noundef %bits) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %add.2 = or i32 %i.028, 2
  tail call void @_set_bit(i32 noundef %add.2, ptr noundef %bits) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %add.3 = or i32 %i.028, 3
  tail call void @_set_bit(i32 noundef %add.3, ptr noundef %bits) #4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then9.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %add.4 = or i32 %i.028, 4
  tail call void @_set_bit(i32 noundef %add.4, ptr noundef %bits) #4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then9.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then9.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %add.5 = or i32 %i.028, 5
  tail call void @_set_bit(i32 noundef %add.5, ptr noundef %bits) #4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then9.5, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then9.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then9.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %add.6 = or i32 %i.028, 6
  tail call void @_set_bit(i32 noundef %add.6, ptr noundef %bits) #4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then9.6, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then9.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then9.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  %add.7 = or i32 %i.028, 7
  tail call void @_set_bit(i32 noundef %add.7, ptr noundef %bits) #4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then9.7, %for.inc.6.for.inc.7_crit_edge
  %incdec.ptr = getelementptr i8, ptr %addr.027, i32 1
  %add12 = add nuw i32 %i.028, 8
  %cmp4 = icmp ult i32 %add12, %3
  br i1 %cmp4, label %for.inc.7.for.body_crit_edge, label %for.inc.7.for.end13_crit_edge

for.inc.7.for.end13_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end13

for.inc.7.for.body_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end13:                                        ; preds = %for.inc.7.for.end13_crit_edge, %entry.for.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @events_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.event_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !33
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !33
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !33
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  tail call void @input_event(ptr noundef %10, i32 noundef %2, i32 noundef %5, i32 noundef %8) #4
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  tail call void @input_event(ptr noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_goldfish_events__228_197_events_driver_init6, !1, !"__initcall__kmod_goldfish_events__228_197_events_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 197, i32 1}
!2 = !{ptr @__exitcall_events_driver_exit, !1, !"__exitcall_events_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 199, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 200, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 201, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 191, i32 11}
!12 = !{ptr @events_driver, !13, !"events_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 188, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 145, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @events_probe.__UNIQUE_ID_ddebug227, !15, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 163, i32 6}
!21 = !{ptr @goldfish_events_of_match, !22, !"goldfish_events_of_match", i1 false, i1 false}
!22 = !{!"../drivers/input/keyboard/goldfish_events.c", i32 174, i32 34}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 4618771}
!33 = !{i64 4619189}
!34 = !{i64 4618969}
!35 = !{i64 2148956266, i64 2148956271, i64 2148956284, i64 2148956328, i64 2148956362, i64 2148956383}
