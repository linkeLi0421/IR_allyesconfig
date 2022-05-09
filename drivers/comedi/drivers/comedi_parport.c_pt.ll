; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/comedi_parport.c_pt.bc'
source_filename = "../drivers/comedi/drivers/comedi_parport.c"
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
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@__initcall__kmod_comedi_parport__234_301_parport_driver_init6 = internal global ptr @parport_driver_init, section ".initcall6.init", align 4
@parport_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @parport_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_parport_driver_exit = internal global ptr @parport_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [52 x i8] c"comedi_parport.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [65 x i8] c"comedi_parport.description=Comedi: Standard parallel port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [58 x i8] c"comedi_parport.file=drivers/comedi/drivers/comedi_parport\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"comedi_parport.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"comedi_parport\00", [17 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"parport_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 295, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [43 x i8] c"../drivers/comedi/drivers/comedi_parport.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 296, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_parport_driver_exit, ptr @__initcall__kmod_comedi_parport__234_301_parport_driver_init6, ptr @parport_driver_exit, ptr @parport_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @parport_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @parport_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_driver_unregister(ptr noundef nonnull @parport_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
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
  %arrayidx2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @parport_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then8, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %irq13 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %9 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool14.not, i32 3, i32 4
  %call15 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %11 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 4
  %14 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196608, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 13
  %16 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 15
  %17 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 20
  %18 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @parport_data_reg_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 21
  %19 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @parport_data_reg_insn_config, ptr %insn_config, align 4
  %20 = load ptr, ptr %subdevices, align 4
  %type22 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 2
  %21 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %type22, align 4
  %subdev_flags23 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 4
  %22 = ptrtoint ptr %subdev_flags23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65536, ptr %subdev_flags23, align 4
  %n_chan24 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 3
  %23 = ptrtoint ptr %n_chan24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %n_chan24, align 4
  %maxdata25 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 13
  %24 = ptrtoint ptr %maxdata25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %maxdata25, align 4
  %range_table26 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 15
  %25 = ptrtoint ptr %range_table26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @range_unipolar5, ptr %range_table26, align 4
  %insn_bits27 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 20
  %26 = ptrtoint ptr %insn_bits27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @parport_status_reg_insn_bits, ptr %insn_bits27, align 4
  %27 = load ptr, ptr %subdevices, align 4
  %type30 = getelementptr %struct.comedi_subdevice, ptr %27, i32 2, i32 2
  %28 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %type30, align 4
  %subdev_flags31 = getelementptr %struct.comedi_subdevice, ptr %27, i32 2, i32 4
  %29 = ptrtoint ptr %subdev_flags31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 131072, ptr %subdev_flags31, align 4
  %n_chan32 = getelementptr %struct.comedi_subdevice, ptr %27, i32 2, i32 3
  %30 = ptrtoint ptr %n_chan32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %n_chan32, align 4
  %maxdata33 = getelementptr %struct.comedi_subdevice, ptr %27, i32 2, i32 13
  %31 = ptrtoint ptr %maxdata33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %maxdata33, align 4
  %range_table34 = getelementptr %struct.comedi_subdevice, ptr %27, i32 2, i32 15
  %32 = ptrtoint ptr %range_table34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @range_unipolar5, ptr %range_table34, align 4
  %insn_bits35 = getelementptr %struct.comedi_subdevice, ptr %27, i32 2, i32 20
  %33 = ptrtoint ptr %insn_bits35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @parport_ctrl_reg_insn_bits, ptr %insn_bits35, align 4
  %34 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool37.not = icmp eq i32 %35, 0
  br i1 %tobool37.not, label %if.end18.do.body_crit_edge, label %if.then38

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then38:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subdevices, align 4
  %arrayidx40 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %38 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx40, ptr %read_subdev, align 4
  %type41 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 2
  %39 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %type41, align 4
  %subdev_flags42 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 4
  %40 = ptrtoint ptr %subdev_flags42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 98304, ptr %subdev_flags42, align 4
  %n_chan43 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 3
  %41 = ptrtoint ptr %n_chan43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %n_chan43, align 4
  %maxdata44 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 13
  %42 = ptrtoint ptr %maxdata44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %maxdata44, align 4
  %range_table45 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 15
  %43 = ptrtoint ptr %range_table45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @range_unipolar5, ptr %range_table45, align 4
  %insn_bits46 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 20
  %44 = ptrtoint ptr %insn_bits46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @parport_intr_insn_bits, ptr %insn_bits46, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 5
  %45 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 23
  %46 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @parport_intr_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 22
  %47 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @parport_intr_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 25
  %48 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @parport_intr_cancel, ptr %cancel, align 4
  br label %do.body

do.body:                                          ; preds = %if.then38, %if.end18.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %and = and i32 %50, 1048575
  %add48 = or i32 %and, -18874368
  %51 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 0) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %add54 = add i32 %53, 2
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %54 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #5, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ %call, %entry.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %val, align 2
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val, i32 noundef 1) #5
  %call5 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_data_reg_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #5, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase3 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase3, align 4
  %and5 = and i32 %6, 1048575
  %add6 = or i32 %and5, -18874368
  %7 = inttoptr i32 %add6 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv9 = zext i8 %8 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv9, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_data_reg_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %and6 = and i8 %3, -33
  %masksel = select i1 %tobool4.not, i8 32, i8 0
  %ctrl.0 = or i8 %masksel, %and6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add10 = add i32 %7, 2
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %8 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %ctrl.0) #5, !srcloc !24
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_status_reg_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %4 = lshr i8 %3, 3
  %5 = zext i8 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_ctrl_reg_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  %4 = and i8 %3, 48
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %7 = trunc i32 %6 to i8
  %conv5 = or i8 %4, %7
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add7 = add i32 %9, 2
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %10 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv5) #5, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state11 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %11 = ptrtoint ptr %state11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state11, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parport_intr_insn_bits(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parport_intr_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %and.i43 = and i32 %3, 64
  store i32 %and.i43, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %cmp.i44 = icmp ne i32 %and.i43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i43, i32 %3)
  %cmp1.not.i45 = icmp eq i32 %and.i43, %3
  %or.cond.i46 = and i1 %cmp.i44, %cmp1.not.i45
  %4 = select i1 %or.cond.i, i1 %or.cond.i46, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i48 = and i32 %6, 4
  store i32 %and.i48, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %cmp.i49 = icmp ne i32 %and.i48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i48, i32 %6)
  %cmp1.not.i50 = icmp eq i32 %and.i48, %6
  %or.cond.i51 = and i1 %cmp.i49, %cmp1.not.i50
  %7 = select i1 %4, i1 %or.cond.i51, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i53 = and i32 %9, 32
  store i32 %and.i53, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %cmp.i54 = icmp ne i32 %and.i53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i53, i32 %9)
  %cmp1.not.i55 = icmp eq i32 %and.i53, %9
  %or.cond.i56 = and i1 %cmp.i54, %cmp1.not.i55
  %10 = select i1 %7, i1 %or.cond.i56, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i58 = and i32 %12, 1
  store i32 %and.i58, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i63 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i64 = icmp eq i32 %19, 0
  br i1 %cmp.not.i64, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge, label %if.then.i65

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit67

