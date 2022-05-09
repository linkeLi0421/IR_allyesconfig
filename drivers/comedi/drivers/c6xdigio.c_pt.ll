; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/c6xdigio.c_pt.bc'
source_filename = "../drivers/comedi/drivers/c6xdigio.c"
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

@__initcall__kmod_c6xdigio__234_293_c6xdigio_driver_init6 = internal global ptr @c6xdigio_driver_init, section ".initcall6.init", align 4
@c6xdigio_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @c6xdigio_attach, ptr @c6xdigio_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_c6xdigio_driver_exit = internal global ptr @c6xdigio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [46 x i8] c"c6xdigio.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [71 x i8] c"c6xdigio.description=Comedi driver for the C6x_DIGIO DSP daughter card\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [46 x i8] c"c6xdigio.file=drivers/comedi/drivers/c6xdigio\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [21 x i8] c"c6xdigio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"c6xdigio\00", [23 x i8] zeroinitializer }, align 32
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"c6xdigio_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 287, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../drivers/comedi/drivers/c6xdigio.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 288, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_c6xdigio_driver_exit, ptr @__initcall__kmod_c6xdigio__234_293_c6xdigio_driver_init6, ptr @c6xdigio_driver_exit, ptr @c6xdigio_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c6xdigio_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @c6xdigio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @c6xdigio_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @c6xdigio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_driver_unregister(ptr noundef nonnull @c6xdigio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c6xdigio_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 131072, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 500, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @range_unknown, ptr %range_table, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @c6xdigio_pwm_insn_write, ptr %insn_write, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @c6xdigio_pwm_insn_read, ptr %insn_read, align 4
  %11 = load ptr, ptr %subdevices, align 4
  %type9 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 2
  %12 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %type9, align 4
  %subdev_flags10 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 4
  %13 = ptrtoint ptr %subdev_flags10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 268500992, ptr %subdev_flags10, align 4
  %n_chan11 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 3
  %14 = ptrtoint ptr %n_chan11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %n_chan11, align 4
  %maxdata12 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 13
  %15 = ptrtoint ptr %maxdata12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777215, ptr %maxdata12, align 4
  %range_table13 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 15
  %16 = ptrtoint ptr %range_table13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @range_unknown, ptr %range_table13, align 4
  %insn_read14 = getelementptr %struct.comedi_subdevice, ptr %11, i32 1, i32 18
  %17 = ptrtoint ptr %insn_read14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @c6xdigio_encoder_insn_read, ptr %insn_read14, align 4
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i = and i32 %19, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %20 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 112) #5, !srcloc !28
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end4
  %timeout.0.i.i.i = phi i32 [ 0, %if.end4 ], [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i = add i32 %22, 1
  %and.i2.i.i = and i32 %add.i1.i.i, 1048575
  %add1.i.i.i = or i32 %and.i2.i.i, -18874368
  %23 = inttoptr i32 %add1.i.i.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp.not.i.i.i = icmp sgt i8 %24, -1
  %inc.i.i.i = add nuw nsw i32 %timeout.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i)
  %cmp5.i.i.i = icmp ult i32 %timeout.0.i.i.i, 19
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp5.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %c6xdigio_write_data.exit.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

c6xdigio_write_data.exit.i:                       ; preds = %do.body.i.i.i
  %25 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i16.i = and i32 %26, 1048575
  %add.i.i17.i = or i32 %and.i.i16.i, -18874368
  %27 = inttoptr i32 %add.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 116) #5, !srcloc !28
  br label %do.body.i.i27.i

do.body.i.i27.i:                                  ; preds = %do.body.i.i27.i.do.body.i.i27.i_crit_edge, %c6xdigio_write_data.exit.i
  %timeout.0.i.i18.i = phi i32 [ 0, %c6xdigio_write_data.exit.i ], [ %inc.i.i24.i, %do.body.i.i27.i.do.body.i.i27.i_crit_edge ]
  %28 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i19.i = add i32 %29, 1
  %and.i2.i20.i = and i32 %add.i1.i19.i, 1048575
  %add1.i.i21.i = or i32 %and.i2.i20.i, -18874368
  %30 = inttoptr i32 %add1.i.i21.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.not.i.i23.i = icmp slt i8 %31, 0
  %inc.i.i24.i = add nuw nsw i32 %timeout.0.i.i18.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i18.i)
  %cmp5.i.i25.i = icmp ult i32 %timeout.0.i.i18.i, 19
  %or.cond.i.i26.i = select i1 %cmp.not.i.i23.i, i1 %cmp5.i.i25.i, i1 false
  br i1 %or.cond.i.i26.i, label %do.body.i.i27.i.do.body.i.i27.i_crit_edge, label %c6xdigio_write_data.exit28.i

do.body.i.i27.i.do.body.i.i27.i_crit_edge:        ; preds = %do.body.i.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i27.i

c6xdigio_write_data.exit28.i:                     ; preds = %do.body.i.i27.i
  %32 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i30.i = and i32 %33, 1048575
  %add.i.i31.i = or i32 %and.i.i30.i, -18874368
  %34 = inttoptr i32 %add.i.i31.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 112) #5, !srcloc !28
  br label %do.body.i.i41.i

do.body.i.i41.i:                                  ; preds = %do.body.i.i41.i.do.body.i.i41.i_crit_edge, %c6xdigio_write_data.exit28.i
  %timeout.0.i.i32.i = phi i32 [ 0, %c6xdigio_write_data.exit28.i ], [ %inc.i.i38.i, %do.body.i.i41.i.do.body.i.i41.i_crit_edge ]
  %35 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i33.i = add i32 %36, 1
  %and.i2.i34.i = and i32 %add.i1.i33.i, 1048575
  %add1.i.i35.i = or i32 %and.i2.i34.i, -18874368
  %37 = inttoptr i32 %add1.i.i35.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp.not.i.i37.i = icmp sgt i8 %38, -1
  %inc.i.i38.i = add nuw nsw i32 %timeout.0.i.i32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i32.i)
  %cmp5.i.i39.i = icmp ult i32 %timeout.0.i.i32.i, 19
  %or.cond.i.i40.i = select i1 %cmp.not.i.i37.i, i1 %cmp5.i.i39.i, i1 false
  br i1 %or.cond.i.i40.i, label %do.body.i.i41.i.do.body.i.i41.i_crit_edge, label %c6xdigio_write_data.exit42.i

