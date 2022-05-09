; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_atmio16d.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_atmio16d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.atmio16_board_t = type { ptr, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.atmio16d_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x ptr], i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__initcall__kmod_ni_atmio16d__234_724_atmio16d_driver_init6 = internal global ptr @atmio16d_driver_init, section ".initcall6.init", align 4
@atmio16d_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @atmio16d_attach, ptr @atmio16d_detach, ptr null, i32 2, ptr @atmio16_boards, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_atmio16d_driver_exit = internal global ptr @atmio16d_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [49 x i8] c"ni_atmio16d.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [48 x i8] c"ni_atmio16d.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [52 x i8] c"ni_atmio16d.file=drivers/comedi/drivers/ni_atmio16d\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"ni_atmio16d.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atmio16\00", [24 x i8] zeroinitializer }, align 32
@atmio16_boards = internal constant { [2 x %struct.atmio16_board_t], [16 x i8] } { [2 x %struct.atmio16_board_t] [%struct.atmio16_board_t { ptr @.str, i32 0 }, %struct.atmio16_board_t { ptr @.str.4, i32 1 }], [16 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_atmio16d_ai_10_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -20000, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_atmio16d_ai_5_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_atmio16d_ai_unipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atmio16d\00", [23 x i8] zeroinitializer }, align 32
@switch.table.atmio16d_attach = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @range_atmio16d_ai_10_bipolar, ptr @range_atmio16d_ai_5_bipolar, ptr @range_atmio16d_ai_unipolar], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"atmio16d_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 715, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 716, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"atmio16_boards\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 705, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"range_atmio16d_ai_10_bipolar\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 109, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"range_atmio16d_ai_5_bipolar\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 118, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"range_atmio16d_ai_unipolar\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 127, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [40 x i8] c"../drivers/comedi/drivers/ni_atmio16d.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 710, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [29 x i8] c"switch.table.atmio16d_attach\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_atmio16d_driver_exit, ptr @__initcall__kmod_ni_atmio16d__234_724_atmio16d_driver_init6, ptr @atmio16d_driver_exit, ptr @atmio16d_driver, ptr @.str, ptr @atmio16_boards, ptr @range_atmio16d_ai_10_bipolar, ptr @range_atmio16d_ai_5_bipolar, ptr @range_atmio16d_ai_unipolar, ptr @.str.4, ptr @switch.table.atmio16d_attach], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmio16d_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmio16_boards to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_atmio16d_ai_10_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_atmio16d_ai_5_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_atmio16d_ai_unipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmio16d_attach to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @atmio16d_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmio16d_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @atmio16d_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 52) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  tail call fastcc void @reset_atmio16d(ptr noundef %dev)
  %arrayidx10 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end8.if.end20_crit_edge, label %if.then12

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @atmio16d_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %7, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then16, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then12.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %arrayidx22 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx22, align 4
  %13 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call5, align 4
  %arrayidx24 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %adc_range = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 1
  %16 = ptrtoint ptr %adc_range to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %adc_range, align 4
  %arrayidx26 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26, align 4
  %dac0_range = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 3
  %19 = ptrtoint ptr %dac0_range to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dac0_range, align 4
  %arrayidx28 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx28, align 4
  %dac0_reference = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 5
  %22 = ptrtoint ptr %dac0_reference to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dac0_reference, align 4
  %arrayidx30 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30, align 4
  %dac0_coding = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 7
  %25 = ptrtoint ptr %dac0_coding to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dac0_coding, align 4
  %arrayidx32 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 10
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx32, align 4
  %dac1_range = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 4
  %28 = ptrtoint ptr %dac1_range to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dac1_range, align 4
  %arrayidx34 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 11
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx34, align 4
  %dac1_reference = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 6
  %31 = ptrtoint ptr %dac1_reference to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dac1_reference, align 4
  %arrayidx36 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 12
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx36, align 4
  %dac1_coding = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 8
  %34 = ptrtoint ptr %dac1_coding to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dac1_coding, align 4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %35 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 4
  %38 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1114112, ptr %subdev_flags, align 4
  %39 = load i32, ptr %call5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool39.not = icmp eq i32 %39, 0
  %cond = select i1 %tobool39.not, i32 8, i32 16
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 3
  %40 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond, ptr %n_chan, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 18
  %41 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @atmio16d_ai_insn_read, ptr %insn_read, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 13
  %42 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4095, ptr %maxdata, align 4
  %43 = ptrtoint ptr %adc_range to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %adc_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %switch.lookup, label %if.end20.sw.epilog_crit_edge

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.atmio16d_attach, i32 0, i32 %44
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %range_table44 = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 15
  %47 = ptrtoint ptr %range_table44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %switch.load, ptr %range_table44, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end20.sw.epilog_crit_edge
  %irq45 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %48 = ptrtoint ptr %irq45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool46.not = icmp eq i32 %49, 0
  br i1 %tobool46.not, label %sw.epilog.if.end49_crit_edge, label %if.then47

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then47:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %50 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %36, ptr %read_subdev, align 4
  %51 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %52, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 5
  %53 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 16, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 23
  %54 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @atmio16d_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 22
  %55 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @atmio16d_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 25
  %56 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @atmio16d_ai_cancel, ptr %cancel, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %sw.epilog.if.end49_crit_edge
  %57 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %subdevices, align 4
  %arrayidx51 = getelementptr %struct.comedi_subdevice, ptr %58, i32 1
  %type52 = getelementptr %struct.comedi_subdevice, ptr %58, i32 1, i32 2
  %59 = ptrtoint ptr %type52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %type52, align 4
  %subdev_flags53 = getelementptr %struct.comedi_subdevice, ptr %58, i32 1, i32 4
  %60 = ptrtoint ptr %subdev_flags53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 131072, ptr %subdev_flags53, align 4
  %n_chan54 = getelementptr %struct.comedi_subdevice, ptr %58, i32 1, i32 3
  %61 = ptrtoint ptr %n_chan54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %n_chan54, align 4
  %maxdata55 = getelementptr %struct.comedi_subdevice, ptr %58, i32 1, i32 13
  %62 = ptrtoint ptr %maxdata55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4095, ptr %maxdata55, align 4
  %ao_range_type_list = getelementptr inbounds %struct.atmio16d_private, ptr %call5, i32 0, i32 9
  %range_table_list = getelementptr %struct.comedi_subdevice, ptr %58, i32 1, i32 16
  %63 = ptrtoint ptr %range_table_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ao_range_type_list, ptr %range_table_list, align 4
  %64 = ptrtoint ptr %dac0_range to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dac0_range, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %65, label %if.end49.sw.epilog63_crit_edge [
    i32 0, label %if.end49.sw.epilog63.sink.split_crit_edge
    i32 1, label %sw.bb60
  ]

if.end49.sw.epilog63.sink.split_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63.sink.split

if.end49.sw.epilog63_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

sw.bb60:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63.sink.split

sw.epilog63.sink.split:                           ; preds = %sw.bb60, %if.end49.sw.epilog63.sink.split_crit_edge
  %range_unipolar10.sink = phi ptr [ @range_unipolar10, %sw.bb60 ], [ @range_bipolar10, %if.end49.sw.epilog63.sink.split_crit_edge ]
  %67 = ptrtoint ptr %ao_range_type_list to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %range_unipolar10.sink, ptr %ao_range_type_list, align 4
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %sw.epilog63.sink.split, %if.end49.sw.epilog63_crit_edge
  %68 = ptrtoint ptr %dac1_range to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dac1_range, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %69, label %sw.epilog63.sw.epilog71_crit_edge [
    i32 0, label %sw.epilog63.sw.epilog71.sink.split_crit_edge
    i32 1, label %sw.bb68
  ]

sw.epilog63.sw.epilog71.sink.split_crit_edge:     ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog71.sink.split

sw.epilog63.sw.epilog71_crit_edge:                ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog71

sw.bb68:                                          ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog71.sink.split

sw.epilog71.sink.split:                           ; preds = %sw.bb68, %sw.epilog63.sw.epilog71.sink.split_crit_edge
  %range_unipolar10.sink175 = phi ptr [ @range_unipolar10, %sw.bb68 ], [ @range_bipolar10, %sw.epilog63.sw.epilog71.sink.split_crit_edge ]
  %arrayidx70 = getelementptr %struct.atmio16d_private, ptr %call5, i32 0, i32 9, i32 1
  %71 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %range_unipolar10.sink175, ptr %arrayidx70, align 4
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.epilog71.sink.split, %sw.epilog63.sw.epilog71_crit_edge
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %58, i32 1, i32 19
  %72 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @atmio16d_ao_insn_write, ptr %insn_write, align 4
  %call72 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %sw.epilog71.cleanup_crit_edge

sw.epilog71.cleanup_crit_edge:                    ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %sw.epilog71
  %73 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %subdevices, align 4
  %type78 = getelementptr %struct.comedi_subdevice, ptr %74, i32 2, i32 2
  %75 = ptrtoint ptr %type78 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 5, ptr %type78, align 4
  %subdev_flags79 = getelementptr %struct.comedi_subdevice, ptr %74, i32 2, i32 4
  %76 = ptrtoint ptr %subdev_flags79 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 196608, ptr %subdev_flags79, align 4
  %n_chan80 = getelementptr %struct.comedi_subdevice, ptr %74, i32 2, i32 3
  %77 = ptrtoint ptr %n_chan80 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8, ptr %n_chan80, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %74, i32 2, i32 20
  %78 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @atmio16d_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %74, i32 2, i32 21
  %79 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @atmio16d_dio_insn_config, ptr %insn_config, align 4
  %maxdata81 = getelementptr %struct.comedi_subdevice, ptr %74, i32 2, i32 13
  %80 = ptrtoint ptr %maxdata81 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %maxdata81, align 4
  %range_table82 = getelementptr %struct.comedi_subdevice, ptr %74, i32 2, i32 15
  %81 = ptrtoint ptr %range_table82 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @range_unipolar5, ptr %range_table82, align 4
  %82 = load ptr, ptr %subdevices, align 4
  %has_8255 = getelementptr inbounds %struct.atmio16_board_t, ptr %1, i32 0, i32 1
  %83 = ptrtoint ptr %has_8255 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %has_8255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool85.not = icmp eq i32 %84, 0
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.end75
  %arrayidx84 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3
  %call87 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx84, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.if.end92_crit_edge, label %if.then86.cleanup_crit_edge

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then86.if.end92_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %type91 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 2
  %85 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %type91, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then86.if.end92_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then86.cleanup_crit_edge, %sw.epilog71.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call72, %sw.epilog71.cleanup_crit_edge ], [ %call87, %if.then86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmio16d_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @reset_atmio16d(ptr noundef %dev)
  tail call void @comedi_legacy_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_atmio16d(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add6 = add i32 %6, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add14 = add i32 %9, 6
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %10 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add22 = add i32 %12, 26
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %13 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 -1) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add30 = add i32 %15, 26
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %16 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 -4097) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add38 = add i32 %18, 26
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %19 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 6143) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add46 = add i32 %21, 24
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %22 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 240) #6, !srcloc !34
  br label %do.body50

