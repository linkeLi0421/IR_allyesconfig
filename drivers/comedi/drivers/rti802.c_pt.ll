; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/rti802.c_pt.bc'
source_filename = "../drivers/comedi/drivers/rti802.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
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
%struct.rti802_private = type { [8 x i32], [8 x ptr] }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_rti802__229_116_rti802_driver_init6 = internal global ptr @rti802_driver_init, section ".initcall6.init", align 4
@rti802_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @rti802_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_rti802_driver_exit = internal global ptr @rti802_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [44 x i8] c"rti802.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [66 x i8] c"rti802.description=Comedi driver for Analog Devices RTI-802 board\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [42 x i8] c"rti802.file=drivers/comedi/drivers/rti802\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [19 x i8] c"rti802.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rti802\00", [25 x i8] zeroinitializer }, align 32
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"rti802_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 110, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../drivers/comedi/drivers/rti802.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 111, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_rti802_driver_exit, ptr @__initcall__kmod_rti802__229_116_rti802_driver_init6, ptr @rti802_driver_exit, ptr @rti802_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti802_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rti802_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @rti802_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rti802_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @comedi_driver_unregister(ptr noundef nonnull @rti802_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti802_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 64) #3
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 131072, ptr %subdev_flags, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4095, ptr %maxdata, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %n_chan, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rti802_ao_insn_write, ptr %insn_write, align 4
  %call10 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %range_type_list = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1
  %range_table_list = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %range_table_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %range_type_list, ptr %range_table_list, align 4
  %arrayidx15 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp ne i32 %11, 0
  %cond = zext i1 %tobool16.not to i32
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %call1, align 4
  %arrayidx21 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  %cond23 = select i1 %tobool22.not, ptr @range_bipolar10, ptr @range_unipolar10
  %15 = ptrtoint ptr %range_type_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond23, ptr %range_type_list, align 4
  %arrayidx15.1 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not.1 = icmp ne i32 %17, 0
  %cond.1 = zext i1 %tobool16.not.1 to i32
  %arrayidx17.1 = getelementptr [8 x i32], ptr %call1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.1, ptr %arrayidx17.1, align 4
  %arrayidx21.1 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx21.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not.1 = icmp eq i32 %20, 0
  %cond23.1 = select i1 %tobool22.not.1, ptr @range_bipolar10, ptr @range_unipolar10
  %arrayidx25.1 = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond23.1, ptr %arrayidx25.1, align 4
  %arrayidx15.2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 7
  %22 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not.2 = icmp ne i32 %23, 0
  %cond.2 = zext i1 %tobool16.not.2 to i32
  %arrayidx17.2 = getelementptr [8 x i32], ptr %call1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.2, ptr %arrayidx17.2, align 4
  %arrayidx21.2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx21.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not.2 = icmp eq i32 %26, 0
  %cond23.2 = select i1 %tobool22.not.2, ptr @range_bipolar10, ptr @range_unipolar10
  %arrayidx25.2 = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond23.2, ptr %arrayidx25.2, align 4
  %arrayidx15.3 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not.3 = icmp ne i32 %29, 0
  %cond.3 = zext i1 %tobool16.not.3 to i32
  %arrayidx17.3 = getelementptr [8 x i32], ptr %call1, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.3, ptr %arrayidx17.3, align 4
  %arrayidx21.3 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx21.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool22.not.3 = icmp eq i32 %32, 0
  %cond23.3 = select i1 %tobool22.not.3, ptr @range_bipolar10, ptr @range_unipolar10
  %arrayidx25.3 = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cond23.3, ptr %arrayidx25.3, align 4
  %arrayidx15.4 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 11
  %34 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool16.not.4 = icmp ne i32 %35, 0
  %cond.4 = zext i1 %tobool16.not.4 to i32
  %arrayidx17.4 = getelementptr [8 x i32], ptr %call1, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.4, ptr %arrayidx17.4, align 4
  %arrayidx21.4 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 10
  %37 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx21.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool22.not.4 = icmp eq i32 %38, 0
  %cond23.4 = select i1 %tobool22.not.4, ptr @range_bipolar10, ptr @range_unipolar10
  %arrayidx25.4 = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cond23.4, ptr %arrayidx25.4, align 4
  %arrayidx15.5 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 13
  %40 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool16.not.5 = icmp ne i32 %41, 0
  %cond.5 = zext i1 %tobool16.not.5 to i32
  %arrayidx17.5 = getelementptr [8 x i32], ptr %call1, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond.5, ptr %arrayidx17.5, align 4
  %arrayidx21.5 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 12
  %43 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx21.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool22.not.5 = icmp eq i32 %44, 0
  %cond23.5 = select i1 %tobool22.not.5, ptr @range_bipolar10, ptr @range_unipolar10
  %arrayidx25.5 = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1, i32 5
  %45 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cond23.5, ptr %arrayidx25.5, align 4
  %arrayidx15.6 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 15
  %46 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx15.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool16.not.6 = icmp ne i32 %47, 0
  %cond.6 = zext i1 %tobool16.not.6 to i32
  %arrayidx17.6 = getelementptr [8 x i32], ptr %call1, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond.6, ptr %arrayidx17.6, align 4
  %arrayidx21.6 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 14
  %49 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx21.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool22.not.6 = icmp eq i32 %50, 0
  %cond23.6 = select i1 %tobool22.not.6, ptr @range_bipolar10, ptr @range_unipolar10
  %arrayidx25.6 = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1, i32 6
  %51 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cond23.6, ptr %arrayidx25.6, align 4
  %arrayidx15.7 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 17
  %52 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx15.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool16.not.7 = icmp ne i32 %53, 0
  %cond.7 = zext i1 %tobool16.not.7 to i32
  %arrayidx17.7 = getelementptr [8 x i32], ptr %call1, i32 0, i32 7
  %54 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond.7, ptr %arrayidx17.7, align 4
  %arrayidx21.7 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 16
  %55 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx21.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool22.not.7 = icmp eq i32 %56, 0
  %cond23.7 = select i1 %tobool22.not.7, ptr @range_bipolar10, ptr @range_unipolar10
  %arrayidx25.7 = getelementptr %struct.rti802_private, ptr %call1, i32 0, i32 1, i32 7
  %57 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %cond23.7, ptr %arrayidx25.7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti802_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %conv = trunc i32 %3 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %and1 = and i32 %5, 1048575
  %add2 = or i32 %and1, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #3, !srcloc !24
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp43.not = icmp eq i32 %8, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %arrayidx5 = getelementptr [8 x i32], ptr %1, i32 0, i32 %and
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %do.body9.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body9.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.044
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %readback, align 4
  %arrayidx4 = getelementptr i32, ptr %12, i32 %and
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6 = icmp eq i32 %15, 0
  br i1 %cmp6, label %if.then, label %for.body.do.body9_crit_edge

