; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_apci_2032.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_apci_2032.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.apci2032_int_private = type { %struct.spinlock, i8, i8 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_addi_apci_2032__236_326_apci2032_driver_init6 = internal global ptr @apci2032_driver_init, section ".initcall6.init", align 4
@apci2032_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @apci2032_detach, ptr @apci2032_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apci2032_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @apci2032_pci_table, ptr @apci2032_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_apci2032_driver_exit = internal global ptr @apci2032_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"addi_apci_2032.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [69 x i8] c"addi_apci_2032.description=ADDI-DATA APCI-2032, 32 channel DO boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"addi_apci_2032.file=drivers/comedi/drivers/addi_apci_2032\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"addi_apci_2032.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"addi_apci_2032\00", [17 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@apci2032_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&subpriv->spinlock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@apci2032_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 4100, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"apci2032_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 301, i32 29 }
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"apci2032_pci_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 320, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 302, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 280, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"apci2032_pci_table\00", align 1
@___asan_gen_.18 = private constant [43 x i8] c"../drivers/comedi/drivers/addi_apci_2032.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 314, i32 35 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_apci2032_driver_exit, ptr @__initcall__kmod_addi_apci_2032__236_326_apci2032_driver_init6, ptr @apci2032_driver_exit, ptr @apci2032_driver, ptr @apci2032_pci_driver, ptr @.str, ptr @apci2032_auto_attach.__key, ptr @.str.1, ptr @apci2032_pci_table], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci2032_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci2032_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci2032_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci2032_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @apci2032_driver, ptr noundef nonnull @apci2032_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apci2032_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @apci2032_driver, ptr noundef nonnull @apci2032_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apci2032_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and.i = and i32 %3, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 0) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %6, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %7 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 0) #7, !srcloc !31
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add10.i = add i32 %9, 16
  tail call void @addi_watchdog_reset(i32 noundef %add10.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #7
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %10 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_subdev, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  tail call void @kfree(ptr noundef %13) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %call1 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup42_crit_edge

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %and.i = and i32 %4, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 0) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %7, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %8 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 0) #7, !srcloc !31
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add10.i = add i32 %10, 16
  tail call void @addi_watchdog_reset(i32 noundef %add10.i) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @apci2032_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %14, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp eq i32 %call.i, 0
  br i1 %cmp6, label %if.then7, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %irq9 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup42_crit_edge

if.end11.cleanup42_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end15:                                         ; preds = %if.end11
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %18 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 131072, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 13
  %23 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 15
  %24 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 20
  %25 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @apci2032_do_insn_bits, ptr %insn_bits, align 4
  %26 = load ptr, ptr %subdevices, align 4
  %arrayidx18 = getelementptr %struct.comedi_subdevice, ptr %26, i32 1
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add = add i32 %28, 16
  %call20 = tail call i32 @addi_watchdog_init(ptr noundef %arrayidx18, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.cleanup42_crit_edge

if.end15.cleanup42_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end23:                                         ; preds = %if.end15
  %29 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subdevices, align 4
  %type26 = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 2
  %31 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %type26, align 4
  %subdev_flags27 = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 4
  %32 = ptrtoint ptr %subdev_flags27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65536, ptr %subdev_flags27, align 4
  %n_chan28 = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 3
  %33 = ptrtoint ptr %n_chan28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %n_chan28, align 4
  %maxdata29 = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 13
  %34 = ptrtoint ptr %maxdata29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %maxdata29, align 4
  %range_table30 = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 15
  %35 = ptrtoint ptr %range_table30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @range_unipolar5, ptr %range_table30, align 4
  %insn_bits31 = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 20
  %36 = ptrtoint ptr %insn_bits31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @apci2032_int_insn_bits, ptr %insn_bits31, align 4
  %irq32 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %37 = ptrtoint ptr %irq32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool33.not = icmp eq i32 %38, 0
  br i1 %tobool33.not, label %if.end23.cleanup42_crit_edge, label %if.then34

if.end23.cleanup42_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.then34:                                        ; preds = %if.end23
  %arrayidx25 = getelementptr %struct.comedi_subdevice, ptr %30, i32 2
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %39 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx25, ptr %read_subdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 48) #10
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %if.then34.cleanup42_crit_edge, label %do.body

if.then34.cleanup42_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

do.body:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @apci2032_auto_attach.__key, i16 noundef signext 3) #7
  %private = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 6
  %41 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %private, align 4
  %42 = ptrtoint ptr %subdev_flags27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 536969216, ptr %subdev_flags27, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 5
  %43 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 23
  %44 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @apci2032_int_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 22
  %45 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @apci2032_int_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %30, i32 2, i32 25
  %46 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @apci2032_int_cancel, ptr %cancel, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %do.body, %if.then34.cleanup42_crit_edge, %if.end23.cleanup42_crit_edge, %if.end15.cleanup42_crit_edge, %if.end11.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.1 = phi i32 [ %call1, %entry.cleanup42_crit_edge ], [ %call12, %if.end11.cleanup42_crit_edge ], [ %call20, %if.end15.cleanup42_crit_edge ], [ 0, %do.body ], [ 0, %if.end23.cleanup42_crit_edge ], [ -12, %if.then34.cleanup42_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @addi_watchdog_reset(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %bits = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 12
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #7, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  tail call void @_raw_spin_lock(ptr noundef %11) #7
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add10 = add i32 %13, 8
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %14 = inttoptr i32 %add12 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #7, !srcloc !33
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  %and16 = and i32 %16, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %and17 = and i32 %15, 50331648
  %17 = xor i32 %and17, 50331648
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add19 = add i32 %19, 4
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %20 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #7, !srcloc !31
  %active = getelementptr inbounds %struct.apci2032_int_private, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %if.end7.if.end48_crit_edge, label %land.lhs.true

if.end7.if.end48_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end7
  %enabled_isns = getelementptr inbounds %struct.apci2032_int_private, ptr %11, i32 0, i32 2
  %23 = ptrtoint ptr %enabled_isns to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enabled_isns, align 1
  %conv = zext i8 %24 to i32
  %and24 = and i32 %and16, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp.not = icmp eq i32 %and24, 0
  br i1 %cmp.not, label %land.lhs.true.if.end48_crit_edge, label %if.then26

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then26:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bits) #7
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %25 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2779.not = icmp eq i32 %26, 0
  br i1 %cmp2779.not, label %if.then26.for.end_crit_edge, label %for.body.lr.ph

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then26
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %27 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chanlist, align 4
  %29 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chanlist_len, align 4
  %umax = call i32 @llvm.umax.i32(i32 %30, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv357880 = phi i16 [ 0, %for.body.lr.ph ], [ %conv3577, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %28, i32 %i.081
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %and29 = and i32 %32, 65535
  %shl = shl nuw i32 1, %and29
  %and30 = and i32 %shl, %and16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %shl33 = shl nuw i32 1, %i.081
  %33 = trunc i32 %shl33 to i16
  %conv35 = select i1 %tobool31.not, i16 0, i16 %33
  %conv3577 = or i16 %conv357880, %conv35
  %inc = add nuw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then26.for.end_crit_edge
  %conv3578.lcssa = phi i16 [ 0, %if.then26.for.end_crit_edge ], [ %conv3577, %for.body.for.end_crit_edge ]
  %34 = ptrtoint ptr %bits to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv3578.lcssa, ptr %bits, align 2
  %call37 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %bits, i32 noundef 1) #7
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %35 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %36)
  %cmp38 = icmp eq i32 %36, 32
  br i1 %cmp38, label %land.lhs.true40, label %for.end.if.end47_crit_edge

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true40:                                  ; preds = %for.end
  %37 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %async, align 4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %41 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp42.not = icmp ult i32 %40, %42
  br i1 %cmp42.not, label %land.lhs.true40.if.end47_crit_edge, label %if.then44

land.lhs.true40.if.end47_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  %events = getelementptr inbounds %struct.comedi_async, ptr %38, i32 0, i32 16
  %43 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %events, align 4
  %or46 = or i32 %44, 2
  store i32 %or46, ptr %events, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %land.lhs.true40.if.end47_crit_edge, %for.end.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bits) #7
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true.if.end48_crit_edge, %if.end7.if.end48_crit_edge
  call void @_raw_spin_unlock(ptr noundef %11) #7
  %call50 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end48 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #7, !srcloc !33
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %state, align 4
  %call3 = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %and7 = and i32 %10, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #7, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addi_watchdog_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_int_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #7, !srcloc !33
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %and3 = and i32 %4, 3
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci2032_int_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
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
  %and.i61 = and i32 %3, 64
  store i32 %and.i61, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %cmp.i62 = icmp ne i32 %and.i61, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i61, i32 %3)
  %cmp1.not.i63 = icmp eq i32 %and.i61, %3
  %or.cond.i64 = and i1 %cmp.i62, %cmp1.not.i63
  %4 = select i1 %or.cond.i, i1 %or.cond.i64, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i66 = and i32 %6, 2
  store i32 %and.i66, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %cmp.i67 = icmp ne i32 %and.i66, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i66, i32 %6)
  %cmp1.not.i68 = icmp eq i32 %and.i66, %6
  %or.cond.i69 = and i1 %cmp.i67, %cmp1.not.i68
  %7 = select i1 %4, i1 %or.cond.i69, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i71 = and i32 %9, 32
  store i32 %and.i71, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %cmp.i72 = icmp ne i32 %and.i71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i71, i32 %9)
  %cmp1.not.i73 = icmp eq i32 %and.i71, %9
  %or.cond.i74 = and i1 %cmp.i72, %cmp1.not.i73
  %10 = select i1 %7, i1 %or.cond.i74, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i76 = and i32 %12, 33
  store i32 %and.i76, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %cmp.i77 = icmp ne i32 %and.i76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i76, i32 %12)
  %cmp1.not.i78 = icmp eq i32 %and.i76, %12
  %or.cond.i79 = and i1 %cmp.i77, %cmp1.not.i78
  %13 = select i1 %10, i1 %or.cond.i79, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !41
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
  %cmp.not.i81 = icmp eq i32 %16, 0
  br i1 %cmp.not.i81, label %if.end14.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

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
  %retval.0.i82 = phi i32 [ -22, %if.then.i ], [ 0, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i83 = icmp eq i32 %19, 0
  br i1 %cmp.not.i83, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit86_crit_edge, label %if.then.i84

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit86_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit86

if.then.i84:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit86

comedi_check_trigger_arg_is.exit86:               ; preds = %if.then.i84, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit86_crit_edge
  %retval.0.i85 = phi i32 [ -22, %if.then.i84 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit86_crit_edge ]
  %or18 = or i32 %retval.0.i85, %retval.0.i82
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i87 = icmp eq i32 %22, 0
  br i1 %cmp.not.i87, label %comedi_check_trigger_arg_is.exit86.comedi_check_trigger_arg_is.exit90_crit_edge, label %if.then.i88

comedi_check_trigger_arg_is.exit86.comedi_check_trigger_arg_is.exit90_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit90

if.then.i88:                                      ; preds = %comedi_check_trigger_arg_is.exit86
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit90

comedi_check_trigger_arg_is.exit90:               ; preds = %if.then.i88, %comedi_check_trigger_arg_is.exit86.comedi_check_trigger_arg_is.exit90_crit_edge
  %retval.0.i89 = phi i32 [ -22, %if.then.i88 ], [ 0, %comedi_check_trigger_arg_is.exit86.comedi_check_trigger_arg_is.exit90_crit_edge ]
  %or20 = or i32 %or18, %retval.0.i89
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i91 = icmp eq i32 %27, %25
  br i1 %cmp.not.i91, label %comedi_check_trigger_arg_is.exit90.comedi_check_trigger_arg_is.exit94_crit_edge, label %if.then.i92

comedi_check_trigger_arg_is.exit90.comedi_check_trigger_arg_is.exit94_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit94

if.then.i92:                                      ; preds = %comedi_check_trigger_arg_is.exit90
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit94

comedi_check_trigger_arg_is.exit94:               ; preds = %if.then.i92, %comedi_check_trigger_arg_is.exit90.comedi_check_trigger_arg_is.exit94_crit_edge
  %retval.0.i93 = phi i32 [ -22, %if.then.i92 ], [ 0, %comedi_check_trigger_arg_is.exit90.comedi_check_trigger_arg_is.exit94_crit_edge ]
  %or22 = or i32 %or20, %retval.0.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i95 = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %comedi_check_trigger_arg_is.exit94
  br i1 %cmp.i95, label %if.then24.if.end30.sink.split_crit_edge, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24.if.end30.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit94
  br i1 %cmp.i95, label %if.else.if.end30_crit_edge, label %if.else.if.end30.sink.split_crit_edge

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %if.then24.if.end30.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then24.if.end30.sink.split_crit_edge ], [ 0, %if.else.if.end30.sink.split_crit_edge ]
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge, %if.then24.if.end30_crit_edge
  %call25.pn = phi i32 [ 0, %if.then24.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ], [ -22, %if.end30.sink.split ]
  %err.0 = or i32 %or22, %call25.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  %. = select i1 %tobool31.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_int_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not = icmp eq i32 %5, 0
  br i1 %cmp27.not, label %entry.do.body3_crit_edge, label %for.body.lr.ph

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