do.body.i.i41.i.do.body.i.i41.i_crit_edge:        ; preds = %do.body.i.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i41.i

c6xdigio_write_data.exit42.i:                     ; preds = %do.body.i.i41.i
  %39 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i44.i = and i32 %40, 1048575
  %add.i.i45.i = or i32 %and.i.i44.i, -18874368
  %41 = inttoptr i32 %add.i.i45.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #5, !srcloc !28
  br label %do.body.i.i55.i

do.body.i.i55.i:                                  ; preds = %do.body.i.i55.i.do.body.i.i55.i_crit_edge, %c6xdigio_write_data.exit42.i
  %timeout.0.i.i46.i = phi i32 [ 0, %c6xdigio_write_data.exit42.i ], [ %inc.i.i52.i, %do.body.i.i55.i.do.body.i.i55.i_crit_edge ]
  %42 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i47.i = add i32 %43, 1
  %and.i2.i48.i = and i32 %add.i1.i47.i, 1048575
  %add1.i.i49.i = or i32 %and.i2.i48.i, -18874368
  %44 = inttoptr i32 %add1.i.i49.i to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.not.i.i51.i = icmp slt i8 %45, 0
  %inc.i.i52.i = add nuw nsw i32 %timeout.0.i.i46.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i46.i)
  %cmp5.i.i53.i = icmp ult i32 %timeout.0.i.i46.i, 19
  %or.cond.i.i54.i = select i1 %cmp.not.i.i51.i, i1 %cmp5.i.i53.i, i1 false
  br i1 %or.cond.i.i54.i, label %do.body.i.i55.i.do.body.i.i55.i_crit_edge, label %c6xdigio_write_data.exit56.i

do.body.i.i55.i.do.body.i.i55.i_crit_edge:        ; preds = %do.body.i.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i55.i

c6xdigio_write_data.exit56.i:                     ; preds = %do.body.i.i55.i
  %46 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i58.i = and i32 %47, 1048575
  %add.i.i59.i = or i32 %and.i.i58.i, -18874368
  %48 = inttoptr i32 %add.i.i59.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 104) #5, !srcloc !28
  br label %do.body.i.i69.i

do.body.i.i69.i:                                  ; preds = %do.body.i.i69.i.do.body.i.i69.i_crit_edge, %c6xdigio_write_data.exit56.i
  %timeout.0.i.i60.i = phi i32 [ 0, %c6xdigio_write_data.exit56.i ], [ %inc.i.i66.i, %do.body.i.i69.i.do.body.i.i69.i_crit_edge ]
  %49 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i61.i = add i32 %50, 1
  %and.i2.i62.i = and i32 %add.i1.i61.i, 1048575
  %add1.i.i63.i = or i32 %and.i2.i62.i, -18874368
  %51 = inttoptr i32 %add1.i.i63.i to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp.not.i.i65.i = icmp sgt i8 %52, -1
  %inc.i.i66.i = add nuw nsw i32 %timeout.0.i.i60.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i60.i)
  %cmp5.i.i67.i = icmp ult i32 %timeout.0.i.i60.i, 19
  %or.cond.i.i68.i = select i1 %cmp.not.i.i65.i, i1 %cmp5.i.i67.i, i1 false
  br i1 %or.cond.i.i68.i, label %do.body.i.i69.i.do.body.i.i69.i_crit_edge, label %c6xdigio_write_data.exit70.i

do.body.i.i69.i.do.body.i.i69.i_crit_edge:        ; preds = %do.body.i.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i69.i

c6xdigio_write_data.exit70.i:                     ; preds = %do.body.i.i69.i
  %53 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i72.i = and i32 %54, 1048575
  %add.i.i73.i = or i32 %and.i.i72.i, -18874368
  %55 = inttoptr i32 %add.i.i73.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 108) #5, !srcloc !28
  br label %do.body.i.i83.i

do.body.i.i83.i:                                  ; preds = %do.body.i.i83.i.do.body.i.i83.i_crit_edge, %c6xdigio_write_data.exit70.i
  %timeout.0.i.i74.i = phi i32 [ 0, %c6xdigio_write_data.exit70.i ], [ %inc.i.i80.i, %do.body.i.i83.i.do.body.i.i83.i_crit_edge ]
  %56 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i75.i = add i32 %57, 1
  %and.i2.i76.i = and i32 %add.i1.i75.i, 1048575
  %add1.i.i77.i = or i32 %and.i2.i76.i, -18874368
  %58 = inttoptr i32 %add1.i.i77.i to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.not.i.i79.i = icmp slt i8 %59, 0
  %inc.i.i80.i = add nuw nsw i32 %timeout.0.i.i74.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i74.i)
  %cmp5.i.i81.i = icmp ult i32 %timeout.0.i.i74.i, 19
  %or.cond.i.i82.i = select i1 %cmp.not.i.i79.i, i1 %cmp5.i.i81.i, i1 false
  br i1 %or.cond.i.i82.i, label %do.body.i.i83.i.do.body.i.i83.i_crit_edge, label %c6xdigio_write_data.exit84.i

do.body.i.i83.i.do.body.i.i83.i_crit_edge:        ; preds = %do.body.i.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i83.i

c6xdigio_write_data.exit84.i:                     ; preds = %do.body.i.i83.i
  %60 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i86.i = and i32 %61, 1048575
  %add.i.i87.i = or i32 %and.i.i86.i, -18874368
  %62 = inttoptr i32 %add.i.i87.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 104) #5, !srcloc !28
  br label %do.body.i.i97.i

