; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/multiq3.c_pt.bc'
source_filename = "../drivers/comedi/drivers/multiq3.c"
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
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_multiq3__229_327_multiq3_driver_init6 = internal global ptr @multiq3_driver_init, section ".initcall6.init", align 4
@multiq3_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @multiq3_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_multiq3_driver_exit = internal global ptr @multiq3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [45 x i8] c"multiq3.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [72 x i8] c"multiq3.description=Comedi driver for Quanser Consulting MultiQ-3 board\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [44 x i8] c"multiq3.file=drivers/comedi/drivers/multiq3\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [20 x i8] c"multiq3.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"multiq3\00", [24 x i8] zeroinitializer }, align 32
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"multiq3_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 321, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [36 x i8] c"../drivers/comedi/drivers/multiq3.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 322, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_multiq3_driver_exit, ptr @__initcall__kmod_multiq3__229_327_multiq3_driver_init6, ptr @multiq3_driver_exit, ptr @multiq3_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multiq3_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @multiq3_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @multiq3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_driver_unregister(ptr noundef nonnull @multiq3_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8191, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @range_bipolar5, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @multiq3_ai_insn_read, ptr %insn_read, align 4
  %10 = load ptr, ptr %subdevices, align 4
  %arrayidx7 = getelementptr %struct.comedi_subdevice, ptr %10, i32 1
  %type8 = getelementptr %struct.comedi_subdevice, ptr %10, i32 1, i32 2
  %11 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %type8, align 4
  %subdev_flags9 = getelementptr %struct.comedi_subdevice, ptr %10, i32 1, i32 4
  %12 = ptrtoint ptr %subdev_flags9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 131072, ptr %subdev_flags9, align 4
  %n_chan10 = getelementptr %struct.comedi_subdevice, ptr %10, i32 1, i32 3
  %13 = ptrtoint ptr %n_chan10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %n_chan10, align 4
  %maxdata11 = getelementptr %struct.comedi_subdevice, ptr %10, i32 1, i32 13
  %14 = ptrtoint ptr %maxdata11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4095, ptr %maxdata11, align 4
  %range_table12 = getelementptr %struct.comedi_subdevice, ptr %10, i32 1, i32 15
  %15 = ptrtoint ptr %range_table12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @range_bipolar5, ptr %range_table12, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %10, i32 1, i32 19
  %16 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @multiq3_ao_insn_write, ptr %insn_write, align 4
  %call13 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %17 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subdevices, align 4
  %type19 = getelementptr %struct.comedi_subdevice, ptr %18, i32 2, i32 2
  %19 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %type19, align 4
  %subdev_flags20 = getelementptr %struct.comedi_subdevice, ptr %18, i32 2, i32 4
  %20 = ptrtoint ptr %subdev_flags20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65536, ptr %subdev_flags20, align 4
  %n_chan21 = getelementptr %struct.comedi_subdevice, ptr %18, i32 2, i32 3
  %21 = ptrtoint ptr %n_chan21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %n_chan21, align 4
  %maxdata22 = getelementptr %struct.comedi_subdevice, ptr %18, i32 2, i32 13
  %22 = ptrtoint ptr %maxdata22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %maxdata22, align 4
  %range_table23 = getelementptr %struct.comedi_subdevice, ptr %18, i32 2, i32 15
  %23 = ptrtoint ptr %range_table23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @range_unipolar5, ptr %range_table23, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %18, i32 2, i32 20
  %24 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @multiq3_di_insn_bits, ptr %insn_bits, align 4
  %25 = load ptr, ptr %subdevices, align 4
  %type26 = getelementptr %struct.comedi_subdevice, ptr %25, i32 3, i32 2
  %26 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %type26, align 4
  %subdev_flags27 = getelementptr %struct.comedi_subdevice, ptr %25, i32 3, i32 4
  %27 = ptrtoint ptr %subdev_flags27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 131072, ptr %subdev_flags27, align 4
  %n_chan28 = getelementptr %struct.comedi_subdevice, ptr %25, i32 3, i32 3
  %28 = ptrtoint ptr %n_chan28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %n_chan28, align 4
  %maxdata29 = getelementptr %struct.comedi_subdevice, ptr %25, i32 3, i32 13
  %29 = ptrtoint ptr %maxdata29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %maxdata29, align 4
  %range_table30 = getelementptr %struct.comedi_subdevice, ptr %25, i32 3, i32 15
  %30 = ptrtoint ptr %range_table30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @range_unipolar5, ptr %range_table30, align 4
  %insn_bits31 = getelementptr %struct.comedi_subdevice, ptr %25, i32 3, i32 20
  %31 = ptrtoint ptr %insn_bits31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @multiq3_do_insn_bits, ptr %insn_bits31, align 4
  %32 = load ptr, ptr %subdevices, align 4
  %type34 = getelementptr %struct.comedi_subdevice, ptr %32, i32 4, i32 2
  %33 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %type34, align 4
  %subdev_flags35 = getelementptr %struct.comedi_subdevice, ptr %32, i32 4, i32 4
  %34 = ptrtoint ptr %subdev_flags35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 268500992, ptr %subdev_flags35, align 4
  %arrayidx37 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx37, align 4
  %mul = shl i32 %36, 1
  %n_chan38 = getelementptr %struct.comedi_subdevice, ptr %32, i32 4, i32 3
  %37 = ptrtoint ptr %n_chan38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul, ptr %n_chan38, align 4
  %maxdata39 = getelementptr %struct.comedi_subdevice, ptr %32, i32 4, i32 13
  %38 = ptrtoint ptr %maxdata39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16777215, ptr %maxdata39, align 4
  %range_table40 = getelementptr %struct.comedi_subdevice, ptr %32, i32 4, i32 15
  %39 = ptrtoint ptr %range_table40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @range_unknown, ptr %range_table40, align 4
  %insn_read41 = getelementptr %struct.comedi_subdevice, ptr %32, i32 4, i32 18
  %40 = ptrtoint ptr %insn_read41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @multiq3_encoder_insn_read, ptr %insn_read41, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %32, i32 4, i32 21
  %41 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @multiq3_encoder_insn_config, ptr %insn_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp92 = icmp sgt i32 %mul, 0
  br i1 %cmp92, label %if.end16.for.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  tail call fastcc void @multiq3_encoder_reset(ptr noundef %dev, i32 noundef %i.093)
  %inc = add nuw nsw i32 %i.093, 1
  %42 = ptrtoint ptr %n_chan38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_chan38, align 4
  %cmp = icmp slt i32 %inc, %43
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call13, %if.end4.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %.tr = trunc i32 %1 to i16
  %2 = shl i16 %.tr, 3
  %3 = and i16 %2, 56
  %conv.i = or i16 %3, 1600
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %6, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 %4) #4, !srcloc !24
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @multiq3_ai_status, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp51.not = icmp eq i32 %9, 0
  br i1 %cmp51.not, label %for.cond.preheader.cleanup_crit_edge, label %do.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %do.body.lr.ph
  %i.052 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end8.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add = add i32 %11, 4
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %12 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #4, !srcloc !24
  %call5 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @multiq3_ai_status, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %do.body
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add10 = add i32 %14, 4
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %15 = inttoptr i32 %add12 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %conv = zext i8 %16 to i32
  %shl15 = shl nuw nsw i32 %conv, 8
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add18 = add i32 %18, 4
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %19 = inttoptr i32 %add20 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %conv24 = zext i8 %20 to i32
  %or25 = or i32 %shl15, %conv24
  %21 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxdata, align 4
  %23 = xor i32 %or25, -1
  %xor.i = and i32 %22, %23
  %shr.i = lshr i32 %22, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.052
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %xor2.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.052, 1
  %25 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %if.end8.do.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call5, %do.body.cleanup_crit_edge ], [ %26, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22.not = icmp eq i32 %7, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = trunc i32 %1 to i16
  %9 = and i16 %8, 7
  %conv.i = or i16 %9, 7680
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.023
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %14, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %10) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %12 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add = add i32 %18, 2
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %19 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %16) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add.i19 = add i32 %21, 6
  %and.i20 = and i32 %add.i19, 1048575
  %add1.i21 = or i32 %and.i20, -18874368
  %22 = inttoptr i32 %add1.i21 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 6) #4, !srcloc !24
  %inc = add nuw i32 %i.023, 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %12, %for.body.for.end_crit_edge ]
  %25 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %readback, align 4
  %arrayidx6 = getelementptr i32, ptr %26, i32 %and
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %val.0.lcssa, ptr %arrayidx6, align 4
  %28 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n, align 4
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !30
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %conv = zext i16 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
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
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #4, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_encoder_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp57.not = icmp eq i32 %1, 0
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %.tr = trunc i32 %3 to i16
  %4 = shl i16 %.tr, 3
  %5 = and i16 %4, 56
  %conv.i = or i16 %5, 1600
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add = add i32 %11, 14
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %12 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 1) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add8 = add i32 %14, 14
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %15 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 16) #4, !srcloc !34
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i, align 4
  %add13 = add i32 %17, 12
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %18 = inttoptr i32 %add15 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add20 = add i32 %21, 12
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %22 = inttoptr i32 %add22 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %conv26 = zext i8 %23 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %or28 = or i32 %shl27, %conv
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add31 = add i32 %25, 12
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %26 = inttoptr i32 %add33 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %conv37 = zext i8 %27 to i32
  %shl38 = shl nuw nsw i32 %conv37, 16
  %or39 = or i32 %or28, %shl38
  %28 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxdata, align 4
  %add40 = add i32 %29, 1
  %shr = lshr i32 %add40, 1
  %add41 = add nuw i32 %or39, %shr
  %and43 = and i32 %add41, %29
  %arrayidx = getelementptr i32, ptr %data, i32 %i.058
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and43, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.058, 1
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %32, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_encoder_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %1)
  %cond = icmp eq i32 %1, 34
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  tail call fastcc void @multiq3_encoder_reset(ptr noundef %dev, i32 noundef %and)
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @multiq3_encoder_reset(ptr nocapture noundef readonly %dev, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %chan.tr = trunc i32 %chan to i16
  %0 = shl i16 %chan.tr, 3
  %1 = and i16 %0, 56
  %conv.i = or i16 %1, 1600
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %4, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add = add i32 %7, 14
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 6) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add6 = add i32 %10, 14
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add13 = add i32 %13, 12
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %14 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add20 = add i32 %16, 14
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %17 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 24) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add27 = add i32 %19, 14
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %20 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 65) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i, align 4
  %add34 = add i32 %22, 14
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %23 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 56) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add41 = add i32 %25, 14
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %26 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 2) #4, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq3_ai_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !30
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %conv = zext i16 %4 to i32
  %and3 = and i32 %conv, %context
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_multiq3__229_327_multiq3_driver_init6, !1, !"__initcall__kmod_multiq3__229_327_multiq3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/multiq3.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_multiq3_driver_exit, !1, !"__exitcall_multiq3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/multiq3.c", i32 329, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/multiq3.c", i32 330, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/multiq3.c", i32 331, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/multiq3.c", i32 322, i32 17}
!12 = !{ptr @multiq3_driver, !13, !"multiq3_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/multiq3.c", i32 321, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2153908875}
!24 = !{i64 6265343}
!25 = !{i64 2153910387}
!26 = !{i64 6266161}
!27 = !{i64 2153910989}
!28 = !{i64 2153911291}
!29 = !{i64 2153911615}
!30 = !{i64 6265543}
!31 = !{i64 2153912524}
!32 = !{i64 2153912789}
!33 = !{i64 2153913387}
!34 = !{i64 6265766}
!35 = !{i64 2153913744}
!36 = !{i64 2153914173}
!37 = !{i64 2153914475}
!38 = !{i64 2153914777}
!39 = !{i64 2153915113}
!40 = !{i64 2153915470}
!41 = !{i64 2153915827}
!42 = !{i64 2153916184}
!43 = !{i64 2153916541}
!44 = !{i64 2153916898}
!45 = !{i64 2153917255}
!46 = !{i64 2153909908}
