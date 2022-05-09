; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dt2817.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dt2817.c"
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

@__initcall__kmod_dt2817__229_136_dt2817_driver_init6 = internal global ptr @dt2817_driver_init, section ".initcall6.init", align 4
@dt2817_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @dt2817_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_dt2817_driver_exit = internal global ptr @dt2817_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [44 x i8] c"dt2817.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [43 x i8] c"dt2817.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [42 x i8] c"dt2817.file=drivers/comedi/drivers/dt2817\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [19 x i8] c"dt2817.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2817\00", [25 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"dt2817_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 130, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../drivers/comedi/drivers/dt2817.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 131, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_dt2817_driver_exit, ptr @__initcall__kmod_dt2817__229_136_dt2817_driver_init6, ptr @dt2817_driver_exit, ptr @dt2817_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2817_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2817_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @dt2817_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt2817_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @comedi_driver_unregister(ptr noundef nonnull @dt2817_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2817_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %n_chan, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196608, ptr %subdev_flags, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %maxdata, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dt2817_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dt2817_dio_insn_config, ptr %insn_config, align 4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 29
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %and = and i32 %13, 1048575
  %add6 = or i32 %and, -18874368
  %14 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #3, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2817_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase1, align 4
  %add = add i32 %1, 1
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %conv = trunc i32 %3 to i8
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %4 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #3, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %and9 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end22_crit_edge, label %do.body12

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %state15 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state15, align 4
  %shr = lshr i32 %6, 8
  %conv17 = trunc i32 %shr to i8
  %add18 = add i32 %1, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %7 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv17) #3, !srcloc !24
  br label %if.end22

if.end22:                                         ; preds = %do.body12, %if.end.if.end22_crit_edge
  %and23 = and i32 %call, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end37_crit_edge, label %do.body26

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %state29 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %8 = ptrtoint ptr %state29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state29, align 4
  %shr30 = lshr i32 %9, 16
  %conv32 = trunc i32 %shr30 to i8
  %add33 = add i32 %1, 3
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %10 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv32) #3, !srcloc !24
  br label %if.end37

if.end37:                                         ; preds = %do.body26, %if.end22.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call)
  %tobool39.not = icmp ult i32 %call, 16777216
  br i1 %tobool39.not, label %if.end37.if.end53_crit_edge, label %do.body41

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %state44 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %11 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state44, align 4
  %shr45 = lshr i32 %12, 24
  %conv47 = trunc i32 %shr45 to i8
  %add48 = add i32 %1, 4
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %13 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv47) #3, !srcloc !24
  br label %if.end53

if.end53:                                         ; preds = %do.body41, %if.end37.if.end53_crit_edge, %entry.if.end53_crit_edge
  %and55 = and i32 %add, 1048575
  %add56 = or i32 %and55, -18874368
  %14 = inttoptr i32 %add56 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  %conv59 = zext i8 %15 to i32
  %add61 = add i32 %1, 2
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %16 = inttoptr i32 %add63 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  %conv67 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv67, 8
  %or = or i32 %shl, %conv59
  %add69 = add i32 %1, 3
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %18 = inttoptr i32 %add71 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %conv75 = zext i8 %19 to i32
  %shl76 = shl nuw nsw i32 %conv75, 16
  %or77 = or i32 %shl76, %or
  %add79 = add i32 %1, 4
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %20 = inttoptr i32 %add81 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %conv85 = zext i8 %21 to i32
  %shl86 = shl nuw i32 %conv85, 24
  %or87 = or i32 %shl86, %or77
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or87, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2817_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp ult i32 %and, 8
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp1 = icmp ult i32 %and, 16
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and)
  %cmp4 = icmp ult i32 %and, 24
  %. = select i1 %cmp4, i32 16711680, i32 -16777216
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mask.0 = phi i32 [ 255, %entry.if.end8_crit_edge ], [ 65280, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %mask.0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %and11 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  %spec.select = zext i1 %tobool12.not to i32
  %and16 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or19 = or i32 %spec.select, 2
  %oe.1 = select i1 %tobool17.not, i32 %spec.select, i32 %or19
  %and22 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or25 = or i32 %oe.1, 4
  %oe.2 = select i1 %tobool23.not, i32 %oe.1, i32 %or25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool29.not = icmp ult i32 %3, 16777216
  %or31 = or i32 %oe.2, 8
  %oe.3 = select i1 %tobool29.not, i32 %oe.2, i32 %or31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %conv = trunc i32 %oe.3 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %and33 = and i32 %5, 1048575
  %add34 = or i32 %and33, -18874368
  %6 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #3, !srcloc !24
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end10 ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

!0 = !{ptr @__initcall__kmod_dt2817__229_136_dt2817_driver_init6, !1, !"__initcall__kmod_dt2817__229_136_dt2817_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dt2817.c", i32 136, i32 1}
!2 = !{ptr @__exitcall_dt2817_driver_exit, !1, !"__exitcall_dt2817_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dt2817.c", i32 138, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dt2817.c", i32 139, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dt2817.c", i32 140, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dt2817.c", i32 131, i32 17}
!12 = !{ptr @dt2817_driver, !13, !"dt2817_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dt2817.c", i32 130, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2153905695}
!24 = !{i64 6259932}
!25 = !{i64 2153903149}
!26 = !{i64 2153903498}
!27 = !{i64 2153903848}
!28 = !{i64 2153904198}
!29 = !{i64 6260327}
!30 = !{i64 2153904598}
!31 = !{i64 2153904879}
!32 = !{i64 2153905160}
!33 = !{i64 2153905441}
!34 = !{i64 2153902800}