do.body.i.i97.i:                                  ; preds = %do.body.i.i97.i.do.body.i.i97.i_crit_edge, %c6xdigio_write_data.exit84.i
  %timeout.0.i.i88.i = phi i32 [ 0, %c6xdigio_write_data.exit84.i ], [ %inc.i.i94.i, %do.body.i.i97.i.do.body.i.i97.i_crit_edge ]
  %63 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i89.i = add i32 %64, 1
  %and.i2.i90.i = and i32 %add.i1.i89.i, 1048575
  %add1.i.i91.i = or i32 %and.i2.i90.i, -18874368
  %65 = inttoptr i32 %add1.i.i91.i to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp.not.i.i93.i = icmp sgt i8 %66, -1
  %inc.i.i94.i = add nuw nsw i32 %timeout.0.i.i88.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i88.i)
  %cmp5.i.i95.i = icmp ult i32 %timeout.0.i.i88.i, 19
  %or.cond.i.i96.i = select i1 %cmp.not.i.i93.i, i1 %cmp5.i.i95.i, i1 false
  br i1 %or.cond.i.i96.i, label %do.body.i.i97.i.do.body.i.i97.i_crit_edge, label %c6xdigio_write_data.exit98.i

do.body.i.i97.i.do.body.i.i97.i_crit_edge:        ; preds = %do.body.i.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i97.i

c6xdigio_write_data.exit98.i:                     ; preds = %do.body.i.i97.i
  %67 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i100.i = and i32 %68, 1048575
  %add.i.i101.i = or i32 %and.i.i100.i, -18874368
  %69 = inttoptr i32 %add.i.i101.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 0) #5, !srcloc !28
  br label %do.body.i.i111.i

do.body.i.i111.i:                                 ; preds = %do.body.i.i111.i.do.body.i.i111.i_crit_edge, %c6xdigio_write_data.exit98.i
  %timeout.0.i.i102.i = phi i32 [ 0, %c6xdigio_write_data.exit98.i ], [ %inc.i.i108.i, %do.body.i.i111.i.do.body.i.i111.i_crit_edge ]
  %70 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i103.i = add i32 %71, 1
  %and.i2.i104.i = and i32 %add.i1.i103.i, 1048575
  %add1.i.i105.i = or i32 %and.i2.i104.i, -18874368
  %72 = inttoptr i32 %add1.i.i105.i to ptr
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp.not.i.i107.i = icmp slt i8 %73, 0
  %inc.i.i108.i = add nuw nsw i32 %timeout.0.i.i102.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i102.i)
  %cmp5.i.i109.i = icmp ult i32 %timeout.0.i.i102.i, 19
  %or.cond.i.i110.i = select i1 %cmp.not.i.i107.i, i1 %cmp5.i.i109.i, i1 false
  br i1 %or.cond.i.i110.i, label %do.body.i.i111.i.do.body.i.i111.i_crit_edge, label %do.body.i.i111.i.cleanup_crit_edge

do.body.i.i111.i.cleanup_crit_edge:               ; preds = %do.body.i.i111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i.i111.i.do.body.i.i111.i_crit_edge:      ; preds = %do.body.i.i111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i111.i

cleanup:                                          ; preds = %do.body.i.i111.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %do.body.i.i111.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c6xdigio_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @comedi_legacy_detach(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c6xdigio_pwm_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = shl i32 %1, 4
  %mul = and i32 %and, 1048560
  %shr = lshr i32 %3, %mul
  %and1 = and i32 %shr, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19.not = icmp eq i32 %5, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shl.i = add nuw nsw i32 %mul, 16
  %or.i = or i32 %shl.i, 32
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %c6xdigio_pwm_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %c6xdigio_pwm_write.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 498) #5
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 2) #5
  %and.i = and i32 %9, 3
  %or4.i = or i32 %and.i, %or.i
  %conv.i.i = trunc i32 %or4.i to i8
  %10 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i = and i32 %11, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %12 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv.i.i) #5, !srcloc !28
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body
  %timeout.0.i.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i = add i32 %14, 1
  %and.i2.i.i = and i32 %add.i1.i.i, 1048575
  %add1.i.i.i = or i32 %and.i2.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp.not.i.i.i = icmp sgt i8 %16, -1
  %inc.i.i.i = add nuw nsw i32 %timeout.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i)
  %cmp5.i.i.i = icmp ult i32 %timeout.0.i.i.i, 19
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp5.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %c6xdigio_write_data.exit.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

c6xdigio_write_data.exit.i:                       ; preds = %do.body.i.i.i
  %shr6.i = lshr i32 %9, 2
  %and7.i = and i32 %shr6.i, 3
  %or8.i = or i32 %and7.i, %or.i
  %17 = trunc i32 %or8.i to i8
  %conv.i47.i = or i8 %17, 4
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i49.i = and i32 %19, 1048575
  %add.i.i50.i = or i32 %and.i.i49.i, -18874368
  %20 = inttoptr i32 %add.i.i50.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv.i47.i) #5, !srcloc !28
  br label %do.body.i.i60.i

do.body.i.i60.i:                                  ; preds = %do.body.i.i60.i.do.body.i.i60.i_crit_edge, %c6xdigio_write_data.exit.i
  %timeout.0.i.i51.i = phi i32 [ 0, %c6xdigio_write_data.exit.i ], [ %inc.i.i57.i, %do.body.i.i60.i.do.body.i.i60.i_crit_edge ]
  %21 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i52.i = add i32 %22, 1
  %and.i2.i53.i = and i32 %add.i1.i52.i, 1048575
  %add1.i.i54.i = or i32 %and.i2.i53.i, -18874368
  %23 = inttoptr i32 %add1.i.i54.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.not.i.i56.i = icmp slt i8 %24, 0
  %inc.i.i57.i = add nuw nsw i32 %timeout.0.i.i51.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i51.i)
  %cmp5.i.i58.i = icmp ult i32 %timeout.0.i.i51.i, 19
  %or.cond.i.i59.i = select i1 %cmp.not.i.i56.i, i1 %cmp5.i.i58.i, i1 false
  br i1 %or.cond.i.i59.i, label %do.body.i.i60.i.do.body.i.i60.i_crit_edge, label %c6xdigio_write_data.exit61.i

do.body.i.i60.i.do.body.i.i60.i_crit_edge:        ; preds = %do.body.i.i60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i60.i