do.body50:                                        ; preds = %do.body50.do.body50_crit_edge, %entry
  %i.0157 = phi i32 [ 1, %entry ], [ %inc, %do.body50.do.body50_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %23 = trunc i32 %i.0157 to i16
  %conv = add i16 %23, -256
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add55 = add i32 %26, 26
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %27 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %24) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add63 = add i32 %29, 24
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %30 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 1024) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %conv71 = add i16 %23, -248
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv71)
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add73 = add i32 %33, 26
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %34 = inttoptr i32 %add75 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add81 = add i32 %36, 24
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %37 = inttoptr i32 %add83 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 768) #6, !srcloc !34
  %inc = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %do.body85, label %do.body50.do.body50_crit_edge

do.body50.do.body50_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

do.body85:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase, align 4
  %add89 = add i32 %39, 26
  %and90 = and i32 %add89, 1048575
  %add91 = or i32 %and90, -18874368
  %40 = inttoptr i32 %add91 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 24575) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add97 = add i32 %42, 12
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %43 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add105 = add i32 %45, 20
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %46 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %46, i16 0) #6, !srcloc !34
  %com_reg_1_state = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 10
  %47 = ptrtoint ptr %com_reg_1_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %com_reg_1_state, align 4
  %or = or i32 %48, 1
  store i32 %or, ptr %com_reg_1_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %com_reg_1_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %com_reg_1_state, align 4
  %conv113 = trunc i32 %50 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv113)
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %and116 = and i32 %53, 1048575
  %add117 = or i32 %and116, -18874368
  %54 = inttoptr i32 %add117 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 %51) #6, !srcloc !34
  %adc_coding = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %adc_coding to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %adc_coding, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase, align 4
  %add123 = add i32 %57, 16
  %and124 = and i32 %add123, 1048575
  %add125 = or i32 %and124, -18874368
  %58 = inttoptr i32 %add125 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 8) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase, align 4
  %add131 = add i32 %60, 18
  %and132 = and i32 %add131, 1048575
  %add133 = or i32 %and132, -18874368
  %61 = inttoptr i32 %add133 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %61, i16 8) #6, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 22
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #6, !srcloc !51
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %val, align 2
  %call3 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val, i32 noundef 1) #6
  %call4 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %4 = lshr i32 %3, 10
  %shl = and i32 %4, 16320
  %or = or i32 %shl, %3
  %conv = trunc i32 %or to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 6
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %8 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #6, !srcloc !34
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp44.not = icmp eq i32 %10, 0
  br i1 %cmp44.not, label %entry.cleanup_crit_edge, label %do.body6.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body6.lr.ph:                                   ; preds = %entry
  %adc_coding = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 2
  br label %do.body6

