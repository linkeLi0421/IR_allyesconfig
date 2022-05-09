; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dt2814.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dt2814.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_dt2814__234_367_dt2814_driver_init6 = internal global ptr @dt2814_driver_init, section ".initcall6.init", align 4
@dt2814_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @dt2814_attach, ptr @dt2814_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_dt2814_driver_exit = internal global ptr @dt2814_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"dt2814.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [43 x i8] c"dt2814.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"dt2814.file=drivers/comedi/drivers/dt2814\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"dt2814.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2814\00", [25 x i8] zeroinitializer }, align 32
@dt2814_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reset error (fatal)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dt2814_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/dt2814.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dt2814_attach._entry_ptr = internal global ptr @dt2814_attach._entry, section ".printk_index", align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@dt2814_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spurious interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dt2814_interrupt\00", [47 x i8] zeroinitializer }, align 32
@dt2814_interrupt._entry_ptr = internal global ptr @dt2814_interrupt._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"dt2814_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 361, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 362, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 314, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [35 x i8] c"../drivers/comedi/drivers/dt2814.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 250, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_dt2814_driver_exit, ptr @__initcall__kmod_dt2814__234_367_dt2814_driver_init6, ptr @dt2814_attach._entry, ptr @dt2814_attach._entry_ptr, ptr @dt2814_driver_exit, ptr @dt2814_interrupt._entry, ptr @dt2814_interrupt._entry_ptr, ptr @dt2814_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2814_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2814_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2814_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @dt2814_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt2814_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_driver_unregister(ptr noundef nonnull @dt2814_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #7, !srcloc !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status.i, align 4
  %6 = ptrtoint ptr %status.i to i32
  %call.i = call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @dt2814_ai_notbusy, i32 noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end8

if.end.i:                                         ; preds = %do.body
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  %and.i = and i32 %8, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end9_crit_edge, label %if.then2.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add.i = add i32 %10, 1
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %11 = inttoptr i32 %add4.i to ptr
  %12 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add9.i = add i32 %14, 1
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %15 = inttoptr i32 %add11.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  br label %if.end9

do.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end9:                                          ; preds = %if.then2.i, %if.end.i.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  %arrayidx11 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %if.end9.if.end21_crit_edge, label %if.then13

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13:                                        ; preds = %if.end9
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %21 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board_name, align 4
  %call.i61 = call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @dt2814_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %22, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp = icmp eq i32 %call.i61, 0
  br i1 %cmp, label %if.then17, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then13.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %call22 = call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %26 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 4
  %29 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %n_chan, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 18
  %31 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dt2814_ai_insn_read, ptr %insn_read, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 13
  %32 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4095, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 15
  %33 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @range_unknown, ptr %range_table, align 4
  %irq27 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %34 = ptrtoint ptr %irq27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool28.not = icmp eq i32 %35, 0
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.then29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %36 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %27, ptr %read_subdev, align 4
  %37 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %38, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 5
  %39 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 22
  %40 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dt2814_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 23
  %41 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @dt2814_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 25
  %42 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dt2814_ai_cancel, ptr %cancel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dt2814_detach(ptr noundef %dev) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status.i, align 4
  %3 = ptrtoint ptr %status.i to i32
  %call.i = call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @dt2814_ai_notbusy, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dt2814_ai_clear.exit_crit_edge

if.then.dt2814_ai_clear.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ai_clear.exit

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.i, align 4
  %and.i = and i32 %5, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.dt2814_ai_clear.exit_crit_edge, label %if.then2.i

if.end.i.dt2814_ai_clear.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ai_clear.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 1
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %8 = inttoptr i32 %add4.i to ptr
  %9 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add9.i = add i32 %11, 1
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %12 = inttoptr i32 %add11.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  br label %dt2814_ai_clear.exit

dt2814_ai_clear.exit:                             ; preds = %if.then2.i, %if.end.i.dt2814_ai_clear.exit_crit_edge, %if.then.dt2814_ai_clear.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %if.end

if.end:                                           ; preds = %dt2814_ai_clear.exit, %entry.if.end_crit_edge
  call void @comedi_legacy_detach(ptr noundef %dev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %2 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %3 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %async1, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %and = and i32 %8, 1048575
  %add2 = or i32 %and, -18874368
  %9 = inttoptr i32 %add2 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %conv = zext i8 %10 to i32
  %and4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add16 = add i32 %12, 1
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %13 = inttoptr i32 %add18 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %conv22 = zext i8 %14 to i16
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add25 = add i32 %16, 1
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %17 = inttoptr i32 %add27 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %shl = shl nuw nsw i16 %conv22, 4
  %19 = lshr i8 %18, 4
  %shr = zext i8 %19 to i16
  %or = or i16 %shl, %shr
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or, ptr %data, align 2
  %and33 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else, label %if.end13.if.end46.sink.split_crit_edge

if.end13.if.end46.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split

if.else:                                          ; preds = %if.end13
  %call37 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 1) #7
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 10
  %21 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp = icmp eq i32 %22, 32
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %if.else
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 11
  %23 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 11
  %25 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp40.not = icmp ult i32 %24, %26
  br i1 %cmp40.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true.if.end46.sink.split_crit_edge

land.lhs.true.if.end46.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46.sink.split:                              ; preds = %land.lhs.true.if.end46.sink.split_crit_edge, %if.end13.if.end46.sink.split_crit_edge
  %.sink91 = phi i32 [ 16, %if.end13.if.end46.sink.split_crit_edge ], [ 2, %land.lhs.true.if.end46.sink.split_crit_edge ]
  %events = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 16
  %27 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %events, align 4
  %or44 = or i32 %28, %.sink91
  store i32 %or44, ptr %events, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %land.lhs.true.if.end46_crit_edge, %if.else.if.end46_crit_edge
  %events47 = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 16
  %29 = ptrtoint ptr %events47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events47, align 4
  %and48 = and i32 %30, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end61_crit_edge, label %do.body51

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.body51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @arm_heavy_mb() #7
  %and54 = and i8 %10, 15
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %and58 = and i32 %32, 1048575
  %add59 = or i32 %and58, -18874368
  %33 = inttoptr i32 %add59 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %and54) #7, !srcloc !37
  br label %if.end61