c6xdigio_write_data.exit61.i:                     ; preds = %do.body.i.i60.i
  %shr11.i = lshr i32 %9, 4
  %and12.i = and i32 %shr11.i, 3
  %or13.i = or i32 %and12.i, %or.i
  %conv.i62.i = trunc i32 %or13.i to i8
  %25 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i64.i = and i32 %26, 1048575
  %add.i.i65.i = or i32 %and.i.i64.i, -18874368
  %27 = inttoptr i32 %add.i.i65.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv.i62.i) #5, !srcloc !28
  br label %do.body.i.i75.i

do.body.i.i75.i:                                  ; preds = %do.body.i.i75.i.do.body.i.i75.i_crit_edge, %c6xdigio_write_data.exit61.i
  %timeout.0.i.i66.i = phi i32 [ 0, %c6xdigio_write_data.exit61.i ], [ %inc.i.i72.i, %do.body.i.i75.i.do.body.i.i75.i_crit_edge ]
  %28 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i67.i = add i32 %29, 1
  %and.i2.i68.i = and i32 %add.i1.i67.i, 1048575
  %add1.i.i69.i = or i32 %and.i2.i68.i, -18874368
  %30 = inttoptr i32 %add1.i.i69.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp.not.i.i71.i = icmp sgt i8 %31, -1
  %inc.i.i72.i = add nuw nsw i32 %timeout.0.i.i66.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i66.i)
  %cmp5.i.i73.i = icmp ult i32 %timeout.0.i.i66.i, 19
  %or.cond.i.i74.i = select i1 %cmp.not.i.i71.i, i1 %cmp5.i.i73.i, i1 false
  br i1 %or.cond.i.i74.i, label %do.body.i.i75.i.do.body.i.i75.i_crit_edge, label %c6xdigio_write_data.exit76.i

do.body.i.i75.i.do.body.i.i75.i_crit_edge:        ; preds = %do.body.i.i75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i75.i

c6xdigio_write_data.exit76.i:                     ; preds = %do.body.i.i75.i
  %shr16.i = lshr i32 %9, 6
  %or18.i = or i32 %shr16.i, %or.i
  %32 = trunc i32 %or18.i to i8
  %conv.i77.i = or i8 %32, 4
  %33 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i79.i = and i32 %34, 1048575
  %add.i.i80.i = or i32 %and.i.i79.i, -18874368
  %35 = inttoptr i32 %add.i.i80.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv.i77.i) #5, !srcloc !28
  br label %do.body.i.i90.i

do.body.i.i90.i:                                  ; preds = %do.body.i.i90.i.do.body.i.i90.i_crit_edge, %c6xdigio_write_data.exit76.i
  %timeout.0.i.i81.i = phi i32 [ 0, %c6xdigio_write_data.exit76.i ], [ %inc.i.i87.i, %do.body.i.i90.i.do.body.i.i90.i_crit_edge ]
  %36 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i82.i = add i32 %37, 1
  %and.i2.i83.i = and i32 %add.i1.i82.i, 1048575
  %add1.i.i84.i = or i32 %and.i2.i83.i, -18874368
  %38 = inttoptr i32 %add1.i.i84.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.not.i.i86.i = icmp slt i8 %39, 0
  %inc.i.i87.i = add nuw nsw i32 %timeout.0.i.i81.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i81.i)
  %cmp5.i.i88.i = icmp ult i32 %timeout.0.i.i81.i, 19
  %or.cond.i.i89.i = select i1 %cmp.not.i.i86.i, i1 %cmp5.i.i88.i, i1 false
  br i1 %or.cond.i.i89.i, label %do.body.i.i90.i.do.body.i.i90.i_crit_edge, label %c6xdigio_write_data.exit91.i

do.body.i.i90.i.do.body.i.i90.i_crit_edge:        ; preds = %do.body.i.i90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i90.i

c6xdigio_write_data.exit91.i:                     ; preds = %do.body.i.i90.i
  %shr21.i = lshr i32 %9, 8
  %or23.i = or i32 %shr21.i, %or.i
  %conv.i92.i = trunc i32 %or23.i to i8
  %40 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i94.i = and i32 %41, 1048575
  %add.i.i95.i = or i32 %and.i.i94.i, -18874368
  %42 = inttoptr i32 %add.i.i95.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv.i92.i) #5, !srcloc !28
  br label %do.body.i.i105.i

do.body.i.i105.i:                                 ; preds = %do.body.i.i105.i.do.body.i.i105.i_crit_edge, %c6xdigio_write_data.exit91.i
  %timeout.0.i.i96.i = phi i32 [ 0, %c6xdigio_write_data.exit91.i ], [ %inc.i.i102.i, %do.body.i.i105.i.do.body.i.i105.i_crit_edge ]
  %43 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i97.i = add i32 %44, 1
  %and.i2.i98.i = and i32 %add.i1.i97.i, 1048575
  %add1.i.i99.i = or i32 %and.i2.i98.i, -18874368
  %45 = inttoptr i32 %add1.i.i99.i to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp.not.i.i101.i = icmp sgt i8 %46, -1
  %inc.i.i102.i = add nuw nsw i32 %timeout.0.i.i96.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i96.i)
  %cmp5.i.i103.i = icmp ult i32 %timeout.0.i.i96.i, 19
  %or.cond.i.i104.i = select i1 %cmp.not.i.i101.i, i1 %cmp5.i.i103.i, i1 false
  br i1 %or.cond.i.i104.i, label %do.body.i.i105.i.do.body.i.i105.i_crit_edge, label %c6xdigio_write_data.exit106.i

do.body.i.i105.i.do.body.i.i105.i_crit_edge:      ; preds = %do.body.i.i105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i105.i

c6xdigio_write_data.exit106.i:                    ; preds = %do.body.i.i105.i
  %47 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i108.i = and i32 %48, 1048575
  %add.i.i109.i = or i32 %and.i.i108.i, -18874368
  %49 = inttoptr i32 %add.i.i109.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 0) #5, !srcloc !28
  br label %do.body.i.i119.i

