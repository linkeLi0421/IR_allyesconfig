; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_apci_16xx.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_apci_16xx.c"
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
%struct.apci16xx_boardinfo = type { ptr, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_addi_apci_16xx__236_173_apci16xx_driver_init6 = internal global ptr @apci16xx_driver_init, section ".initcall6.init", align 4
@apci16xx_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @apci16xx_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apci16xx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @apci16xx_pci_table, ptr @apci16xx_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_apci16xx_driver_exit = internal global ptr @apci16xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [68 x i8] c"addi_apci_16xx.description=ADDI-DATA APCI-1648/1696, TTL I/O boards\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [52 x i8] c"addi_apci_16xx.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"addi_apci_16xx.file=drivers/comedi/drivers/addi_apci_16xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"addi_apci_16xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"addi_apci_16xx\00", [17 x i8] zeroinitializer }, align 32
@apci16xx_boardtypes = internal constant { [2 x %struct.apci16xx_boardinfo], [16 x i8] } { [2 x %struct.apci16xx_boardinfo] [%struct.apci16xx_boardinfo { ptr @.str.1, i32 48 }, %struct.apci16xx_boardinfo { ptr @.str.2, i32 96 }], [16 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apci1648\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apci1696\00", [23 x i8] zeroinitializer }, align 32
@apci16xx_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 4105, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5560, i32 4106, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"apci16xx_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 147, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"apci16xx_pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 167, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 148, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"apci16xx_boardtypes\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 36, i32 40 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 38, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 42, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"apci16xx_pci_table\00", align 1
@___asan_gen_.22 = private constant [43 x i8] c"../drivers/comedi/drivers/addi_apci_16xx.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 160, i32 35 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_apci16xx_driver_exit, ptr @__initcall__kmod_addi_apci_16xx__236_173_apci16xx_driver_init6, ptr @apci16xx_driver_exit, ptr @apci16xx_driver, ptr @apci16xx_pci_driver, ptr @.str, ptr @apci16xx_boardtypes, ptr @.str.1, ptr @.str.2, ptr @apci16xx_pci_table], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci16xx_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci16xx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci16xx_boardtypes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci16xx_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apci16xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @apci16xx_driver, ptr noundef nonnull @apci16xx_pci_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apci16xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @apci16xx_driver, ptr noundef nonnull @apci16xx_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci16xx_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %cmp = icmp ugt i32 %context, 1
  %arrayidx = getelementptr [2 x %struct.apci16xx_boardinfo], ptr @apci16xx_boardtypes, i32 0, i32 %context
  %tobool.not71 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not71
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %board_ptr, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board_name, align 4
  %call3 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %n_chan = getelementptr [2 x %struct.apci16xx_boardinfo], ptr @apci16xx_boardtypes, i32 0, i32 %context, i32 1
  %7 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %8, 32
  %mul = shl nsw i32 %div, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul)
  %cmp9 = icmp ugt i32 %8, %mul
  %inc = zext i1 %cmp9 to i32
  %n_subdevs.0 = add nsw i32 %div, %inc
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %mul)
  %call14 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %n_subdevs.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_subdevs.0)
  %cmp1872.not = icmp eq i32 %n_subdevs.0, 0
  br i1 %cmp1872.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_chan, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subdevices, align 4
  %type = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 4
  %15 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196608, ptr %subdev_flags, align 4
  %mul20 = shl i32 %i.073, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul20, i32 %11)
  %cmp22 = icmp slt i32 %mul20, %11
  %spec.select70 = select i1 %cmp22, i32 32, i32 %9
  %n_chan23 = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 3
  %16 = ptrtoint ptr %n_chan23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select70, ptr %n_chan23, align 4
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 13
  %17 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 15
  %18 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 21
  %19 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @apci16xx_insn_config, ptr %insn_config, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 20
  %20 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @apci16xx_dio_insn_bits, ptr %insn_bits, align 4
  %io_bits = getelementptr %struct.comedi_subdevice, ptr %13, i32 %i.073, i32 12
  %21 = ptrtoint ptr %io_bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %io_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_bits, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %mul26 = shl i32 %i.073, 2
  %add = add i32 %mul26, 32
  %add27 = add i32 %add, %26
  %and = and i32 %add27, 1048575
  %add28 = or i32 %and, -18874368
  %27 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #4, !srcloc !34
  %inc30 = add nuw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc30, %n_subdevs.0
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ %call14, %if.end6.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci16xx_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp1 = icmp ult i32 %and, 16
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and)
  %cmp4 = icmp ult i32 %and, 24
  %. = select i1 %cmp4, i32 16711680, i32 -16777216
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mask.0 = phi i32 [ 255, %entry.if.end8_crit_edge ], [ 65280, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %mask.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %mul = shl i32 %8, 2
  %add = add i32 %6, 32
  %add11 = add i32 %add, %mul
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %4) #4, !srcloc !34
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.body ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci16xx_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %mul = shl i32 %6, 2
  %add = add i32 %4, 20
  %add1 = add i32 %add, %mul
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %2) #4, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase4 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase4, align 4
  %index5 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %10 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index5, align 4
  %mul6 = shl i32 %11, 2
  %add7 = add i32 %9, 8
  %add8 = add i32 %add7, %mul6
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %12 = inttoptr i32 %add10 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #4, !srcloc !37
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci16xx_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @apci16xx_driver, i32 noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_addi_apci_16xx__236_173_apci16xx_driver_init6, !1, !"__initcall__kmod_addi_apci_16xx__236_173_apci16xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 173, i32 1}
!2 = !{ptr @__exitcall_apci16xx_driver_exit, !1, !"__exitcall_apci16xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 175, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 176, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 177, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 148, i32 17}
!12 = !{ptr @apci16xx_driver, !13, !"apci16xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 147, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 38, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 42, i32 12}
!18 = !{ptr @apci16xx_boardtypes, !19, !"apci16xx_boardtypes", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 36, i32 40}
!20 = !{ptr @apci16xx_pci_driver, !21, !"apci16xx_pci_driver", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 167, i32 26}
!22 = !{ptr @apci16xx_pci_table, !23, !"apci16xx_pci_table", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/addi_apci_16xx.c", i32 160, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2154527020}
!34 = !{i64 4984013}
!35 = !{i64 2154524552}
!36 = !{i64 2154525122}
!37 = !{i64 4984431}
!38 = !{i64 2154526179}