if.end61:                                         ; preds = %do.body51, %if.end46.if.end61_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  %call63 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then11, %if.then6, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status.i, align 4
  %1 = ptrtoint ptr %status.i to i32
  %call.i = call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @dt2814_ai_notbusy, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.dt2814_ai_clear.exit_crit_edge

entry.dt2814_ai_clear.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ai_clear.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status.i, align 4
  %and.i = and i32 %3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.dt2814_ai_clear.exit_crit_edge, label %if.then2.i

if.end.i.dt2814_ai_clear.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ai_clear.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 1
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %6 = inttoptr i32 %add4.i to ptr
  %7 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add9.i = add i32 %9, 1
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %10 = inttoptr i32 %add11.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  br label %dt2814_ai_clear.exit

dt2814_ai_clear.exit:                             ; preds = %if.then2.i, %if.end.i.dt2814_ai_clear.exit_crit_edge, %entry.dt2814_ai_clear.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %n1 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp36.not = icmp eq i32 %13, 0
  br i1 %cmp36.not, label %dt2814_ai_clear.exit.cleanup_crit_edge, label %for.body.lr.ph

dt2814_ai_clear.exit.cleanup_crit_edge:           ; preds = %dt2814_ai_clear.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %dt2814_ai_clear.exit
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %n.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chanspec, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @arm_heavy_mb() #7
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %and2 = and i32 %17, 1048575
  %add3 = or i32 %and2, -18874368
  %18 = inttoptr i32 %add3 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv) #7, !srcloc !37
  %call5 = call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @dt2814_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add7 = add i32 %20, 1
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %21 = inttoptr i32 %add9 to ptr
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %conv12 = zext i8 %22 to i32
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add15 = add i32 %24, 1
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %25 = inttoptr i32 %add17 to ptr
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %shl = shl nuw nsw i32 %conv12, 4
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i32
  %or = or i32 %shl, %28
  %arrayidx = getelementptr i32, ptr %data, i32 %n.037
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %arrayidx, align 4
  %inc = add nuw i32 %n.037, 1
  %30 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n1, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %dt2814_ai_clear.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dt2814_ai_clear.exit.cleanup_crit_edge ], [ %inc, %if.end.cleanup_crit_edge ], [ %call5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_ai_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status.i, align 4
  %3 = ptrtoint ptr %status.i to i32
  %call.i = call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @dt2814_ai_notbusy, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.dt2814_ai_clear.exit_crit_edge

entry.dt2814_ai_clear.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ai_clear.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.i, align 4
  %and.i = and i32 %5, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.dt2814_ai_clear.exit_crit_edge, label %if.then2.i

if.end.i.dt2814_ai_clear.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ai_clear.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 1
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %8 = inttoptr i32 %add4.i to ptr
  %9 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add9.i = add i32 %11, 1
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %12 = inttoptr i32 %add11.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  br label %dt2814_ai_clear.exit

dt2814_ai_clear.exit:                             ; preds = %if.then2.i, %if.end.i.dt2814_ai_clear.exit_crit_edge, %entry.dt2814_ai_clear.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 5
  %14 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_begin_arg, align 4
  %mul.i = shl i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000, i32 %mul.i)
  %cmp2.i = icmp ult i32 %mul.i, 110000
  br i1 %cmp2.i, label %dt2814_ai_clear.exit.dt2814_ns_to_timer.exit_crit_edge, label %if.end.i10