do.body.i.i119.i:                                 ; preds = %do.body.i.i119.i.do.body.i.i119.i_crit_edge, %c6xdigio_write_data.exit106.i
  %timeout.0.i.i110.i = phi i32 [ 0, %c6xdigio_write_data.exit106.i ], [ %inc.i.i116.i, %do.body.i.i119.i.do.body.i.i119.i_crit_edge ]
  %50 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i111.i = add i32 %51, 1
  %and.i2.i112.i = and i32 %add.i1.i111.i, 1048575
  %add1.i.i113.i = or i32 %and.i2.i112.i, -18874368
  %52 = inttoptr i32 %add1.i.i113.i to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.not.i.i115.i = icmp slt i8 %53, 0
  %inc.i.i116.i = add nuw nsw i32 %timeout.0.i.i110.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i110.i)
  %cmp5.i.i117.i = icmp ult i32 %timeout.0.i.i110.i, 19
  %or.cond.i.i118.i = select i1 %cmp.not.i.i115.i, i1 %cmp5.i.i117.i, i1 false
  br i1 %or.cond.i.i118.i, label %do.body.i.i119.i.do.body.i.i119.i_crit_edge, label %c6xdigio_pwm_write.exit

do.body.i.i119.i.do.body.i.i119.i_crit_edge:      ; preds = %do.body.i.i119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i119.i

c6xdigio_pwm_write.exit:                          ; preds = %do.body.i.i119.i
  %inc = add nuw i32 %i.020, 1
  %54 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %c6xdigio_pwm_write.exit.for.body_crit_edge, label %c6xdigio_pwm_write.exit.for.end_crit_edge

c6xdigio_pwm_write.exit.for.end_crit_edge:        ; preds = %c6xdigio_pwm_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

c6xdigio_pwm_write.exit.for.body_crit_edge:       ; preds = %c6xdigio_pwm_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %c6xdigio_pwm_write.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %and1, %entry.for.end_crit_edge ], [ %7, %c6xdigio_pwm_write.exit.for.end_crit_edge ]
  %shl = shl i32 65535, %mul
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 4
  %and4 = and i32 %57, %shl
  %shl6 = shl i32 %val.0.lcssa, %mul
  %or = or i32 %and4, %shl6
  store i32 %or, ptr %state, align 4
  %58 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c6xdigio_pwm_insn_read(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = shl i32 %1, 4
  %mul = and i32 %and, 1048560
  %shr = lshr i32 %3, %mul
  %and1 = and i32 %shr, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and1, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.08, 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %8, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c6xdigio_encoder_insn_read(ptr noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %chan.tr.i = trunc i32 %3 to i8
  %4 = shl i8 %chan.tr.i, 4
  %5 = add i8 %4, 16
  %conv.i.i = or i8 %5, 64
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %conv.i.i.i = or i8 %5, 68
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %c6xdigio_encoder_read.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %c6xdigio_encoder_read.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i = and i32 %7, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %8 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv.i.i) #5, !srcloc !28
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body
  %timeout.0.i.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i = add i32 %10, 1
  %and.i2.i.i = and i32 %add.i1.i.i, 1048575
  %add1.i.i.i = or i32 %and.i2.i.i, -18874368
  %11 = inttoptr i32 %add1.i.i.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.not.i.i.i = icmp sgt i8 %12, -1
  %inc.i.i.i = add nuw nsw i32 %timeout.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i)
  %cmp5.i.i.i = icmp ult i32 %timeout.0.i.i.i, 19
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp5.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %c6xdigio_write_data.exit.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

c6xdigio_write_data.exit.i:                       ; preds = %do.body.i.i.i
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %14, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %17 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i.i = and i32 %18, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %19 = inttoptr i32 %add.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv.i.i.i) #5, !srcloc !28
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %c6xdigio_write_data.exit.i
  %timeout.0.i.i.i.i = phi i32 [ 0, %c6xdigio_write_data.exit.i ], [ %inc.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i.i = add i32 %21, 1
  %and.i2.i.i.i = and i32 %add.i1.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i2.i.i.i, -18874368
  %22 = inttoptr i32 %add1.i.i.i.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.not.i.i.i.i = icmp slt i8 %23, 0
  %inc.i.i.i.i = add nuw nsw i32 %timeout.0.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i.i)
  %cmp5.i.i.i.i = icmp ult i32 %timeout.0.i.i.i.i, 19
  %or.cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i1 %cmp5.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, label %c6xdigio_get_encoder_bits.exit.i

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i

c6xdigio_get_encoder_bits.exit.i:                 ; preds = %do.body.i.i.i.i
  %24 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i.i, align 4
  %add.i61.i = add i32 %25, 1
  %and.i62.i = and i32 %add.i61.i, 1048575
  %add1.i63.i = or i32 %and.i62.i, -18874368
  %26 = inttoptr i32 %add1.i63.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %28 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i66.i = and i32 %29, 1048575
  %add.i.i.i67.i = or i32 %and.i.i.i66.i, -18874368
  %30 = inttoptr i32 %add.i.i.i67.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv.i.i) #5, !srcloc !28
  br label %do.body.i.i.i77.i

do.body.i.i.i77.i:                                ; preds = %do.body.i.i.i77.i.do.body.i.i.i77.i_crit_edge, %c6xdigio_get_encoder_bits.exit.i
  %timeout.0.i.i.i68.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit.i ], [ %inc.i.i.i74.i, %do.body.i.i.i77.i.do.body.i.i.i77.i_crit_edge ]
  %31 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i69.i = add i32 %32, 1
  %and.i2.i.i70.i = and i32 %add.i1.i.i69.i, 1048575
  %add1.i.i.i71.i = or i32 %and.i2.i.i70.i, -18874368
  %33 = inttoptr i32 %add1.i.i.i71.i to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp.not.i.i.i73.i = icmp sgt i8 %34, -1
  %inc.i.i.i74.i = add nuw nsw i32 %timeout.0.i.i.i68.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i68.i)
  %cmp5.i.i.i75.i = icmp ult i32 %timeout.0.i.i.i68.i, 19
  %or.cond.i.i.i76.i = select i1 %cmp.not.i.i.i73.i, i1 %cmp5.i.i.i75.i, i1 false
  br i1 %or.cond.i.i.i76.i, label %do.body.i.i.i77.i.do.body.i.i.i77.i_crit_edge, label %c6xdigio_get_encoder_bits.exit78.i

