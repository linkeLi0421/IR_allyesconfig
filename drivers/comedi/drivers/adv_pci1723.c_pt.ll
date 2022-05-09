; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/adv_pci1723.c_pt.bc'
source_filename = "../drivers/comedi/drivers/adv_pci1723.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_adv_pci1723__236_222_adv_pci1723_driver_init6 = internal global ptr @adv_pci1723_driver_init, section ".initcall6.init", align 4
@adv_pci1723_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @pci1723_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@adv_pci1723_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @adv_pci1723_pci_table, ptr @adv_pci1723_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adv_pci1723_driver_exit = internal global ptr @adv_pci1723_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [49 x i8] c"adv_pci1723.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [57 x i8] c"adv_pci1723.description=Advantech PCI-1723 Comedi driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"adv_pci1723.file=drivers/comedi/drivers/adv_pci1723\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"adv_pci1723.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adv_pci1723\00", [20 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@adv_pci1723_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5118, i32 5923, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"adv_pci1723_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 196, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"adv_pci1723_pci_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 216, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 197, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"adv_pci1723_pci_table\00", align 1
@___asan_gen_.11 = private constant [40 x i8] c"../drivers/comedi/drivers/adv_pci1723.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 210, i32 35 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_adv_pci1723_driver_exit, ptr @__initcall__kmod_adv_pci1723__236_222_adv_pci1723_driver_init6, ptr @adv_pci1723_driver_exit, ptr @adv_pci1723_driver, ptr @adv_pci1723_pci_driver, ptr @.str, ptr @adv_pci1723_pci_table], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci1723_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci1723_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci1723_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_pci1723_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @adv_pci1723_driver, ptr noundef nonnull @adv_pci1723_pci_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv_pci1723_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @adv_pci1723_driver, ptr noundef nonnull @adv_pci1723_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1723_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #4
  %call1 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %iobase, align 4
  %call2 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3276800, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 13
  %8 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 15
  %9 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @range_bipolar10, ptr %range_table, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 19
  %10 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pci1723_ao_insn_write, ptr %insn_write, align 4
  %call7 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add = add i32 %12, 18
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %13 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 256) #4, !srcloc !28
  %14 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp132 = icmp sgt i32 %15, 0
  br i1 %cmp132, label %do.body15.lr.ph, label %do.body.do.body38_crit_edge

do.body.do.body38_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

do.body15.lr.ph:                                  ; preds = %do.body
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 32
  br label %do.body15

do.body15:                                        ; preds = %do.body15.do.body15_crit_edge, %do.body15.lr.ph
  %i.0133 = phi i32 [ 0, %do.body15.lr.ph ], [ %inc, %do.body15.do.body15_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %16 = trunc i32 %i.0133 to i16
  %conv = shl i16 %16, 8
  %17 = and i16 %conv, 1792
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) inttoptr (i32 -18874348 to ptr), i16 %17) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add24 = add i32 %19, 38
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %20 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 0) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %mul = shl nuw i32 %i.0133, 1
  %add33 = add i32 %22, %mul
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %23 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 128) #4, !srcloc !28
  %24 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %readback, align 4
  %arrayidx37 = getelementptr i32, ptr %25, i32 %i.0133
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32768, ptr %arrayidx37, align 4
  %inc = add nuw nsw i32 %i.0133, 1
  %27 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_chan, align 4
  %cmp = icmp slt i32 %inc, %28
  br i1 %cmp, label %do.body15.do.body15_crit_edge, label %do.body15.do.body38_crit_edge

do.body15.do.body38_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

do.body15.do.body15_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