dt2814_ai_clear.exit.dt2814_ns_to_timer.exit_crit_edge: ; preds = %dt2814_ai_clear.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.i10:                                       ; preds = %dt2814_ai_clear.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %mul.i)
  %cmp2.1.i = icmp ult i32 %mul.i, 1100000
  br i1 %cmp2.1.i, label %if.end.i10.dt2814_ns_to_timer.exit_crit_edge, label %if.end.1.i

if.end.i10.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.1.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11000000, i32 %mul.i)
  %cmp2.2.i = icmp ult i32 %mul.i, 11000000
  br i1 %cmp2.2.i, label %if.end.1.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.2.i

if.end.1.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000000, i32 %mul.i)
  %cmp2.3.i = icmp ult i32 %mul.i, 110000000
  br i1 %cmp2.3.i, label %if.end.2.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.3.i

if.end.2.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000000, i32 %mul.i)
  %cmp2.4.i = icmp ult i32 %mul.i, 1100000000
  br i1 %cmp2.4.i, label %if.end.3.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.4.i

if.end.3.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1884901888, i32 %mul.i)
  %cmp2.5.i = icmp ult i32 %mul.i, -1884901888
  br i1 %cmp2.5.i, label %if.end.4.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.5.i

if.end.4.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1669149696, i32 %mul.i)
  %cmp2.6.i = icmp ult i32 %mul.i, -1669149696
  %spec.select.i = select i1 %cmp2.6.i, i32 192, i32 256
  %spec.select3.i = select i1 %cmp2.6.i, i32 1410065408, i32 -727379968
  br label %dt2814_ns_to_timer.exit

dt2814_ns_to_timer.exit:                          ; preds = %if.end.5.i, %if.end.4.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.3.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.2.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.1.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.i10.dt2814_ns_to_timer.exit_crit_edge, %dt2814_ai_clear.exit.dt2814_ns_to_timer.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %dt2814_ai_clear.exit.dt2814_ns_to_timer.exit_crit_edge ], [ 32, %if.end.i10.dt2814_ns_to_timer.exit_crit_edge ], [ 64, %if.end.1.i.dt2814_ns_to_timer.exit_crit_edge ], [ 96, %if.end.2.i.dt2814_ns_to_timer.exit_crit_edge ], [ 128, %if.end.3.i.dt2814_ns_to_timer.exit_crit_edge ], [ 160, %if.end.4.i.dt2814_ns_to_timer.exit_crit_edge ], [ %spec.select.i, %if.end.5.i ]
  %f.0.lcssa.i = phi i32 [ 10000, %dt2814_ai_clear.exit.dt2814_ns_to_timer.exit_crit_edge ], [ 100000, %if.end.i10.dt2814_ns_to_timer.exit_crit_edge ], [ 1000000, %if.end.1.i.dt2814_ns_to_timer.exit_crit_edge ], [ 10000000, %if.end.2.i.dt2814_ns_to_timer.exit_crit_edge ], [ 100000000, %if.end.3.i.dt2814_ns_to_timer.exit_crit_edge ], [ 1000000000, %if.end.4.i.dt2814_ns_to_timer.exit_crit_edge ], [ %spec.select3.i, %if.end.5.i ]
  %16 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %f.0.lcssa.i, ptr %scan_begin_arg, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %17 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chanlist, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  call void @arm_heavy_mb() #7
  %or = or i32 %20, %i.0.lcssa.i
  %21 = trunc i32 %or to i8
  %conv = or i8 %21, 16
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %and4 = and i32 %23, 1048575
  %add5 = or i32 %and4, -18874368
  %24 = inttoptr i32 %add5 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv) #7, !srcloc !37
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dt2814_ai_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %and.i76 = and i32 %3, 16
  store i32 %and.i76, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %cmp.i77 = icmp ne i32 %and.i76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i76, i32 %3)
  %cmp1.not.i78 = icmp eq i32 %and.i76, %3
  %or.cond.i79 = and i1 %cmp.i77, %cmp1.not.i78
  %4 = select i1 %or.cond.i, i1 %or.cond.i79, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i81 = and i32 %6, 2
  store i32 %and.i81, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %cmp.i82 = icmp ne i32 %and.i81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i81, i32 %6)
  %cmp1.not.i83 = icmp eq i32 %and.i81, %6
  %or.cond.i84 = and i1 %cmp.i82, %cmp1.not.i83
  %7 = select i1 %4, i1 %or.cond.i84, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i86 = and i32 %9, 32
  store i32 %and.i86, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %cmp.i87 = icmp ne i32 %and.i86, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i86, i32 %9)
  %cmp1.not.i88 = icmp eq i32 %and.i86, %9
  %or.cond.i89 = and i1 %cmp.i87, %cmp1.not.i88
  %10 = select i1 %7, i1 %or.cond.i89, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i91 = and i32 %12, 33
  store i32 %and.i91, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %cmp.i92 = icmp ne i32 %and.i91, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i91, i32 %12)
  %cmp1.not.i93 = icmp eq i32 %and.i91, %12
  %or.cond.i94 = and i1 %cmp.i92, %cmp1.not.i93
  %13 = select i1 %10, i1 %or.cond.i94, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  br i1 %cmp.not.i, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i96 = icmp eq i32 %16, 0
  br i1 %cmp.not.i96, label %if.end14.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end14.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i97 = phi i32 [ -22, %if.then.i ], [ 0, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %19)
  %cmp.i98 = icmp ugt i32 %19, 1000000000
  br i1 %cmp.i98, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge, label %comedi_check_trigger_arg_max.exit

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit.sink.split