do.body.i.i.i77.i.do.body.i.i.i77.i_crit_edge:    ; preds = %do.body.i.i.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i77.i

c6xdigio_get_encoder_bits.exit78.i:               ; preds = %do.body.i.i.i77.i
  %35 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i.i, align 4
  %add.i80.i = add i32 %36, 1
  %and.i81.i = and i32 %add.i80.i, 1048575
  %add1.i82.i = or i32 %and.i81.i, -18874368
  %37 = inttoptr i32 %add1.i82.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %39 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i85.i = and i32 %40, 1048575
  %add.i.i.i86.i = or i32 %and.i.i.i85.i, -18874368
  %41 = inttoptr i32 %add.i.i.i86.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv.i.i.i) #5, !srcloc !28
  br label %do.body.i.i.i96.i

do.body.i.i.i96.i:                                ; preds = %do.body.i.i.i96.i.do.body.i.i.i96.i_crit_edge, %c6xdigio_get_encoder_bits.exit78.i
  %timeout.0.i.i.i87.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit78.i ], [ %inc.i.i.i93.i, %do.body.i.i.i96.i.do.body.i.i.i96.i_crit_edge ]
  %42 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i88.i = add i32 %43, 1
  %and.i2.i.i89.i = and i32 %add.i1.i.i88.i, 1048575
  %add1.i.i.i90.i = or i32 %and.i2.i.i89.i, -18874368
  %44 = inttoptr i32 %add1.i.i.i90.i to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.not.i.i.i92.i = icmp slt i8 %45, 0
  %inc.i.i.i93.i = add nuw nsw i32 %timeout.0.i.i.i87.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i87.i)
  %cmp5.i.i.i94.i = icmp ult i32 %timeout.0.i.i.i87.i, 19
  %or.cond.i.i.i95.i = select i1 %cmp.not.i.i.i92.i, i1 %cmp5.i.i.i94.i, i1 false
  br i1 %or.cond.i.i.i95.i, label %do.body.i.i.i96.i.do.body.i.i.i96.i_crit_edge, label %c6xdigio_get_encoder_bits.exit97.i

do.body.i.i.i96.i.do.body.i.i.i96.i_crit_edge:    ; preds = %do.body.i.i.i96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i96.i

c6xdigio_get_encoder_bits.exit97.i:               ; preds = %do.body.i.i.i96.i
  %46 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i.i, align 4
  %add.i99.i = add i32 %47, 1
  %and.i100.i = and i32 %add.i99.i, 1048575
  %add1.i101.i = or i32 %and.i100.i, -18874368
  %48 = inttoptr i32 %add1.i101.i to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %50 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i104.i = and i32 %51, 1048575
  %add.i.i.i105.i = or i32 %and.i.i.i104.i, -18874368
  %52 = inttoptr i32 %add.i.i.i105.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %conv.i.i) #5, !srcloc !28
  br label %do.body.i.i.i115.i

do.body.i.i.i115.i:                               ; preds = %do.body.i.i.i115.i.do.body.i.i.i115.i_crit_edge, %c6xdigio_get_encoder_bits.exit97.i
  %timeout.0.i.i.i106.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit97.i ], [ %inc.i.i.i112.i, %do.body.i.i.i115.i.do.body.i.i.i115.i_crit_edge ]
  %53 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i107.i = add i32 %54, 1
  %and.i2.i.i108.i = and i32 %add.i1.i.i107.i, 1048575
  %add1.i.i.i109.i = or i32 %and.i2.i.i108.i, -18874368
  %55 = inttoptr i32 %add1.i.i.i109.i to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp.not.i.i.i111.i = icmp sgt i8 %56, -1
  %inc.i.i.i112.i = add nuw nsw i32 %timeout.0.i.i.i106.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i106.i)
  %cmp5.i.i.i113.i = icmp ult i32 %timeout.0.i.i.i106.i, 19
  %or.cond.i.i.i114.i = select i1 %cmp.not.i.i.i111.i, i1 %cmp5.i.i.i113.i, i1 false
  br i1 %or.cond.i.i.i114.i, label %do.body.i.i.i115.i.do.body.i.i.i115.i_crit_edge, label %c6xdigio_get_encoder_bits.exit116.i

do.body.i.i.i115.i.do.body.i.i.i115.i_crit_edge:  ; preds = %do.body.i.i.i115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i115.i

c6xdigio_get_encoder_bits.exit116.i:              ; preds = %do.body.i.i.i115.i
  %57 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase.i.i, align 4
  %add.i118.i = add i32 %58, 1
  %and.i119.i = and i32 %add.i118.i, 1048575
  %add1.i120.i = or i32 %and.i119.i, -18874368
  %59 = inttoptr i32 %add1.i120.i to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %61 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i123.i = and i32 %62, 1048575
  %add.i.i.i124.i = or i32 %and.i.i.i123.i, -18874368
  %63 = inttoptr i32 %add.i.i.i124.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv.i.i.i) #5, !srcloc !28
  br label %do.body.i.i.i134.i

do.body.i.i.i134.i:                               ; preds = %do.body.i.i.i134.i.do.body.i.i.i134.i_crit_edge, %c6xdigio_get_encoder_bits.exit116.i
  %timeout.0.i.i.i125.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit116.i ], [ %inc.i.i.i131.i, %do.body.i.i.i134.i.do.body.i.i.i134.i_crit_edge ]
  %64 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i126.i = add i32 %65, 1
  %and.i2.i.i127.i = and i32 %add.i1.i.i126.i, 1048575
  %add1.i.i.i128.i = or i32 %and.i2.i.i127.i, -18874368
  %66 = inttoptr i32 %add1.i.i.i128.i to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp.not.i.i.i130.i = icmp slt i8 %67, 0
  %inc.i.i.i131.i = add nuw nsw i32 %timeout.0.i.i.i125.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i125.i)
  %cmp5.i.i.i132.i = icmp ult i32 %timeout.0.i.i.i125.i, 19
  %or.cond.i.i.i133.i = select i1 %cmp.not.i.i.i130.i, i1 %cmp5.i.i.i132.i, i1 false
  br i1 %or.cond.i.i.i133.i, label %do.body.i.i.i134.i.do.body.i.i.i134.i_crit_edge, label %c6xdigio_get_encoder_bits.exit135.i