do.body38:                                        ; preds = %do.body15.do.body38_crit_edge, %do.body.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add42 = add i32 %30, 32
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %31 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 0) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add50 = add i32 %33, 18
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %34 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 0) #4, !srcloc !28
  %35 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %subdevices, align 4
  %type56 = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 2
  %37 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %type56, align 4
  %subdev_flags57 = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 4
  %38 = ptrtoint ptr %subdev_flags57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196608, ptr %subdev_flags57, align 4
  %n_chan58 = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 3
  %39 = ptrtoint ptr %n_chan58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %n_chan58, align 4
  %maxdata59 = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 13
  %40 = ptrtoint ptr %maxdata59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %maxdata59, align 4
  %range_table60 = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 15
  %41 = ptrtoint ptr %range_table60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @range_unipolar5, ptr %range_table60, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 21
  %42 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pci1723_dio_insn_config, ptr %insn_config, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 20
  %43 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pci1723_dio_insn_bits, ptr %insn_bits, align 4
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add62 = add i32 %45, 26
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %46 = inttoptr i32 %add64 to ptr
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %46) #4, !srcloc !34
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %conv67 = zext i16 %48 to i32
  %and68 = and i32 %conv67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.then70, label %do.body38.if.end72_crit_edge

do.body38.if.end72_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then70:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  %io_bits = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 12
  %49 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_bits, align 4
  %or71 = or i32 %50, 255
  store i32 %or71, ptr %io_bits, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %do.body38.if.end72_crit_edge
  %and73 = and i32 %conv67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end72.if.end78_crit_edge

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  %io_bits76 = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 12
  %51 = ptrtoint ptr %io_bits76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io_bits76, align 4
  %or77 = or i32 %52, 65280
  store i32 %or77, ptr %io_bits76, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  %53 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase, align 4
  %add81 = add i32 %54, 28
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %55 = inttoptr i32 %add83 to ptr
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %55) #4, !srcloc !34
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %conv87 = zext i16 %57 to i32
  %state = getelementptr %struct.comedi_subdevice, ptr %36, i32 1, i32 29
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv87, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1723_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul = shl nuw nsw i32 %and, 1
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add1 = add i32 %8, %mul
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #4, !srcloc !28
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx4 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %arrayidx4, align 4
  %inc = add nuw i32 %i.013, 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %14, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1723_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %cond = select i1 %cmp, i32 255, i32 65280
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %cond) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %and1 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and7 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %4 = select i1 %tobool2.not, i16 256, i16 0
  %5 = or i16 %4, 512
  %6 = select i1 %tobool8.not, i16 %5, i16 %4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 26
  %and14 = and i32 %add, 1048575
  %add15 = or i32 %and14, -18874368
  %9 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #4, !srcloc !28
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1723_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
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
  %add = add i32 %4, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #4, !srcloc !28
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
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #4, !srcloc !34
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_pci1723_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @adv_pci1723_driver, i32 noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_adv_pci1723__236_222_adv_pci1723_driver_init6, !1, !"__initcall__kmod_adv_pci1723__236_222_adv_pci1723_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 222, i32 1}
!2 = !{ptr @__exitcall_adv_pci1723_driver_exit, !1, !"__exitcall_adv_pci1723_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 224, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 225, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 226, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 197, i32 17}
!12 = !{ptr @adv_pci1723_driver, !13, !"adv_pci1723_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 196, i32 29}
!14 = !{ptr @adv_pci1723_pci_driver, !15, !"adv_pci1723_pci_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 216, i32 26}
!16 = !{ptr @adv_pci1723_pci_table, !17, !"adv_pci1723_pci_table", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/adv_pci1723.c", i32 210, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2154529481}
!28 = !{i64 4985841}
!29 = !{i64 2154530065}
!30 = !{i64 2154530611}
!31 = !{i64 2154531124}
!32 = !{i64 2154531626}
!33 = !{i64 2154532163}
!34 = !{i64 4986041}
!35 = !{i64 2154533144}
!36 = !{i64 2154533995}
!37 = !{i64 2154526985}
!38 = !{i64 2154527681}
!39 = !{i64 2154528170}
!40 = !{i64 2154529089}