comedi_check_trigger_arg_max.exit:                ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %19)
  %cmp.i101 = icmp ult i32 %19, 100000
  br i1 %cmp.i101, label %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge, label %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge

comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit.sink.split

comedi_check_trigger_arg_min.exit.sink.split:     ; preds = %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge
  %.sink = phi i32 [ 1000000000, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge ], [ 100000, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge ]
  %or18124.ph = phi i32 [ -22, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge ], [ %retval.0.i97, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge ]
  %retval.0.i103.ph = phi i32 [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge ], [ -22, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit.sink.split_crit_edge ]
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %comedi_check_trigger_arg_min.exit.sink.split, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge
  %or18124 = phi i32 [ %retval.0.i97, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge ], [ %or18124.ph, %comedi_check_trigger_arg_min.exit.sink.split ]
  %retval.0.i103 = phi i32 [ 0, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge ], [ %retval.0.i103.ph, %comedi_check_trigger_arg_min.exit.sink.split ]
  %or21 = or i32 %retval.0.i103, %or18124
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %21 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chanlist_len, align 4
  %23 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.not.i104 = icmp eq i32 %24, %22
  br i1 %cmp.not.i104, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge, label %if.then.i105

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit107

if.then.i105:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit107

comedi_check_trigger_arg_is.exit107:              ; preds = %if.then.i105, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge
  %retval.0.i106 = phi i32 [ -22, %if.then.i105 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge ]
  %or23 = or i32 %or21, %retval.0.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %26 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stop_arg, align 4
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %comedi_check_trigger_arg_is.exit107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i108 = icmp ult i32 %27, 2
  br i1 %cmp.i108, label %if.then25.if.end31.sink.split_crit_edge, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25.if.end31.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i112 = icmp eq i32 %27, 0
  br i1 %cmp.not.i112, label %if.else.if.end31_crit_edge, label %if.else.if.end31.sink.split_crit_edge

if.else.if.end31.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31.sink.split:                              ; preds = %if.else.if.end31.sink.split_crit_edge, %if.then25.if.end31.sink.split_crit_edge
  %.sink127 = phi i32 [ 2, %if.then25.if.end31.sink.split_crit_edge ], [ 0, %if.else.if.end31.sink.split_crit_edge ]
  %28 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink127, ptr %stop_arg, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else.if.end31_crit_edge, %if.then25.if.end31_crit_edge
  %call26.pn = phi i32 [ 0, %if.then25.if.end31_crit_edge ], [ 0, %if.else.if.end31_crit_edge ], [ -22, %if.end31.sink.split ]
  %err.0 = or i32 %or23, %call26.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool32.not = icmp eq i32 %err.0, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %29 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_begin_arg, align 4
  %mul.i = shl i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000, i32 %mul.i)
  %cmp2.i = icmp ult i32 %mul.i, 110000
  br i1 %cmp2.i, label %if.end34.dt2814_ns_to_timer.exit_crit_edge, label %if.end.i

if.end34.dt2814_ns_to_timer.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %mul.i)
  %cmp2.1.i = icmp ult i32 %mul.i, 1100000
  br i1 %cmp2.1.i, label %if.end.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.1.i