do.body6:                                         ; preds = %for.inc.do.body6_crit_edge, %do.body6.lr.ph
  %i.045 = phi i32 [ 0, %do.body6.lr.ph ], [ %inc, %for.inc.do.body6_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add10 = add i32 %12, 8
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %13 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 0) #6, !srcloc !34
  %call14 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @atmio16d_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %do.body6.cleanup_crit_edge

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body6
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add16 = add i32 %15, 22
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %16 = inttoptr i32 %add18 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #6, !srcloc !51
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %conv21 = zext i16 %18 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.045
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv21, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %adc_coding to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %adc_coding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp22 = icmp eq i32 %21, 0
  br i1 %cmp22, label %if.then24, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %xor = xor i32 %conv21, 2048
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %xor, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.045, 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.do.body6_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.do.body6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %inc, %for.inc.cleanup_crit_edge ], [ %call14, %do.body6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmio16d_ai_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i71 = and i32 %3, 20
  store i32 %and.i71, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %cmp.i72 = icmp ne i32 %and.i71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i71, i32 %3)
  %cmp1.not.i73 = icmp eq i32 %and.i71, %3
  %or.cond.i74 = and i1 %cmp.i72, %cmp1.not.i73
  %4 = select i1 %or.cond.i, i1 %or.cond.i74, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i76 = and i32 %6, 16
  store i32 %and.i76, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %cmp.i77 = icmp ne i32 %and.i76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i76, i32 %6)
  %cmp1.not.i78 = icmp eq i32 %and.i76, %6
  %or.cond.i79 = and i1 %cmp.i77, %cmp1.not.i78
  %7 = select i1 %4, i1 %or.cond.i79, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i81 = and i32 %9, 32
  store i32 %and.i81, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %cmp.i82 = icmp ne i32 %and.i81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i81, i32 %9)
  %cmp1.not.i83 = icmp eq i32 %and.i81, %9
  %or.cond.i84 = and i1 %cmp.i82, %cmp1.not.i83
  %10 = select i1 %7, i1 %or.cond.i84, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i86 = and i32 %12, 33
  store i32 %and.i86, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %cmp.i87 = icmp ne i32 %and.i86, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i86, i32 %12)
  %cmp1.not.i88 = icmp eq i32 %and.i86, %12
  %or.cond.i89 = and i1 %cmp.i87, %cmp1.not.i88
  %13 = select i1 %10, i1 %or.cond.i89, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %3) #6, !range !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #6, !range !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i91 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i91, i1 false
  br i1 %16, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i93 = icmp eq i32 %18, 0
  br i1 %cmp.not.i93, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i94 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then21, label %comedi_check_trigger_arg_is.exit.if.end24_crit_edge

comedi_check_trigger_arg_is.exit.if.end24_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i95 = icmp eq i32 %21, 0
  br i1 %cmp.not.i95, label %if.then21.comedi_check_trigger_arg_is.exit98_crit_edge, label %if.then.i96

if.then21.comedi_check_trigger_arg_is.exit98_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit98

if.then.i96:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit98

comedi_check_trigger_arg_is.exit98:               ; preds = %if.then.i96, %if.then21.comedi_check_trigger_arg_is.exit98_crit_edge
  %retval.0.i97 = phi i32 [ -22, %if.then.i96 ], [ 0, %if.then21.comedi_check_trigger_arg_is.exit98_crit_edge ]
  %or23 = or i32 %retval.0.i97, %retval.0.i94
  br label %if.end24

if.end24:                                         ; preds = %comedi_check_trigger_arg_is.exit98, %comedi_check_trigger_arg_is.exit.if.end24_crit_edge
  %err.0 = phi i32 [ %or23, %comedi_check_trigger_arg_is.exit98 ], [ %retval.0.i94, %comedi_check_trigger_arg_is.exit.if.end24_crit_edge ]
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %24)
  %cmp.i99 = icmp ult i32 %24, 10000
  br i1 %cmp.i99, label %if.then.i100, label %if.end24.comedi_check_trigger_arg_min.exit_crit_edge

if.end24.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit

if.then.i100:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10000, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i100, %if.end24.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i101 = phi i32 [ -22, %if.then.i100 ], [ 0, %if.end24.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or26 = or i32 %retval.0.i101, %err.0
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chanlist_len, align 4
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i102 = icmp eq i32 %29, %27
  br i1 %cmp.not.i102, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit105_crit_edge, label %if.then.i103

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit105_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit105

if.then.i103:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit105

comedi_check_trigger_arg_is.exit105:              ; preds = %if.then.i103, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit105_crit_edge
  %retval.0.i104 = phi i32 [ -22, %if.then.i103 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit105_crit_edge ]
  %or28 = or i32 %or26, %retval.0.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp30 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i106 = icmp eq i32 %32, 0
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %comedi_check_trigger_arg_is.exit105
  br i1 %cmp.i106, label %if.then31.if.end37.sink.split_crit_edge, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then31.if.end37.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit105
  br i1 %cmp.i106, label %if.else.if.end37_crit_edge, label %if.else.if.end37.sink.split_crit_edge

if.else.if.end37.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.sink.split

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37.sink.split:                              ; preds = %if.else.if.end37.sink.split_crit_edge, %if.then31.if.end37.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then31.if.end37.sink.split_crit_edge ], [ 0, %if.else.if.end37.sink.split_crit_edge ]
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else.if.end37_crit_edge, %if.then31.if.end37_crit_edge
  %call32.pn = phi i32 [ 0, %if.then31.if.end37_crit_edge ], [ 0, %if.else.if.end37_crit_edge ], [ -22, %if.end37.sink.split ]
  %err.1 = or i32 %or28, %call32.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool38.not = icmp eq i32 %err.1, 0
  %. = select i1 %tobool38.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_ai_cmd(ptr noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 26
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 -15617) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %8, 26
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 767) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %11, 24
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %12 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 1024) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add19.i = add i32 %14, 26
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %15 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 2815) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i, align 4
  %add26.i = add i32 %17, 24
  %and27.i = and i32 %add26.i, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %18 = inttoptr i32 %add28.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 768) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i, align 4
  %add33.i = add i32 %20, 26
  %and34.i = and i32 %add33.i, 1048575
  %add35.i = or i32 %and34.i, -18874368
  %21 = inttoptr i32 %add35.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 17151) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add40.i = add i32 %23, 26
  %and41.i = and i32 %add40.i, 1048575
  %add42.i = or i32 %and41.i, -18874368
  %24 = inttoptr i32 %add42.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 17151) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i, align 4
  %add47.i = add i32 %26, 26
  %and48.i = and i32 %add47.i, 1048575
  %add49.i = or i32 %and48.i, -18874368
  %27 = inttoptr i32 %add49.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 -15105) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add54.i = add i32 %29, 26
  %and55.i = and i32 %add54.i, 1048575
  %add56.i = or i32 %and55.i, -18874368
  %30 = inttoptr i32 %add56.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 1023) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i, align 4
  %add61.i = add i32 %32, 24
  %and62.i = and i32 %add61.i, 1048575
  %add63.i = or i32 %and62.i, -18874368
  %33 = inttoptr i32 %add63.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 1024) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase.i, align 4
  %add68.i = add i32 %35, 26
  %and69.i = and i32 %add68.i, 1048575
  %add70.i = or i32 %and69.i, -18874368
  %36 = inttoptr i32 %add70.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %36, i16 3071) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i, align 4
  %add75.i = add i32 %38, 24
  %and76.i = and i32 %add75.i, 1048575
  %add77.i = or i32 %and76.i, -18874368
  %39 = inttoptr i32 %add77.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 768) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i, align 4
  %add82.i = add i32 %41, 26
  %and83.i = and i32 %add82.i, 1048575
  %add84.i = or i32 %and83.i, -18874368
  %42 = inttoptr i32 %add84.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 17663) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase.i, align 4
  %add89.i = add i32 %44, 26
  %and90.i = and i32 %add89.i, 1048575
  %add91.i = or i32 %and90.i, -18874368
  %45 = inttoptr i32 %add91.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 17663) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i, align 4
  %add96.i = add i32 %47, 26
  %and97.i = and i32 %add96.i, 1048575
  %add98.i = or i32 %and97.i, -18874368
  %48 = inttoptr i32 %add98.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 -14081) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i, align 4
  %add103.i = add i32 %50, 26
  %and104.i = and i32 %add103.i, 1048575
  %add105.i = or i32 %and104.i, -18874368
  %51 = inttoptr i32 %add105.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 1279) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i, align 4
  %add110.i = add i32 %53, 24
  %and111.i = and i32 %add110.i, 1048575
  %add112.i = or i32 %and111.i, -18874368
  %54 = inttoptr i32 %add112.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 1024) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i, align 4
  %add117.i = add i32 %56, 26
  %and118.i = and i32 %add117.i, 1048575
  %add119.i = or i32 %and118.i, -18874368
  %57 = inttoptr i32 %add119.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 3327) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase.i, align 4
  %add124.i = add i32 %59, 24
  %and125.i = and i32 %add124.i, 1048575
  %add126.i = or i32 %and125.i, -18874368
  %60 = inttoptr i32 %add126.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 768) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase.i, align 4
  %add131.i = add i32 %62, 26
  %and132.i = and i32 %add131.i, 1048575
  %add133.i = or i32 %and132.i, -18874368
  %63 = inttoptr i32 %add133.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 18687) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i, align 4
  %add138.i = add i32 %65, 26
  %and139.i = and i32 %add138.i, 1048575
  %add140.i = or i32 %and139.i, -18874368
  %66 = inttoptr i32 %add140.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %66, i16 18687) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase.i, align 4
  %add145.i = add i32 %68, 26
  %and146.i = and i32 %add145.i, 1048575
  %add147.i = or i32 %and146.i, -18874368
  %69 = inttoptr i32 %add147.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %69, i16 -12033) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase.i, align 4
  %add152.i = add i32 %71, 26
  %and153.i = and i32 %add152.i, 1048575
  %add154.i = or i32 %and153.i, -18874368
  %72 = inttoptr i32 %add154.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %72, i16 1535) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase.i, align 4
  %add159.i = add i32 %74, 24
  %and160.i = and i32 %add159.i, 1048575
  %add161.i = or i32 %and160.i, -18874368
  %75 = inttoptr i32 %add161.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 1024) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iobase.i, align 4
  %add166.i = add i32 %77, 26
  %and167.i = and i32 %add166.i, 1048575
  %add168.i = or i32 %and167.i, -18874368
  %78 = inttoptr i32 %add168.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %78, i16 3583) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iobase.i, align 4
  %add173.i = add i32 %80, 24
  %and174.i = and i32 %add173.i, 1048575
  %add175.i = or i32 %and174.i, -18874368
  %81 = inttoptr i32 %add175.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %81, i16 768) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iobase.i, align 4
  %add180.i = add i32 %83, 26
  %and181.i = and i32 %add180.i, 1048575
  %add182.i = or i32 %and181.i, -18874368
  %84 = inttoptr i32 %add182.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %84, i16 20735) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iobase.i, align 4
  %add187.i = add i32 %86, 26
  %and188.i = and i32 %add187.i, 1048575
  %add189.i = or i32 %and188.i, -18874368
  %87 = inttoptr i32 %add189.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %87, i16 20735) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iobase.i, align 4
  %add194.i = add i32 %89, 12
  %and195.i = and i32 %add194.i, 1048575
  %add196.i = or i32 %and195.i, -18874368
  %90 = inttoptr i32 %add196.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %90, i16 0) #6, !srcloc !34
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %91 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp = icmp ult i32 %92, 2
  %com_reg_1_state = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 10
  %93 = ptrtoint ptr %com_reg_1_state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %com_reg_1_state, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %94, -9
  %95 = ptrtoint ptr %com_reg_1_state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and, ptr %com_reg_1_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %com_reg_1_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %com_reg_1_state, align 4
  %conv = trunc i32 %97 to i16
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %99 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %iobase.i, align 4
  %and3 = and i32 %100, 1048575
  %add4 = or i32 %and3, -18874368
  %101 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %101, i16 %98) #6, !srcloc !34
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %94, 8
  %102 = ptrtoint ptr %com_reg_1_state to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or, ptr %com_reg_1_state, align 4
  %com_reg_2_state = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 11
  %103 = ptrtoint ptr %com_reg_2_state to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %com_reg_2_state, align 4
  %or6 = or i32 %104, 16
  store i32 %or6, ptr %com_reg_2_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %105 = ptrtoint ptr %com_reg_1_state to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %com_reg_1_state, align 4
  %conv11 = trunc i32 %106 to i16
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %108 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %iobase.i, align 4
  %and14 = and i32 %109, 1048575
  %add15 = or i32 %and14, -18874368
  %110 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %110, i16 %107) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %com_reg_2_state to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %com_reg_2_state, align 4
  %conv21 = trunc i32 %112 to i16
  %113 = tail call i16 @llvm.bswap.i16(i16 %conv21)
  %114 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %iobase.i, align 4
  %add23 = add i32 %115, 2
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %116 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %116, i16 %113) #6, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %117 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp28592.not = icmp eq i32 %118, 0
  br i1 %cmp28592.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0593 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %119 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %120, i32 %i.0593
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx, align 4
  %and30 = and i32 %122, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %conv37 = trunc i32 %i.0593 to i16
  %123 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %124 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %iobase.i, align 4
  %add39 = add i32 %125, 4
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %126 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %126, i16 %123) #6, !srcloc !34
  %127 = lshr i32 %122, 10
  %shl = and i32 %127, 16320
  %or43 = or i32 %shl, %and30
  %128 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %scan_end_arg, align 4
  %sub = add i32 %129, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0593, i32 %sub)
  %cmp44 = icmp eq i32 %i.0593, %sub
  %or47 = or i32 %or43, 16
  %spec.select = select i1 %cmp44, i32 %or47, i32 %or43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %conv52 = trunc i32 %spec.select to i16
  %130 = tail call i16 @llvm.bswap.i16(i16 %conv52)
  %131 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %iobase.i, align 4
  %add54 = add i32 %132, 6
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %133 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %133, i16 %130) #6, !srcloc !34
  %inc = add nuw i32 %i.0593, 1
  %134 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %chanlist_len, align 4
  %cmp28 = icmp ult i32 %inc, %135
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %136 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536000, i32 %137)
  %cmp58 = icmp ult i32 %137, 65536000
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360000, i32 %137)
  %cmp64 = icmp ult i32 %137, 655360000
  %. = select i1 %cmp64, i32 10000, i32 100000
  %.595 = select i1 %cmp64, i16 -29659, i16 -29403
  %.sink = select i1 %cmp58, i32 1000, i32 %.
  %base_clock.0 = select i1 %cmp58, i16 -29915, i16 %.595
  %div = udiv i32 %137, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %138 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %iobase.i, align 4
  %add78 = add i32 %139, 26
  %and79 = and i32 %add78, 1048575
  %add80 = or i32 %and79, -18874368
  %140 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %140, i16 1023) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %141 = tail call i16 @llvm.bswap.i16(i16 %base_clock.0)
  %142 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %iobase.i, align 4
  %add87 = add i32 %143, 24
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %144 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %144, i16 %141) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %iobase.i, align 4
  %add95 = add i32 %146, 26
  %and96 = and i32 %add95, 1048575
  %add97 = or i32 %and96, -18874368
  %147 = inttoptr i32 %add97 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %147, i16 3071) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %148 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %iobase.i, align 4
  %add103 = add i32 %149, 24
  %and104 = and i32 %add103, 1048575
  %add105 = or i32 %and104, -18874368
  %150 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %150, i16 512) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %iobase.i, align 4
  %add111 = add i32 %152, 26
  %and112 = and i32 %add111, 1048575
  %add113 = or i32 %and112, -18874368
  %153 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %153, i16 17663) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %154 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %iobase.i, align 4
  %add119 = add i32 %155, 26
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %156 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %156, i16 -3073) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %conv126 = trunc i32 %div to i16
  %157 = tail call i16 @llvm.bswap.i16(i16 %conv126)
  %158 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %iobase.i, align 4
  %add128 = add i32 %159, 24
  %and129 = and i32 %add128, 1048575
  %add130 = or i32 %and129, -18874368
  %160 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %160, i16 %157) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %iobase.i, align 4
  %add136 = add i32 %162, 26
  %and137 = and i32 %add136, 1048575
  %add138 = or i32 %and137, -18874368
  %163 = inttoptr i32 %add138 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %163, i16 9471) #6, !srcloc !34
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %164 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %stop_arg, align 4
  %scan_end_arg140 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 9
  %166 = ptrtoint ptr %scan_end_arg140 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %scan_end_arg140, align 4
  %mul = mul i32 %167, %165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %168 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %iobase.i, align 4
  %add145 = add i32 %169, 26
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %170 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %170, i16 1279) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %171 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %iobase.i, align 4
  %add153 = add i32 %172, 24
  %and154 = and i32 %add153, 1048575
  %add155 = or i32 %and154, -18874368
  %173 = inttoptr i32 %add155 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %173, i16 9488) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %174 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %iobase.i, align 4
  %add161 = add i32 %175, 26
  %and162 = and i32 %add161, 1048575
  %add163 = or i32 %and162, -18874368
  %176 = inttoptr i32 %add163 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %176, i16 3327) #6, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul)
  %cmp165 = icmp ult i32 %mul, 65536
  br i1 %cmp165, label %do.body168, label %if.else213