for.body.do.body9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body9

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %17, %10
  %shr.i = lshr i32 %17, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %do.body9

do.body9:                                         ; preds = %if.then, %for.body.do.body9_crit_edge
  %val.0 = phi i32 [ %xor2.i, %if.then ], [ %10, %for.body.do.body9_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %conv13 = trunc i32 %val.0 to i8
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add15 = add i32 %19, 1
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %20 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv13) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %shr = lshr i32 %val.0, 8
  %conv23 = trunc i32 %shr to i8
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add25 = add i32 %22, 2
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %23 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv23) #3, !srcloc !24
  %inc = add nuw i32 %i.044, 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %do.body9.for.body_crit_edge, label %do.body9.for.end_crit_edge

do.body9.for.end_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.body9.for.body_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %do.body9.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %25, %do.body9.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_rti802__229_116_rti802_driver_init6, !1, !"__initcall__kmod_rti802__229_116_rti802_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/rti802.c", i32 116, i32 1}
!2 = !{ptr @__exitcall_rti802_driver_exit, !1, !"__exitcall_rti802_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/rti802.c", i32 118, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/rti802.c", i32 119, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/rti802.c", i32 120, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/rti802.c", i32 111, i32 17}
!12 = !{ptr @rti802_driver, !13, !"rti802_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/rti802.c", i32 110, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2153902470}
!24 = !{i64 6259594}
!25 = !{i64 2153902828}
!26 = !{i64 2153903193}