if.end.i.dt2814_ns_to_timer.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11000000, i32 %mul.i)
  %cmp2.2.i = icmp ult i32 %mul.i, 11000000
  br i1 %cmp2.2.i, label %if.end.1.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.2.i

if.end.1.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000000, i32 %mul.i)
  %cmp2.3.i = icmp ult i32 %mul.i, 110000000
  br i1 %cmp2.3.i, label %if.end.2.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.3.i

if.end.2.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000000, i32 %mul.i)
  %cmp2.4.i = icmp ult i32 %mul.i, 1100000000
  br i1 %cmp2.4.i, label %if.end.3.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.4.i

if.end.3.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1884901888, i32 %mul.i)
  %cmp2.5.i = icmp ult i32 %mul.i, -1884901888
  br i1 %cmp2.5.i, label %if.end.4.i.dt2814_ns_to_timer.exit_crit_edge, label %if.end.5.i

if.end.4.i.dt2814_ns_to_timer.exit_crit_edge:     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt2814_ns_to_timer.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1669149696, i32 %mul.i)
  %cmp2.6.i = icmp ult i32 %mul.i, -1669149696
  %spec.select3.i = select i1 %cmp2.6.i, i32 1410065408, i32 -727379968
  br label %dt2814_ns_to_timer.exit

dt2814_ns_to_timer.exit:                          ; preds = %if.end.5.i, %if.end.4.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.3.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.2.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.1.i.dt2814_ns_to_timer.exit_crit_edge, %if.end.i.dt2814_ns_to_timer.exit_crit_edge, %if.end34.dt2814_ns_to_timer.exit_crit_edge
  %f.0.lcssa.i = phi i32 [ 10000, %if.end34.dt2814_ns_to_timer.exit_crit_edge ], [ 100000, %if.end.i.dt2814_ns_to_timer.exit_crit_edge ], [ 1000000, %if.end.1.i.dt2814_ns_to_timer.exit_crit_edge ], [ 10000000, %if.end.2.i.dt2814_ns_to_timer.exit_crit_edge ], [ 100000000, %if.end.3.i.dt2814_ns_to_timer.exit_crit_edge ], [ 1000000000, %if.end.4.i.dt2814_ns_to_timer.exit_crit_edge ], [ %spec.select3.i, %if.end.5.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %f.0.lcssa.i)
  %cmp.not.i116 = icmp eq i32 %30, %f.0.lcssa.i
  br i1 %cmp.not.i116, label %dt2814_ns_to_timer.exit.cleanup_crit_edge, label %comedi_check_trigger_arg_is.exit119

dt2814_ns_to_timer.exit.cleanup_crit_edge:        ; preds = %dt2814_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

comedi_check_trigger_arg_is.exit119:              ; preds = %dt2814_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %f.0.lcssa.i, ptr %scan_begin_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit119, %dt2814_ns_to_timer.exit.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end31.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit119 ], [ 0, %dt2814_ns_to_timer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_ai_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add5 = or i32 %and, -18874368
  %2 = inttoptr i32 %add5 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body11

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %and14 = and i8 %3, 15
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %and18 = and i32 %6, 1048575
  %add19 = or i32 %and18, -18874368
  %7 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %and14) #7, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %do.body11, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_ai_notbusy(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context)
  %tobool.not = icmp eq i32 %context, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = inttoptr i32 %context to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool4.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2814_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_dt2814__234_367_dt2814_driver_init6, !1, !"__initcall__kmod_dt2814__234_367_dt2814_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dt2814.c", i32 367, i32 1}
!2 = !{ptr @__exitcall_dt2814_driver_exit, !1, !"__exitcall_dt2814_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dt2814.c", i32 369, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dt2814.c", i32 370, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dt2814.c", i32 371, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dt2814.c", i32 362, i32 17}
!12 = !{ptr @dt2814_driver, !13, !"dt2814_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dt2814.c", i32 361, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/dt2814.c", i32 314, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dt2814_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dt2814_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/dt2814.c", i32 250, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dt2814_interrupt._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dt2814_interrupt._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2154205806}
!37 = !{i64 4622525}
!38 = !{i64 4622920}
!39 = !{i64 2154199696}
!40 = !{i64 2154199989}
!41 = !{i64 2154204616}
!42 = !{i64 2154204924}
!43 = !{i64 2154205217}
!44 = !{i64 2154205466}
!45 = !{i64 2154200539}
!46 = !{i64 2154200956}
!47 = !{i64 2154201249}
!48 = !{i64 2154201613}
!49 = !{i32 0, i32 33}
!50 = !{i64 2154202390}
!51 = !{i64 2154202628}
!52 = !{i64 2154199361}
!53 = !{i64 2154200282}