do.body168:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %conv171 = trunc i32 %mul to i16
  %177 = tail call i16 @llvm.bswap.i16(i16 %conv171)
  %178 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %iobase.i, align 4
  %add173 = add i32 %179, 24
  %and174 = and i32 %add173, 1048575
  %add175 = or i32 %and174, -18874368
  %180 = inttoptr i32 %add175 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %180, i16 %177) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %181 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %iobase.i, align 4
  %add181 = add i32 %182, 26
  %and182 = and i32 %add181, 1048575
  %add183 = or i32 %and182, -18874368
  %183 = inttoptr i32 %add183 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %183, i16 18687) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %184 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %iobase.i, align 4
  %add189 = add i32 %185, 26
  %and190 = and i32 %add189, 1048575
  %add191 = or i32 %and190, -18874368
  %186 = inttoptr i32 %add191 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %186, i16 -2817) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %187 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %iobase.i, align 4
  %add197 = add i32 %188, 26
  %and198 = and i32 %add197, 1048575
  %add199 = or i32 %and198, -18874368
  %189 = inttoptr i32 %add199 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %189, i16 10495) #6, !srcloc !34
  %com_reg_1_state201 = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 10
  %190 = ptrtoint ptr %com_reg_1_state201 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %com_reg_1_state201, align 4
  %and202 = and i32 %191, -3
  store i32 %and202, ptr %com_reg_1_state201, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %192 = ptrtoint ptr %com_reg_1_state201 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %com_reg_1_state201, align 4
  %conv207 = trunc i32 %193 to i16
  %194 = tail call i16 @llvm.bswap.i16(i16 %conv207)
  %195 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %iobase.i, align 4
  %and210 = and i32 %196, 1048575
  %add211 = or i32 %and210, -18874368
  %197 = inttoptr i32 %add211 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %197, i16 %194) #6, !srcloc !34
  br label %if.end335