if.then.i65:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit67

comedi_check_trigger_arg_is.exit67:               ; preds = %if.then.i65, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge
  %retval.0.i66 = phi i32 [ -22, %if.then.i65 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge ]
  %or12 = or i32 %retval.0.i66, %retval.0.i63
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i68 = icmp eq i32 %22, 0
  br i1 %cmp.not.i68, label %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge, label %if.then.i69

comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit71

if.then.i69:                                      ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit71

comedi_check_trigger_arg_is.exit71:               ; preds = %if.then.i69, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge
  %retval.0.i70 = phi i32 [ -22, %if.then.i69 ], [ 0, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge ]
  %or14 = or i32 %or12, %retval.0.i70
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i72 = icmp eq i32 %27, %25
  br i1 %cmp.not.i72, label %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge, label %if.then.i73

comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit75

if.then.i73:                                      ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit75

comedi_check_trigger_arg_is.exit75:               ; preds = %if.then.i73, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge
  %retval.0.i74 = phi i32 [ -22, %if.then.i73 ], [ 0, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge ]
  %or16 = or i32 %or14, %retval.0.i74
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i76 = icmp eq i32 %30, 0
  br i1 %cmp.not.i76, label %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge, label %if.then.i77

comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit79

if.then.i77:                                      ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit79

comedi_check_trigger_arg_is.exit79:               ; preds = %if.then.i77, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge
  %retval.0.i78 = phi i32 [ -22, %if.then.i77 ], [ 0, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge ]
  %or18 = or i32 %or16, %retval.0.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool19.not = icmp eq i32 %or18, 0
  %. = select i1 %tobool19.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_intr_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %4 = or i8 %3, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add5 = add i32 %6, 2
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #5, !srcloc !24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_intr_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %4 = and i8 %3, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add6 = add i32 %6, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #5, !srcloc !24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_comedi_parport__234_301_parport_driver_init6, !1, !"__initcall__kmod_comedi_parport__234_301_parport_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/comedi_parport.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_parport_driver_exit, !1, !"__exitcall_parport_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/comedi_parport.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/comedi_parport.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/comedi_parport.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/comedi_parport.c", i32 296, i32 17}
!12 = !{ptr @parport_driver, !13, !"parport_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/comedi_parport.c", i32 295, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2154195444}
!24 = !{i64 4621794}
!25 = !{i64 2154195793}
!26 = !{i64 4622189}
!27 = !{i64 2154195014}
!28 = !{i64 2154190818}
!29 = !{i64 2154191247}
!30 = !{i64 2154191549}
!31 = !{i64 2154191938}
!32 = !{i64 2154192367}
!33 = !{i64 2154192669}
!34 = !{i64 2154193058}
!35 = !{i64 2154193542}
!36 = !{i64 2154193849}
!37 = !{i64 2154194278}
!38 = !{i64 2154194585}
