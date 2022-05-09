; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/aio_aio12_8.c_pt.bc'
source_filename = "../drivers/comedi/drivers/aio_aio12_8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.aio12_8_boardtype = type { ptr, i8 }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }

@__initcall__kmod_aio_aio12_8__229_272_aio_aio12_8_driver_init6 = internal global ptr @aio_aio12_8_driver_init, section ".initcall6.init", align 4
@aio_aio12_8_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @aio_aio12_8_attach, ptr @comedi_legacy_detach, ptr null, i32 3, ptr @board_types, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_aio_aio12_8_driver_exit = internal global ptr @aio_aio12_8_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [49 x i8] c"aio_aio12_8.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [78 x i8] c"aio_aio12_8.description=Comedi driver for Access I/O AIO12-8 Analog I/O Board\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [52 x i8] c"aio_aio12_8.file=drivers/comedi/drivers/aio_aio12_8\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"aio_aio12_8.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aio_aio12_8\00", [20 x i8] zeroinitializer }, align 32
@board_types = internal constant { [3 x %struct.aio12_8_boardtype], [40 x i8] } { [3 x %struct.aio12_8_boardtype] [%struct.aio12_8_boardtype { ptr @.str, i8 -64 }, %struct.aio12_8_boardtype { ptr @.str.2, i8 -128 }, %struct.aio12_8_boardtype { ptr @.str.3, i8 64 }], [40 x i8] zeroinitializer }, align 32
@aio_aio12_8_range = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aio_ai12_8\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aio_ao12_4\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"aio_aio12_8_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 263, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 264, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"board_types\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 84, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"aio_aio12_8_range\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 69, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 90, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [40 x i8] c"../drivers/comedi/drivers/aio_aio12_8.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 93, i32 12 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_aio_aio12_8_driver_exit, ptr @__initcall__kmod_aio_aio12_8__229_272_aio_aio12_8_driver_init6, ptr @aio_aio12_8_driver_exit, ptr @aio_aio12_8_driver, ptr @.str, ptr @board_types, ptr @aio_aio12_8_range, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_aio12_8_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_types to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_aio12_8_range to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_aio12_8_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @aio_aio12_8_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aio_aio12_8_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_driver_unregister(ptr noundef nonnull @aio_aio12_8_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_aio12_8_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 12
  %call1 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %pacer, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %7 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subdevices, align 4
  %has_ai = getelementptr inbounds %struct.aio12_8_boardtype, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %has_ai to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %has_ai, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool11.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 4
  %10 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 13
  %12 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4095, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 15
  %13 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @aio_aio12_8_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 18
  %14 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @aio_aio12_8_ai_read, ptr %insn_read, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %.sink = phi i32 [ 1, %if.then12 ], [ 0, %if.end9.if.end14_crit_edge ]
  %15 = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 4
  %17 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subdevices, align 4
  %19 = ptrtoint ptr %has_ai to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load17 = load i8, ptr %has_ai, align 4
  %20 = and i8 %bf.load17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not = icmp eq i8 %20, 0
  br i1 %tobool20.not, label %if.else31, label %if.then21

if.then21:                                        ; preds = %if.end14
  %arrayidx16 = getelementptr %struct.comedi_subdevice, ptr %18, i32 1
  %type22 = getelementptr %struct.comedi_subdevice, ptr %18, i32 1, i32 2
  %21 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %type22, align 4
  %subdev_flags23 = getelementptr %struct.comedi_subdevice, ptr %18, i32 1, i32 4
  %22 = ptrtoint ptr %subdev_flags23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1179648, ptr %subdev_flags23, align 4
  %n_chan24 = getelementptr %struct.comedi_subdevice, ptr %18, i32 1, i32 3
  %23 = ptrtoint ptr %n_chan24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %n_chan24, align 4
  %maxdata25 = getelementptr %struct.comedi_subdevice, ptr %18, i32 1, i32 13
  %24 = ptrtoint ptr %maxdata25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4095, ptr %maxdata25, align 4
  %range_table26 = getelementptr %struct.comedi_subdevice, ptr %18, i32 1, i32 15
  %25 = ptrtoint ptr %range_table26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @aio_aio12_8_range, ptr %range_table26, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %18, i32 1, i32 19
  %26 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @aio_aio12_8_ao_insn_write, ptr %insn_write, align 4
  %call27 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then21.if.end33_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21.if.end33_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.else31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %type32 = getelementptr %struct.comedi_subdevice, ptr %18, i32 1, i32 2
  %27 = ptrtoint ptr %type32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %type32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then21.if.end33_crit_edge
  %28 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subdevices, align 4
  %arrayidx35 = getelementptr %struct.comedi_subdevice, ptr %29, i32 2
  %call36 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx35, ptr noundef null, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %subdevices, align 4
  %arrayidx41 = getelementptr %struct.comedi_subdevice, ptr %31, i32 3
  %32 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx41, ptr noundef %33) #5
  %34 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pacer, align 4
  %insn_config = getelementptr inbounds %struct.comedi_8254, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @aio_aio12_8_counter_insn_config, ptr %insn_config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end33.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call27, %if.then21.cleanup_crit_edge ], [ %call36, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_aio12_8_ai_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %shl = shl nuw nsw i32 %shr, 3
  %or4 = or i32 %shl, %1
  %conv = trunc i32 %or4 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and5 = and i32 %3, 1048575
  %add6 = or i32 %and5, -18874368
  %4 = inttoptr i32 %add6 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp50.not = icmp eq i32 %7, 0
  br i1 %cmp50.not, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %do.body.lr.ph
  %i.051 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add10 = add i32 %9, 2
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %10 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #5, !srcloc !34
  %call14 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @aio_aio12_8_ai_eoc, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add17 = add i32 %12, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %13 = inttoptr i32 %add19 to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #5, !srcloc !35
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %conv23 = zext i16 %15 to i32
  %16 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxdata, align 4
  %and24 = and i32 %17, %conv23
  %18 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %19, i32 0, i32 1, i32 %and2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp slt i32 %21, 0
  %xor.i = xor i32 %and24, %17
  %shr.i = lshr i32 %17, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %val.0 = select i1 %cmp.i, i32 %xor2.i, i32 %and24
  %arrayidx = getelementptr i32, ptr %data, i32 %i.051
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val.0, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.051, 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %24, %if.end.cleanup_crit_edge ], [ %call14, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_aio12_8_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %2 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 24
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 1) #5, !srcloc !34
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp25.not = icmp eq i32 %10, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nuw nsw i32 %and, 1
  %add8 = add nuw nsw i32 %mul, 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %data, i32 %i.026
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add9 = add i32 %add8, %15
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %16 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 %13) #5, !srcloc !39
  %inc = add nuw i32 %i.026, 1
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %12, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %readback, align 4
  %arrayidx14 = getelementptr i32, ptr %20, i32 %and
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %val.0.lcssa, ptr %arrayidx14, align 4
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aio_aio12_8_counter_insn_config(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2004, i32 %1)
  %cond3 = icmp eq i32 %1, 2004
  br i1 %cond3, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond = select i1 %cmp, i32 1000, i32 0
  %arrayidx2 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %arrayidx2, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_aio12_8_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_aio_aio12_8__229_272_aio_aio12_8_driver_init6, !1, !"__initcall__kmod_aio_aio12_8__229_272_aio_aio12_8_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 272, i32 1}
!2 = !{ptr @__exitcall_aio_aio12_8_driver_exit, !1, !"__exitcall_aio_aio12_8_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 274, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 275, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 276, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 264, i32 17}
!12 = !{ptr @aio_aio12_8_driver, !13, !"aio_aio12_8_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 263, i32 29}
!14 = !{ptr @aio_aio12_8_range, !15, !"aio_aio12_8_range", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 69, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 90, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 93, i32 12}
!20 = !{ptr @board_types, !21, !"board_types", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/aio_aio12_8.c", i32 84, i32 39}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 6264318}
!32 = !{i64 2153913183}
!33 = !{i64 2153913411}
!34 = !{i64 6263923}
!35 = !{i64 6263700}
!36 = !{i64 2153914225}
!37 = !{i64 2153914585}
!38 = !{i64 2153915006}
!39 = !{i64 6263500}
!40 = !{i64 2153912616}