if.else213:                                       ; preds = %for.end
  %and214 = and i32 %mul, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool.not = icmp eq i32 %and214, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body227, label %do.body216

do.body216:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #8
  %198 = trunc i32 %mul to i16
  %conv220 = add i16 %198, -1
  %199 = tail call i16 @llvm.bswap.i16(i16 %conv220)
  %200 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %iobase.i, align 4
  %add222 = add i32 %201, 24
  %and223 = and i32 %add222, 1048575
  %add224 = or i32 %and223, -18874368
  %202 = inttoptr i32 %add224 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %202, i16 %199) #6, !srcloc !34
  br label %do.body236

do.body227:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %iobase.i, align 4
  %add231 = add i32 %204, 24
  %and232 = and i32 %add231, 1048575
  %add233 = or i32 %and232, -18874368
  %205 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %205, i16 -1) #6, !srcloc !34
  br label %do.body236

do.body236:                                       ; preds = %do.body227, %do.body216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %206 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %iobase.i, align 4
  %add240 = add i32 %207, 26
  %and241 = and i32 %add240, 1048575
  %add242 = or i32 %and241, -18874368
  %208 = inttoptr i32 %add242 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %208, i16 18687) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %209 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %iobase.i, align 4
  %add248 = add i32 %210, 24
  %and249 = and i32 %add248, 1048575
  %add250 = or i32 %and249, -18874368
  %211 = inttoptr i32 %add250 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %211, i16 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %212 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %iobase.i, align 4
  %add256 = add i32 %213, 26
  %and257 = and i32 %add256, 1048575
  %add258 = or i32 %and257, -18874368
  %214 = inttoptr i32 %add258 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %214, i16 10495) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %215 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %iobase.i, align 4
  %add264 = add i32 %216, 26
  %and265 = and i32 %add264, 1048575
  %add266 = or i32 %and265, -18874368
  %217 = inttoptr i32 %add266 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %217, i16 1535) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %218 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %iobase.i, align 4
  %add272 = add i32 %219, 24
  %and273 = and i32 %add272, 1048575
  %add274 = or i32 %and273, -18874368
  %220 = inttoptr i32 %add274 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %220, i16 9472) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %221 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %iobase.i, align 4
  %add280 = add i32 %222, 26
  %and281 = and i32 %add280, 1048575
  %add282 = or i32 %and281, -18874368
  %223 = inttoptr i32 %add282 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %223, i16 3583) #6, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and214)
  %switch = icmp ult i32 %and214, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %shr293 = lshr i32 %mul, 16
  %conv295 = trunc i32 %shr293 to i16
  br i1 %switch, label %do.body290, label %do.body302

do.body290:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #8
  %224 = tail call i16 @llvm.bswap.i16(i16 %conv295)
  %225 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %iobase.i, align 4
  %add297 = add i32 %226, 24
  %and298 = and i32 %add297, 1048575
  %add299 = or i32 %and298, -18874368
  %227 = inttoptr i32 %add299 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %227, i16 %224) #6, !srcloc !34
  br label %do.body315

do.body302:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #8
  %conv308 = add i16 %conv295, 1
  %228 = tail call i16 @llvm.bswap.i16(i16 %conv308)
  %229 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %iobase.i, align 4
  %add310 = add i32 %230, 24
  %and311 = and i32 %add310, 1048575
  %add312 = or i32 %and311, -18874368
  %231 = inttoptr i32 %add312 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %231, i16 %228) #6, !srcloc !34
  br label %do.body315

do.body315:                                       ; preds = %do.body302, %do.body290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %232 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %iobase.i, align 4
  %add319 = add i32 %233, 26
  %and320 = and i32 %add319, 1048575
  %add321 = or i32 %and320, -18874368
  %234 = inttoptr i32 %add321 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %234, i16 28927) #6, !srcloc !34
  %com_reg_1_state323 = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 10
  %235 = ptrtoint ptr %com_reg_1_state323 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %com_reg_1_state323, align 4
  %or324 = or i32 %236, 2
  store i32 %or324, ptr %com_reg_1_state323, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %237 = ptrtoint ptr %com_reg_1_state323 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %com_reg_1_state323, align 4
  %conv329 = trunc i32 %238 to i16
  %239 = tail call i16 @llvm.bswap.i16(i16 %conv329)
  %240 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %iobase.i, align 4
  %and332 = and i32 %241, 1048575
  %add333 = or i32 %and332, -18874368
  %242 = inttoptr i32 %add333 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %242, i16 %239) #6, !srcloc !34
  br label %if.end335

if.end335:                                        ; preds = %do.body315, %do.body168
  %243 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %244)
  %cmp337 = icmp ugt i32 %244, 1
  br i1 %cmp337, label %if.then339, label %if.end335.do.body424_crit_edge

if.end335.do.body424_crit_edge:                   ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body424

