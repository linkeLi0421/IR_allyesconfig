; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/s526.c_pt.bc'
source_filename = "../drivers/comedi/drivers/s526.c"
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
%struct.s526_private = type { [4 x i32], i16 }

@__initcall__kmod_s526__229_625_s526_driver_init6 = internal global ptr @s526_driver_init, section ".initcall6.init", align 4
@s526_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @s526_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_s526_driver_exit = internal global ptr @s526_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [42 x i8] c"s526.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [41 x i8] c"s526.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [38 x i8] c"s526.file=drivers/comedi/drivers/s526\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [17 x i8] c"s526.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"s526\00", [27 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1001, i64 1002, i64 1003]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1001, i64 1002, i64 1003]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"s526_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 619, i32 29 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [33 x i8] c"../drivers/comedi/drivers/s526.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 620, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_s526_driver_exit, ptr @__initcall__kmod_s526__229_625_s526_driver_init6, ptr @s526_driver_exit, ptr @s526_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s526_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @s526_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s526_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_driver_unregister(ptr noundef nonnull @s526_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 20) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 268632064, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777215, ptr %maxdata, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @s526_gpct_rinsn, ptr %insn_read, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @s526_gpct_insn_config, ptr %insn_config, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @s526_gpct_winsn, ptr %insn_write, align 4
  %11 = load ptr, ptr %subdevices, align 4
  %type12 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 2
  %12 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type12, align 4
  %subdev_flags13 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 4
  %13 = ptrtoint ptr %subdev_flags13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4259840, ptr %subdev_flags13, align 4
  %n_chan14 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 3
  %14 = ptrtoint ptr %n_chan14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %n_chan14, align 4
  %maxdata15 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 13
  %15 = ptrtoint ptr %maxdata15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65535, ptr %maxdata15, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 15
  %16 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @range_bipolar10, ptr %range_table, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 5
  %17 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %len_chanlist, align 4
  %insn_read16 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 18
  %18 = ptrtoint ptr %insn_read16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @s526_ai_insn_read, ptr %insn_read16, align 4
  %19 = load ptr, ptr %subdevices, align 4
  %arrayidx18 = getelementptr %struct.comedi_subdevice, ptr %19, i32 2
  %type19 = getelementptr %struct.comedi_subdevice, ptr %19, i32 2, i32 2
  %20 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %type19, align 4
  %subdev_flags20 = getelementptr %struct.comedi_subdevice, ptr %19, i32 2, i32 4
  %21 = ptrtoint ptr %subdev_flags20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 131072, ptr %subdev_flags20, align 4
  %n_chan21 = getelementptr %struct.comedi_subdevice, ptr %19, i32 2, i32 3
  %22 = ptrtoint ptr %n_chan21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %n_chan21, align 4
  %maxdata22 = getelementptr %struct.comedi_subdevice, ptr %19, i32 2, i32 13
  %23 = ptrtoint ptr %maxdata22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65535, ptr %maxdata22, align 4
  %range_table23 = getelementptr %struct.comedi_subdevice, ptr %19, i32 2, i32 15
  %24 = ptrtoint ptr %range_table23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @range_bipolar10, ptr %range_table23, align 4
  %insn_write24 = getelementptr %struct.comedi_subdevice, ptr %19, i32 2, i32 19
  %25 = ptrtoint ptr %insn_write24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @s526_ao_insn_write, ptr %insn_write24, align 4
  %call25 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdevices, align 4
  %type31 = getelementptr %struct.comedi_subdevice, ptr %27, i32 3, i32 2
  %28 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %type31, align 4
  %subdev_flags32 = getelementptr %struct.comedi_subdevice, ptr %27, i32 3, i32 4
  %29 = ptrtoint ptr %subdev_flags32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196608, ptr %subdev_flags32, align 4
  %n_chan33 = getelementptr %struct.comedi_subdevice, ptr %27, i32 3, i32 3
  %30 = ptrtoint ptr %n_chan33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %n_chan33, align 4
  %maxdata34 = getelementptr %struct.comedi_subdevice, ptr %27, i32 3, i32 13
  %31 = ptrtoint ptr %maxdata34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %maxdata34, align 4
  %range_table35 = getelementptr %struct.comedi_subdevice, ptr %27, i32 3, i32 15
  %32 = ptrtoint ptr %range_table35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @range_unipolar5, ptr %range_table35, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %27, i32 3, i32 20
  %33 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @s526_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config36 = getelementptr %struct.comedi_subdevice, ptr %27, i32 3, i32 21
  %34 = ptrtoint ptr %insn_config36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @s526_dio_insn_config, ptr %insn_config36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call25, %if.end8.cleanup_crit_edge ]
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
define internal i32 @s526_gpct_rinsn(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %and = shl i32 %3, 3
  %mul.i = and i32 %and, 524280
  %add.i = add nuw nsw i32 %mul.i, 18
  %add8.i = add nuw nsw i32 %mul.i, 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add1.i = add i32 %add.i, %5
  %and.i = and i32 %add1.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add2.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #4, !srcloc !23
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %conv.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add9.i = add i32 %add8.i, %10
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %11 = inttoptr i32 %add11.i to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #4, !srcloc !23
  %13 = lshr i16 %12, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %conv15.i = zext i16 %13 to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 16
  %or.i = or i32 %shl.i, %conv.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.07
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.07, 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %16, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_gpct_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1003, label %sw.bb
    i32 1001, label %sw.bb20
    i32 1002, label %sw.bb71
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx2 = getelementptr [4 x i32], ptr %1, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1003, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %mul = shl nuw nsw i32 %and, 3
  %add = add nuw nsw i32 %mul, 22
  %add5 = add i32 %add, %12
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %13 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #4, !srcloc !27
  %and8 = and i32 %9, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp eq i32 %and8, 0
  br i1 %cmp, label %do.body10, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add15 = add nuw nsw i32 %mul, 24
  %add16 = add i32 %add15, %15
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %16 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 128) #4, !srcloc !27
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %arrayidx23 = getelementptr [4 x i32], ptr %1, i32 0, i32 %and
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1001, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr i32, ptr %data, i32 1
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %20 = trunc i32 %19 to i16
  %conv30 = and i16 %20, -16385
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv30)
  %iobase31 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase31, align 4
  %mul32 = shl nuw nsw i32 %and, 3
  %add33 = add nuw nsw i32 %mul32, 22
  %add34 = add i32 %23, %add33
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %24 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #4, !srcloc !27
  %arrayidx38 = getelementptr i32, ptr %data, i32 2
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %shr.i = lshr i32 %26, 16
  %conv.i = trunc i32 %shr.i to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %28 = ptrtoint ptr %iobase31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase31, align 4
  %add.i = add nuw nsw i32 %mul32, 20
  %add1.i = add i32 %29, %add.i
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %30 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 %27) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %conv7.i = trunc i32 %26 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv7.i) #4
  %32 = ptrtoint ptr %iobase31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase31, align 4
  %add10.i = add nuw nsw i32 %mul32, 18
  %add11.i = add i32 %33, %add10.i
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %34 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #4, !srcloc !27
  %35 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %37 = trunc i32 %36 to i16
  %conv46 = or i16 %37, 16384
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv46)
  %39 = ptrtoint ptr %iobase31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase31, align 4
  %add50 = add i32 %40, %add33
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %41 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %38) #4, !srcloc !27
  %arrayidx54 = getelementptr i32, ptr %data, i32 3
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx54, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %shr.i188 = lshr i32 %43, 16
  %conv.i189 = trunc i32 %shr.i188 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv.i189) #4
  %45 = ptrtoint ptr %iobase31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase31, align 4
  %add1.i193 = add i32 %46, %add.i
  %and2.i194 = and i32 %add1.i193, 1048575
  %add3.i195 = or i32 %and2.i194, -18874368
  %47 = inttoptr i32 %add3.i195 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %47, i16 %44) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %conv7.i196 = trunc i32 %43 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv7.i196) #4
  %49 = ptrtoint ptr %iobase31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase31, align 4
  %add11.i198 = add i32 %50, %add10.i
  %and12.i199 = and i32 %add11.i198, 1048575
  %add13.i200 = or i32 %and12.i199, -18874368
  %51 = inttoptr i32 %add13.i200 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #4, !srcloc !27
  %arrayidx55 = getelementptr i32, ptr %data, i32 4
  %52 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not = icmp eq i32 %53, 0
  br i1 %tobool.not, label %sw.bb20.sw.epilog_crit_edge, label %if.then56

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then56:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %conv62 = trunc i32 %53 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv62)
  %55 = ptrtoint ptr %iobase31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase31, align 4
  %add65 = add nuw nsw i32 %mul32, 24
  %add66 = add i32 %add65, %56
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %57 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 %54) #4, !srcloc !27
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  %arrayidx74 = getelementptr [4 x i32], ptr %1, i32 0, i32 %and
  %58 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1002, ptr %arrayidx74, align 4
  %arrayidx75 = getelementptr i32, ptr %data, i32 1
  %59 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx75, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %61 = trunc i32 %60 to i16
  %conv82 = and i16 %61, -16385
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv82)
  %iobase83 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %63 = ptrtoint ptr %iobase83 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iobase83, align 4
  %mul84 = shl nuw nsw i32 %and, 3
  %add85 = add nuw nsw i32 %mul84, 22
  %add86 = add i32 %64, %add85
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %65 = inttoptr i32 %add88 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %65, i16 %62) #4, !srcloc !27
  %arrayidx90 = getelementptr i32, ptr %data, i32 2
  %66 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx90, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %shr.i201 = lshr i32 %67, 16
  %conv.i202 = trunc i32 %shr.i201 to i16
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv.i202) #4
  %69 = ptrtoint ptr %iobase83 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iobase83, align 4
  %add.i205 = add nuw nsw i32 %mul84, 20
  %add1.i206 = add i32 %70, %add.i205
  %and2.i207 = and i32 %add1.i206, 1048575
  %add3.i208 = or i32 %and2.i207, -18874368
  %71 = inttoptr i32 %add3.i208 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %71, i16 %68) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %conv7.i209 = trunc i32 %67 to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv7.i209) #4
  %73 = ptrtoint ptr %iobase83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase83, align 4
  %add10.i210 = add nuw nsw i32 %mul84, 18
  %add11.i211 = add i32 %74, %add10.i210
  %and12.i212 = and i32 %add11.i211, 1048575
  %add13.i213 = or i32 %and12.i212, -18874368
  %75 = inttoptr i32 %add13.i213 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 %72) #4, !srcloc !27
  %76 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx75, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %78 = trunc i32 %77 to i16
  %conv98 = or i16 %78, 16384
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv98)
  %80 = ptrtoint ptr %iobase83 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase83, align 4
  %add102 = add i32 %81, %add85
  %and103 = and i32 %add102, 1048575
  %add104 = or i32 %and103, -18874368
  %82 = inttoptr i32 %add104 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %82, i16 %79) #4, !srcloc !27
  %arrayidx106 = getelementptr i32, ptr %data, i32 3
  %83 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx106, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %shr.i214 = lshr i32 %84, 16
  %conv.i215 = trunc i32 %shr.i214 to i16
  %85 = tail call i16 @llvm.bswap.i16(i16 %conv.i215) #4
  %86 = ptrtoint ptr %iobase83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iobase83, align 4
  %add1.i219 = add i32 %87, %add.i205
  %and2.i220 = and i32 %add1.i219, 1048575
  %add3.i221 = or i32 %and2.i220, -18874368
  %88 = inttoptr i32 %add3.i221 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %88, i16 %85) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %conv7.i222 = trunc i32 %84 to i16
  %89 = tail call i16 @llvm.bswap.i16(i16 %conv7.i222) #4
  %90 = ptrtoint ptr %iobase83 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iobase83, align 4
  %add11.i224 = add i32 %91, %add10.i210
  %and12.i225 = and i32 %add11.i224, 1048575
  %add13.i226 = or i32 %and12.i225, -18874368
  %92 = inttoptr i32 %add13.i226 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %92, i16 %89) #4, !srcloc !27
  %arrayidx107 = getelementptr i32, ptr %data, i32 4
  %93 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool108.not = icmp eq i32 %94, 0
  br i1 %tobool108.not, label %sw.bb71.sw.epilog_crit_edge, label %if.then109