do.body.i.i.i134.i.do.body.i.i.i134.i_crit_edge:  ; preds = %do.body.i.i.i134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i134.i

c6xdigio_get_encoder_bits.exit135.i:              ; preds = %do.body.i.i.i134.i
  %68 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iobase.i.i, align 4
  %add.i137.i = add i32 %69, 1
  %and.i138.i = and i32 %add.i137.i, 1048575
  %add1.i139.i = or i32 %and.i138.i, -18874368
  %70 = inttoptr i32 %add1.i139.i to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %72 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i142.i = and i32 %73, 1048575
  %add.i.i.i143.i = or i32 %and.i.i.i142.i, -18874368
  %74 = inttoptr i32 %add.i.i.i143.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 %conv.i.i) #5, !srcloc !28
  br label %do.body.i.i.i153.i

do.body.i.i.i153.i:                               ; preds = %do.body.i.i.i153.i.do.body.i.i.i153.i_crit_edge, %c6xdigio_get_encoder_bits.exit135.i
  %timeout.0.i.i.i144.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit135.i ], [ %inc.i.i.i150.i, %do.body.i.i.i153.i.do.body.i.i.i153.i_crit_edge ]
  %75 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i145.i = add i32 %76, 1
  %and.i2.i.i146.i = and i32 %add.i1.i.i145.i, 1048575
  %add1.i.i.i147.i = or i32 %and.i2.i.i146.i, -18874368
  %77 = inttoptr i32 %add1.i.i.i147.i to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %cmp.not.i.i.i149.i = icmp sgt i8 %78, -1
  %inc.i.i.i150.i = add nuw nsw i32 %timeout.0.i.i.i144.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i144.i)
  %cmp5.i.i.i151.i = icmp ult i32 %timeout.0.i.i.i144.i, 19
  %or.cond.i.i.i152.i = select i1 %cmp.not.i.i.i149.i, i1 %cmp5.i.i.i151.i, i1 false
  br i1 %or.cond.i.i.i152.i, label %do.body.i.i.i153.i.do.body.i.i.i153.i_crit_edge, label %c6xdigio_get_encoder_bits.exit154.i

do.body.i.i.i153.i.do.body.i.i.i153.i_crit_edge:  ; preds = %do.body.i.i.i153.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i153.i

c6xdigio_get_encoder_bits.exit154.i:              ; preds = %do.body.i.i.i153.i
  %79 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iobase.i.i, align 4
  %add.i156.i = add i32 %80, 1
  %and.i157.i = and i32 %add.i156.i, 1048575
  %add1.i158.i = or i32 %and.i157.i, -18874368
  %81 = inttoptr i32 %add1.i158.i to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %83 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i161.i = and i32 %84, 1048575
  %add.i.i.i162.i = or i32 %and.i.i.i161.i, -18874368
  %85 = inttoptr i32 %add.i.i.i162.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %conv.i.i.i) #5, !srcloc !28
  br label %do.body.i.i.i172.i

do.body.i.i.i172.i:                               ; preds = %do.body.i.i.i172.i.do.body.i.i.i172.i_crit_edge, %c6xdigio_get_encoder_bits.exit154.i
  %timeout.0.i.i.i163.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit154.i ], [ %inc.i.i.i169.i, %do.body.i.i.i172.i.do.body.i.i.i172.i_crit_edge ]
  %86 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i164.i = add i32 %87, 1
  %and.i2.i.i165.i = and i32 %add.i1.i.i164.i, 1048575
  %add1.i.i.i166.i = or i32 %and.i2.i.i165.i, -18874368
  %88 = inttoptr i32 %add1.i.i.i166.i to ptr
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp.not.i.i.i168.i = icmp slt i8 %89, 0
  %inc.i.i.i169.i = add nuw nsw i32 %timeout.0.i.i.i163.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i163.i)
  %cmp5.i.i.i170.i = icmp ult i32 %timeout.0.i.i.i163.i, 19
  %or.cond.i.i.i171.i = select i1 %cmp.not.i.i.i168.i, i1 %cmp5.i.i.i170.i, i1 false
  br i1 %or.cond.i.i.i171.i, label %do.body.i.i.i172.i.do.body.i.i.i172.i_crit_edge, label %c6xdigio_get_encoder_bits.exit173.i

do.body.i.i.i172.i.do.body.i.i.i172.i_crit_edge:  ; preds = %do.body.i.i.i172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i172.i

c6xdigio_get_encoder_bits.exit173.i:              ; preds = %do.body.i.i.i172.i
  %90 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iobase.i.i, align 4
  %add.i175.i = add i32 %91, 1
  %and.i176.i = and i32 %add.i175.i, 1048575
  %add1.i177.i = or i32 %and.i176.i, -18874368
  %92 = inttoptr i32 %add1.i177.i to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %94 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i.i180.i = and i32 %95, 1048575
  %add.i.i.i181.i = or i32 %and.i.i.i180.i, -18874368
  %96 = inttoptr i32 %add.i.i.i181.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %conv.i.i) #5, !srcloc !28
  br label %do.body.i.i.i191.i