if.then339:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #8
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %245 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536000, i32 %246)
  %cmp340 = icmp ult i32 %246, 65536000
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360000, i32 %246)
  %cmp347 = icmp ult i32 %246, 655360000
  %.596 = select i1 %cmp347, i32 10000, i32 100000
  %.597 = select i1 %cmp347, i16 -29659, i16 -29403
  %.sink594 = select i1 %cmp340, i32 1000, i32 %.596
  %base_clock.1 = select i1 %cmp340, i16 -29915, i16 %.597
  %div344 = udiv i32 %246, %.sink594
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %247 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %iobase.i, align 4
  %add361 = add i32 %248, 26
  %and362 = and i32 %add361, 1048575
  %add363 = or i32 %and362, -18874368
  %249 = inttoptr i32 %add363 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %249, i16 767) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %250 = tail call i16 @llvm.bswap.i16(i16 %base_clock.1)
  %251 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %iobase.i, align 4
  %add370 = add i32 %252, 24
  %and371 = and i32 %add370, 1048575
  %add372 = or i32 %and371, -18874368
  %253 = inttoptr i32 %add372 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %253, i16 %250) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %254 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %iobase.i, align 4
  %add378 = add i32 %255, 26
  %and379 = and i32 %add378, 1048575
  %add380 = or i32 %and379, -18874368
  %256 = inttoptr i32 %add380 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %256, i16 2815) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %257 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %iobase.i, align 4
  %add386 = add i32 %258, 24
  %and387 = and i32 %add386, 1048575
  %add388 = or i32 %and387, -18874368
  %259 = inttoptr i32 %add388 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %259, i16 512) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %260 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %iobase.i, align 4
  %add394 = add i32 %261, 26
  %and395 = and i32 %add394, 1048575
  %add396 = or i32 %and395, -18874368
  %262 = inttoptr i32 %add396 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %262, i16 17151) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %263 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %iobase.i, align 4
  %add402 = add i32 %264, 26
  %and403 = and i32 %add402, 1048575
  %add404 = or i32 %and403, -18874368
  %265 = inttoptr i32 %add404 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %265, i16 -3329) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %conv409 = trunc i32 %div344 to i16
  %266 = tail call i16 @llvm.bswap.i16(i16 %conv409)
  %267 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %iobase.i, align 4
  %add411 = add i32 %268, 24
  %and412 = and i32 %add411, 1048575
  %add413 = or i32 %and412, -18874368
  %269 = inttoptr i32 %add413 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %269, i16 %266) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %270 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %iobase.i, align 4
  %add419 = add i32 %271, 26
  %and420 = and i32 %add419, 1048575
  %add421 = or i32 %and420, -18874368
  %272 = inttoptr i32 %add421 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %272, i16 8959) #6, !srcloc !34
  br label %do.body424