sw.bb71.sw.epilog_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then109:                                       ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %conv115 = trunc i32 %94 to i16
  %95 = tail call i16 @llvm.bswap.i16(i16 %conv115)
  %96 = ptrtoint ptr %iobase83 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %iobase83, align 4
  %add118 = add nuw nsw i32 %mul84, 24
  %add119 = add i32 %add118, %97
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %98 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %98, i16 %95) #4, !srcloc !27
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then109, %sw.bb71.sw.epilog_crit_edge, %if.then56, %sw.bb20.sw.epilog_crit_edge, %do.body10, %sw.bb.sw.epilog_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %99 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %100, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_gpct_winsn(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %mul = shl nuw nsw i32 %and, 3
  %add = add i32 %5, 22
  %add1 = add i32 %add, %mul
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %6 = inttoptr i32 %add3 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %arrayidx = getelementptr [4 x i32], ptr %1, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 1002, label %sw.bb
    i32 1003, label %entry.sw.bb8_crit_edge
    i32 1001, label %entry.sw.bb8_crit_edge19
  ]

entry.sw.bb8_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not = icmp ule i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.bb8_crit_edge

sw.bb.sw.bb8_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %shr.i = lshr i32 %16, 16
  %conv.i = trunc i32 %shr.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add.i = add nuw nsw i32 %mul, 20
  %add1.i = add i32 %add.i, %19
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %20 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %conv7.i = trunc i32 %16 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv7.i) #4
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add10.i = add nuw nsw i32 %mul, 18
  %add11.i = add i32 %add10.i, %23
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %24 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #4, !srcloc !27
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %25 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %sw.bb8 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and1 = and i32 %3, 9
  %shl = shl nuw nsw i32 32, %and1
  %and2 = shl i32 %3, 1
  %shl3 = and i32 %and2, 30
  %or = or i32 %shl, %shl3
  %or4 = or i32 %or, 1
  %ai_ctrl = getelementptr inbounds %struct.s526_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ai_ctrl, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or4, i32 %conv)
  %cmp.not = icmp eq i32 %or4, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = trunc i32 %or4 to i16
  %6 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv6, ptr %ai_ctrl, align 4
  %or8 = or i32 %or, 32769
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl.0 = phi i32 [ %or8, %if.then ], [ %or4, %entry.if.end_crit_edge ]
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp949.not = icmp eq i32 %8, 0
  br i1 %cmp949.not, label %if.end.cleanup_crit_edge, label %do.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.lr.ph:                                    ; preds = %if.end
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %9 = and i32 %ctrl.0, -32769
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %do.body.lr.ph
  %i.051 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end18.do.body_crit_edge ]
  %ctrl.150 = phi i32 [ %ctrl.0, %do.body.lr.ph ], [ %9, %if.end18.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %conv11 = trunc i32 %ctrl.150 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add12 = add i32 %12, 6
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %13 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #4, !srcloc !27
  %call16 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @s526_eoc, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %do.body
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add20 = add i32 %15, 8
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %16 = inttoptr i32 %add22 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #4, !srcloc !23
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %conv25 = zext i16 %18 to i32
  %19 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %20, %conv25
  %shr.i = lshr i32 %20, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.051
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor2.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.051, 1
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  %cmp9 = icmp ult i32 %inc, %23
  br i1 %cmp9, label %if.end18.do.body_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %23, %if.end18.cleanup_crit_edge ], [ %call16, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %.tr = trunc i32 %1 to i16
  %6 = shl i16 %.tr, 9
  %conv = and i16 %6, 1536
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 4
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %conv) #4, !srcloc !27
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp50.not = icmp eq i32 %11, 0
  br i1 %cmp50.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %12 = or i16 %conv, 256
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.051, 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %data, i32 %i.051
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %conv9 = trunc i32 %16 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add11 = add i32 %19, 8
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %20 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add20 = add i32 %22, 4
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %23 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %12) #4, !srcloc !27
  %call24 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @s526_eoc, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %16, %for.cond.for.end_crit_edge ]
  %24 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %readback, align 4
  %arrayidx26 = getelementptr i32, ptr %25, i32 %and
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val.0.lcssa, ptr %arrayidx26, align 4
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %for.end ], [ %call24, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
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
  %add = add i32 %4, 10
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #4, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase3 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase3, align 4
  %add4 = add i32 %7, 10
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %8 = inttoptr i32 %add6 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #4, !srcloc !23
  %10 = lshr i16 %9, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
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
define internal i32 @s526_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 15, i32 240
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %.) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %and3 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %state7 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %4 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state7, align 4
  %and8 = and i32 %5, -1025
  %masksel = select i1 %tobool4.not, i32 0, i32 1024
  %and8.sink = or i32 %and8, %masksel
  store i32 %and8.sink, ptr %state7, align 4
  %and11 = and i32 %3, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %state17 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %and18 = and i32 %and8.sink, -2049
  %masksel37 = select i1 %tobool12.not, i32 0, i32 2048
  %or15.sink = or i32 %and18, %masksel37
  %6 = ptrtoint ptr %state17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or15.sink, ptr %state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %state20 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %7 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state20, align 4
  %conv = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add = add i32 %11, 10
  %and21 = and i32 %add, 1048575
  %add22 = or i32 %and21, -18874368
  %12 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 %9) #4, !srcloc !27
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s526_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !23
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %conv = zext i16 %4 to i32
  %and3 = and i32 %conv, %context
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %conv4 = trunc i32 %context to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add6 = add i32 %7, 14
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %8 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #4, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!0 = !{ptr @__initcall__kmod_s526__229_625_s526_driver_init6, !1, !"__initcall__kmod_s526__229_625_s526_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/s526.c", i32 625, i32 1}
!2 = !{ptr @__exitcall_s526_driver_exit, !1, !"__exitcall_s526_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/s526.c", i32 627, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/s526.c", i32 628, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/s526.c", i32 629, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/s526.c", i32 620, i32 17}
!12 = !{ptr @s526_driver, !13, !"s526_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/s526.c", i32 619, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 6276055}
!24 = !{i64 2153920837}
!25 = !{i64 2153921619}
!26 = !{i64 2153921977}
!27 = !{i64 6275855}
!28 = !{i64 2153922709}
!29 = !{i64 2153923386}
!30 = !{i64 2153919214}
!31 = !{i64 2153919796}
!32 = !{i64 2153924013}
!33 = !{i64 2153924552}
!34 = !{i64 2153925179}
!35 = !{i64 2153925806}
!36 = !{i64 2153926345}
!37 = !{i64 2153927401}
!38 = !{i64 2153929135}
!39 = !{i64 2153930212}
!40 = !{i64 2153930527}
!41 = !{i64 2153931093}
!42 = !{i64 2153931576}
!43 = !{i64 2153932147}
!44 = !{i64 2153933066}
!45 = !{i64 2153933697}
!46 = !{i64 2153928127}
!47 = !{i64 2153928391}