do.body.i.i.i191.i:                               ; preds = %do.body.i.i.i191.i.do.body.i.i.i191.i_crit_edge, %c6xdigio_get_encoder_bits.exit173.i
  %timeout.0.i.i.i182.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit173.i ], [ %inc.i.i.i188.i, %do.body.i.i.i191.i.do.body.i.i.i191.i_crit_edge ]
  %97 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i.i183.i = add i32 %98, 1
  %and.i2.i.i184.i = and i32 %add.i1.i.i183.i, 1048575
  %add1.i.i.i185.i = or i32 %and.i2.i.i184.i, -18874368
  %99 = inttoptr i32 %add1.i.i.i185.i to ptr
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %99) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %100)
  %cmp.not.i.i.i187.i = icmp sgt i8 %100, -1
  %inc.i.i.i188.i = add nuw nsw i32 %timeout.0.i.i.i182.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i.i182.i)
  %cmp5.i.i.i189.i = icmp ult i32 %timeout.0.i.i.i182.i, 19
  %or.cond.i.i.i190.i = select i1 %cmp.not.i.i.i187.i, i1 %cmp5.i.i.i189.i, i1 false
  br i1 %or.cond.i.i.i190.i, label %do.body.i.i.i191.i.do.body.i.i.i191.i_crit_edge, label %c6xdigio_get_encoder_bits.exit192.i

do.body.i.i.i191.i.do.body.i.i.i191.i_crit_edge:  ; preds = %do.body.i.i.i191.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i191.i

c6xdigio_get_encoder_bits.exit192.i:              ; preds = %do.body.i.i.i191.i
  %101 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and.i.i194.i = and i32 %102, 1048575
  %add.i.i195.i = or i32 %and.i.i194.i, -18874368
  %103 = inttoptr i32 %add.i.i195.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 0) #5, !srcloc !28
  br label %do.body.i.i205.i

do.body.i.i205.i:                                 ; preds = %do.body.i.i205.i.do.body.i.i205.i_crit_edge, %c6xdigio_get_encoder_bits.exit192.i
  %timeout.0.i.i196.i = phi i32 [ 0, %c6xdigio_get_encoder_bits.exit192.i ], [ %inc.i.i202.i, %do.body.i.i205.i.do.body.i.i205.i_crit_edge ]
  %104 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iobase.i.i, align 4
  %add.i1.i197.i = add i32 %105, 1
  %and.i2.i198.i = and i32 %add.i1.i197.i, 1048575
  %add1.i.i199.i = or i32 %and.i2.i198.i, -18874368
  %106 = inttoptr i32 %add1.i.i199.i to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp.not.i.i201.i = icmp slt i8 %107, 0
  %inc.i.i202.i = add nuw nsw i32 %timeout.0.i.i196.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0.i.i196.i)
  %cmp5.i.i203.i = icmp ult i32 %timeout.0.i.i196.i, 19
  %or.cond.i.i204.i = select i1 %cmp.not.i.i201.i, i1 %cmp5.i.i203.i, i1 false
  br i1 %or.cond.i.i204.i, label %do.body.i.i205.i.do.body.i.i205.i_crit_edge, label %c6xdigio_encoder_read.exit

do.body.i.i205.i.do.body.i.i205.i_crit_edge:      ; preds = %do.body.i.i205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i205.i

c6xdigio_encoder_read.exit:                       ; preds = %do.body.i.i205.i
  %108 = lshr i8 %38, 3
  %109 = and i8 %108, 7
  %and3.i83.i = zext i8 %109 to i32
  %shl11.i = shl nuw nsw i32 %and3.i83.i, 6
  %110 = lshr i8 %16, 3
  %111 = and i8 %110, 7
  %112 = and i8 %27, 56
  %or8214.i = or i8 %112, %111
  %or8.i = zext i8 %or8214.i to i32
  %or12.i = or i32 %shl11.i, %or8.i
  %113 = lshr i8 %49, 3
  %114 = and i8 %113, 7
  %and3.i102.i = zext i8 %114 to i32
  %shl15.i = shl nuw nsw i32 %and3.i102.i, 9
  %or16.i = or i32 %shl15.i, %or12.i
  %115 = lshr i8 %60, 3
  %116 = and i8 %115, 7
  %and3.i121.i = zext i8 %116 to i32
  %shl19.i = shl nuw nsw i32 %and3.i121.i, 12
  %or20.i = or i32 %shl19.i, %or16.i
  %117 = lshr i8 %71, 3
  %118 = and i8 %117, 7
  %and3.i140.i = zext i8 %118 to i32
  %shl23.i = shl nuw nsw i32 %and3.i140.i, 15
  %or24.i = or i32 %shl23.i, %or20.i
  %119 = lshr i8 %82, 3
  %120 = and i8 %119, 7
  %and3.i159.i = zext i8 %120 to i32
  %shl27.i = shl nuw nsw i32 %and3.i159.i, 18
  %or28.i = or i32 %shl27.i, %or24.i
  %121 = lshr i8 %93, 3
  %122 = and i8 %121, 7
  %and3.i178.i = zext i8 %122 to i32
  %shl31.i = shl nuw nsw i32 %and3.i178.i, 21
  %or32.i = or i32 %or28.i, %shl31.i
  %123 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %124, %or32.i
  %shr.i = lshr i32 %124, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.08
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %xor2.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.08, 1
  %126 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %127
  br i1 %cmp, label %c6xdigio_encoder_read.exit.for.body_crit_edge, label %c6xdigio_encoder_read.exit.for.end_crit_edge

c6xdigio_encoder_read.exit.for.end_crit_edge:     ; preds = %c6xdigio_encoder_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

c6xdigio_encoder_read.exit.for.body_crit_edge:    ; preds = %c6xdigio_encoder_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %c6xdigio_encoder_read.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %127, %c6xdigio_encoder_read.exit.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_c6xdigio__234_293_c6xdigio_driver_init6, !1, !"__initcall__kmod_c6xdigio__234_293_c6xdigio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 293, i32 1}
!2 = !{ptr @__exitcall_c6xdigio_driver_exit, !1, !"__exitcall_c6xdigio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 295, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 296, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 297, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 288, i32 17}
!12 = !{ptr @c6xdigio_driver, !13, !"c6xdigio_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 287, i32 29}
!14 = distinct !{null, !15, !"c6xdigio_pnp_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 233, i32 26}
!16 = distinct !{null, !17, !"c6xdigio_pnp_tbl", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/c6xdigio.c", i32 225, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2153606293}
!28 = !{i64 6070237}
!29 = !{i64 6070632}
!30 = !{i64 2154244538}
!31 = !{i64 2154244858}