do.body424:                                       ; preds = %if.then339, %if.end335.do.body424_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %273 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %iobase.i, align 4
  %add428 = add i32 %274, 12
  %and429 = and i32 %add428, 1048575
  %add430 = or i32 %and429, -18874368
  %275 = inttoptr i32 %add430 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %275, i16 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %276 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %iobase.i, align 4
  %add436 = add i32 %277, 4
  %and437 = and i32 %add436, 1048575
  %add438 = or i32 %and437, -18874368
  %278 = inttoptr i32 %add438 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %278, i16 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %279 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %iobase.i, align 4
  %add444 = add i32 %280, 20
  %and445 = and i32 %add444, 1048575
  %add446 = or i32 %and445, -18874368
  %281 = inttoptr i32 %add446 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %281, i16 0) #6, !srcloc !34
  %com_reg_1_state448 = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 10
  %282 = ptrtoint ptr %com_reg_1_state448 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %com_reg_1_state448, align 4
  %or449 = or i32 %283, 16
  store i32 %or449, ptr %com_reg_1_state448, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %284 = ptrtoint ptr %com_reg_1_state448 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %com_reg_1_state448, align 4
  %conv454 = trunc i32 %285 to i16
  %286 = tail call i16 @llvm.bswap.i16(i16 %conv454)
  %287 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %iobase.i, align 4
  %and457 = and i32 %288, 1048575
  %add458 = or i32 %and457, -18874368
  %289 = inttoptr i32 %add458 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %289, i16 %286) #6, !srcloc !34
  %290 = ptrtoint ptr %com_reg_1_state448 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %com_reg_1_state448, align 4
  %or461 = or i32 %291, 128
  store i32 %or461, ptr %com_reg_1_state448, align 4
  %com_reg_2_state462 = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 11
  %292 = ptrtoint ptr %com_reg_2_state462 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %com_reg_2_state462, align 4
  %or463 = or i32 %293, 128
  store i32 %or463, ptr %com_reg_2_state462, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %294 = ptrtoint ptr %com_reg_1_state448 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %com_reg_1_state448, align 4
  %conv468 = trunc i32 %295 to i16
  %296 = tail call i16 @llvm.bswap.i16(i16 %conv468)
  %297 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %iobase.i, align 4
  %and471 = and i32 %298, 1048575
  %add472 = or i32 %and471, -18874368
  %299 = inttoptr i32 %add472 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %299, i16 %296) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %300 = ptrtoint ptr %com_reg_2_state462 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %com_reg_2_state462, align 4
  %conv478 = trunc i32 %301 to i16
  %302 = tail call i16 @llvm.bswap.i16(i16 %conv478)
  %303 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %iobase.i, align 4
  %add480 = add i32 %304, 2
  %and481 = and i32 %add480, 1048575
  %add482 = or i32 %and481, -18874368
  %305 = inttoptr i32 %add482 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %305, i16 %302) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %306 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %iobase.i, align 4
  %add488 = add i32 %307, 10
  %and489 = and i32 %add488, 1048575
  %add490 = or i32 %and489, -18874368
  %308 = inttoptr i32 %add490 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %308, i16 0) #6, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @reset_atmio16d(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 16, i32 18
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dac0_coding = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 7
  br label %if.end6.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp2 = icmp eq i32 %and, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true3:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dac1_coding = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 8
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %land.lhs.true3, %if.end.thread
  %dac0_coding.sink = phi ptr [ %dac0_coding, %if.end.thread ], [ %dac1_coding, %land.lhs.true3 ]
  %4 = ptrtoint ptr %dac0_coding.sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dac0_coding.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.end.if.end6_crit_edge
  %munge.1.off0 = phi i1 [ false, %if.end.if.end6_crit_edge ], [ %cmp1, %if.end6.sink.split ]
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp731.not = icmp eq i32 %7, 0
  br i1 %cmp731.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.032
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx8 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx8, align 4
  %xor = xor i32 %9, 2048
  %spec.select28 = select i1 %munge.1.off0, i32 %xor, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %spec.select28 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add = add i32 %15, %cond
  %and12 = and i32 %add, 1048575
  %add13 = or i32 %and12, -18874368
  %16 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 %13) #6, !srcloc !34
  %inc = add nuw i32 %i.032, 1
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %cmp7 = icmp ult i32 %inc, %18
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #6, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase3 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase3, align 4
  %add4 = add i32 %7, 28
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %8 = inttoptr i32 %add6 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #6, !srcloc !51
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %conv9 = zext i16 %10 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 15, i32 240
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %com_reg_2_state = getelementptr inbounds %struct.atmio16d_private, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %com_reg_2_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %com_reg_2_state, align 4
  %and3 = and i32 %5, -769
  store i32 %and3, ptr %com_reg_2_state, align 4
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %6 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_bits, align 4
  %and4 = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end2.if.end8_crit_edge, label %if.then6

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and3, 256
  %8 = ptrtoint ptr %com_reg_2_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %com_reg_2_state, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end2.if.end8_crit_edge
  %9 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_bits, align 4
  %and10 = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.do.body_crit_edge, label %if.then12

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %com_reg_2_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %com_reg_2_state, align 4
  %or14 = or i32 %12, 512
  store i32 %or14, ptr %com_reg_2_state, align 4
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end8.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %com_reg_2_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %com_reg_2_state, align 4
  %conv = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 2
  %and17 = and i32 %add, 1048575
  %add18 = or i32 %and17, -18874368
  %18 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #6, !srcloc !34
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmio16d_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #6, !srcloc !51
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %conv = zext i16 %4 to i32
  %and3 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add8 = add i32 %6, 12
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %7 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 0) #6, !srcloc !34
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %do.body ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_ni_atmio16d__234_724_atmio16d_driver_init6, !1, !"__initcall__kmod_ni_atmio16d__234_724_atmio16d_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 724, i32 1}
!2 = !{ptr @__exitcall_atmio16d_driver_exit, !1, !"__exitcall_atmio16d_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 726, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 727, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 728, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 716, i32 17}
!12 = !{ptr @atmio16d_driver, !13, !"atmio16d_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 715, i32 29}
!14 = !{ptr @range_atmio16d_ai_10_bipolar, !15, !"range_atmio16d_ai_10_bipolar", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 109, i32 35}
!16 = !{ptr @range_atmio16d_ai_5_bipolar, !17, !"range_atmio16d_ai_5_bipolar", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 118, i32 35}
!18 = !{ptr @range_atmio16d_ai_unipolar, !19, !"range_atmio16d_ai_unipolar", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 127, i32 35}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 710, i32 12}
!22 = !{ptr @atmio16_boards, !23, !"atmio16_boards", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/ni_atmio16d.c", i32 705, i32 37}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2154219467}
!34 = !{i64 4634279}
!35 = !{i64 2154219943}
!36 = !{i64 2154220419}
!37 = !{i64 2154220900}
!38 = !{i64 2154221391}
!39 = !{i64 2154221882}
!40 = !{i64 2154222373}
!41 = !{i64 2154222868}
!42 = !{i64 2154223367}
!43 = !{i64 2154223862}
!44 = !{i64 2154224358}
!45 = !{i64 2154224843}
!46 = !{i64 2154225329}
!47 = !{i64 2154225805}
!48 = !{i64 2154226304}
!49 = !{i64 2154226829}
!50 = !{i64 2154227314}
!51 = !{i64 4634479}
!52 = !{i64 2154228225}
!53 = !{i64 2154254088}
!54 = !{i64 2154254598}
!55 = !{i64 2154255503}
!56 = !{i32 0, i32 33}
!57 = !{i64 2154205320}
!58 = !{i64 2154205811}
!59 = !{i64 2154206299}
!60 = !{i64 2154206784}
!61 = !{i64 2154207272}
!62 = !{i64 2154207757}
!63 = !{i64 2154208248}
!64 = !{i64 2154208739}
!65 = !{i64 2154209230}
!66 = !{i64 2154209718}
!67 = !{i64 2154210203}
!68 = !{i64 2154210691}
!69 = !{i64 2154211176}
!70 = !{i64 2154211667}
!71 = !{i64 2154212158}
!72 = !{i64 2154212649}
!73 = !{i64 2154213137}
!74 = !{i64 2154213622}
!75 = !{i64 2154214110}
!76 = !{i64 2154214595}
!77 = !{i64 2154215086}
!78 = !{i64 2154215577}
!79 = !{i64 2154216068}
!80 = !{i64 2154216556}
!81 = !{i64 2154217041}
!82 = !{i64 2154217529}
!83 = !{i64 2154218014}
!84 = !{i64 2154218505}
!85 = !{i64 2154218991}
!86 = !{i64 2154228612}
!87 = !{i64 2154229171}
!88 = !{i64 2154229716}
!89 = !{i64 2154230308}
!90 = !{i64 2154230786}
!91 = !{i64 2154231292}
!92 = !{i64 2154231787}
!93 = !{i64 2154232286}
!94 = !{i64 2154232774}
!95 = !{i64 2154233259}
!96 = !{i64 2154233750}
!97 = !{i64 2154234240}
!98 = !{i64 2154234729}
!99 = !{i64 2154235220}
!100 = !{i64 2154235711}
!101 = !{i64 2154236202}
!102 = !{i64 2154236699}
!103 = !{i64 2154237202}
!104 = !{i64 2154237693}
!105 = !{i64 2154238184}
!106 = !{i64 2154238700}
!107 = !{i64 2154240212}
!108 = !{i64 2154240698}
!109 = !{i64 2154241179}
!110 = !{i64 2154241670}
!111 = !{i64 2154242159}
!112 = !{i64 2154242646}
!113 = !{i64 2154244275}
!114 = !{i64 2154244791}
!115 = !{i64 2154245339}
!116 = !{i64 2154245834}
!117 = !{i64 2154246333}
!118 = !{i64 2154246821}
!119 = !{i64 2154247306}
!120 = !{i64 2154247797}
!121 = !{i64 2154248287}
!122 = !{i64 2154248776}
!123 = !{i64 2154249262}
!124 = !{i64 2154249738}
!125 = !{i64 2154250214}
!126 = !{i64 2154250720}
!127 = !{i64 2154251279}
!128 = !{i64 2154251824}
!129 = !{i64 2154252346}
!130 = !{i64 2154255797}
!131 = !{i64 2154256283}
!132 = !{i64 2154257202}
!133 = !{i64 2154257541}
!134 = !{i64 2154253251}
!135 = !{i64 2154253523}