for.body.lr.ph:                                   ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %enabled_isns.028 = phi i8 [ 0, %for.body.lr.ph ], [ %conv2, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %n.029
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, 65535
  %shl = shl nuw i32 1, %and
  %10 = trunc i32 %shl to i8
  %conv2 = or i8 %enabled_isns.028, %10
  %inc = add nuw i32 %n.029, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.do.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.do.body3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

do.body3:                                         ; preds = %for.body.do.body3_crit_edge, %entry.do.body3_crit_edge
  %enabled_isns.0.lcssa = phi i8 [ 0, %entry.do.body3_crit_edge ], [ %conv2, %for.body.do.body3_crit_edge ]
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %enabled_isns9 = getelementptr inbounds %struct.apci2032_int_private, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %enabled_isns9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %enabled_isns.0.lcssa, ptr %enabled_isns9, align 1
  %active = getelementptr inbounds %struct.apci2032_int_private, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %active, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %conv13 = zext i8 %enabled_isns.0.lcssa to i32
  %13 = shl nuw i32 %conv13, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add = add i32 %15, 4
  %and14 = and i32 %add, 1048575
  %add15 = or i32 %and14, -18874368
  %16 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #7, !srcloc !31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_int_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %active = getelementptr inbounds %struct.apci2032_int_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %active.i = getelementptr inbounds %struct.apci2032_int_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %active.i, align 4
  %enabled_isns.i = getelementptr inbounds %struct.apci2032_int_private, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %enabled_isns.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled_isns.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %9, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 0) #7, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci2032_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @apci2032_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_addi_apci_2032__236_326_apci2032_driver_init6, !1, !"__initcall__kmod_addi_apci_2032__236_326_apci2032_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 326, i32 1}
!2 = !{ptr @__exitcall_apci2032_driver_exit, !1, !"__exitcall_apci2032_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 328, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 329, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 330, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 302, i32 17}
!12 = !{ptr @apci2032_driver, !13, !"apci2032_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 301, i32 29}
!14 = !{ptr @apci2032_auto_attach.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 280, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @apci2032_pci_driver, !18, !"apci2032_pci_driver", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 320, i32 26}
!19 = !{ptr @apci2032_pci_table, !20, !"apci2032_pci_table", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/addi_apci_2032.c", i32 314, i32 35}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2154534716}
!31 = !{i64 4622534}
!32 = !{i64 2154535198}
!33 = !{i64 4622952}
!34 = !{i64 2154533147}
!35 = !{i64 2154533916}
!36 = !{i64 2154534181}
!37 = !{i8 0, i8 2}
!38 = !{i64 2154529440}
!39 = !{i64 2154529705}
!40 = !{i64 2154530624}
!41 = !{i32 0, i32 33}
!42 = !{i64 2154531852}
!43 = !{i64 2154530884}
