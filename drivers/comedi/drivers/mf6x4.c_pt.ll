; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/mf6x4.c_pt.bc'
source_filename = "../drivers/comedi/drivers/mf6x4.c"
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
%struct.mf6x4_board = type { ptr, [3 x i32] }
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
%struct.mf6x4_private = type { ptr, ptr, ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_mf6x4__236_306_mf6x4_driver_init6 = internal global ptr @mf6x4_driver_init, section ".initcall6.init", align 4
@mf6x4_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @mf6x4_detach, ptr @mf6x4_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mf6x4_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mf6x4_pci_table, ptr @mf6x4_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mf6x4_driver_exit = internal global ptr @mf6x4_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [49 x i8] c"mf6x4.author=Rostislav Lisovy <lisovy@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [58 x i8] c"mf6x4.description=Comedi MF634 and MF624 DAQ cards driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [40 x i8] c"mf6x4.file=drivers/comedi/drivers/mf6x4\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [18 x i8] c"mf6x4.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mf6x4\00", [26 x i8] zeroinitializer }, align 32
@mf6x4_boards = internal constant { [2 x %struct.mf6x4_board], [32 x i8] } { [2 x %struct.mf6x4_board] [%struct.mf6x4_board { ptr @.str.1, [3 x i32] [i32 0, i32 2, i32 3] }, %struct.mf6x4_board { ptr @.str.2, [3 x i32] [i32 0, i32 2, i32 4] }], [32 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mf634\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mf624\00", [26 x i8] zeroinitializer }, align 32
@mf6x4_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6252, i32 1588, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6252, i32 1572, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"mf6x4_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 280, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"mf6x4_pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 299, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 281, i32 20 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"mf6x4_boards\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 54, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 56, i32 21 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 60, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"mf6x4_pci_table\00", align 1
@___asan_gen_.22 = private constant [34 x i8] c"../drivers/comedi/drivers/mf6x4.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 292, i32 35 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_mf6x4_driver_exit, ptr @__initcall__kmod_mf6x4__236_306_mf6x4_driver_init6, ptr @mf6x4_driver_exit, ptr @mf6x4_driver, ptr @mf6x4_pci_driver, ptr @.str, ptr @mf6x4_boards, ptr @.str.1, ptr @.str.2, ptr @mf6x4_pci_table], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mf6x4_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mf6x4_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mf6x4_boards to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mf6x4_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @mf6x4_driver, ptr noundef nonnull @mf6x4_pci_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mf6x4_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @mf6x4_driver, ptr noundef nonnull @mf6x4_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mf6x4_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %bar2_mem = getelementptr inbounds %struct.mf6x4_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bar2_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar2_mem, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %5) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %context)
  %cmp = icmp ult i32 %context, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [2 x %struct.mf6x4_board], ptr @mf6x4_boards, i32 0, i32 %context
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
  %call1 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.then
  %call4 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 12) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %bar_nums = getelementptr [2 x %struct.mf6x4_board], ptr @mf6x4_boards, i32 0, i32 %context, i32 1
  %4 = ptrtoint ptr %bar_nums to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bar_nums, align 4
  %call9 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef %5) #4
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %call4, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %arrayidx15 = getelementptr [2 x %struct.mf6x4_board], ptr @mf6x4_boards, i32 0, i32 %context, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx15, align 4
  %call16 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef %8) #4
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %mmio, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %arrayidx22 = getelementptr [2 x %struct.mf6x4_board], ptr @mf6x4_boards, i32 0, i32 %context, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx22, align 4
  %call23 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef %11) #4
  %bar2_mem = getelementptr inbounds %struct.mf6x4_private, ptr %call4, i32 0, i32 1
  %12 = ptrtoint ptr %bar2_mem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %bar2_mem, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.end20.cleanup_crit_edge, label %if.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %cmp28 = icmp eq ptr %arrayidx, @mf6x4_boards
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %call23, i32 104
  br label %if.end35

if.else31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call4, align 4
  %add.ptr33 = getelementptr i8, ptr %14, i32 84
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then29
  %add.ptr33.sink = phi ptr [ %add.ptr, %if.then29 ], [ %add.ptr33, %if.else31 ]
  %15 = getelementptr inbounds %struct.mf6x4_private, ptr %call4, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr33.sink, ptr %15, align 4
  %call36 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %17 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 4
  %20 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 13
  %22 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16383, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 15
  %23 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @range_bipolar10, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 18
  %24 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mf6x4_ai_insn_read, ptr %insn_read, align 4
  %25 = load ptr, ptr %subdevices, align 4
  %arrayidx42 = getelementptr %struct.comedi_subdevice, ptr %25, i32 1
  %type43 = getelementptr %struct.comedi_subdevice, ptr %25, i32 1, i32 2
  %26 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %type43, align 4
  %subdev_flags44 = getelementptr %struct.comedi_subdevice, ptr %25, i32 1, i32 4
  %27 = ptrtoint ptr %subdev_flags44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 131072, ptr %subdev_flags44, align 4
  %n_chan45 = getelementptr %struct.comedi_subdevice, ptr %25, i32 1, i32 3
  %28 = ptrtoint ptr %n_chan45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %n_chan45, align 4
  %maxdata46 = getelementptr %struct.comedi_subdevice, ptr %25, i32 1, i32 13
  %29 = ptrtoint ptr %maxdata46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16383, ptr %maxdata46, align 4
  %range_table47 = getelementptr %struct.comedi_subdevice, ptr %25, i32 1, i32 15
  %30 = ptrtoint ptr %range_table47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @range_bipolar10, ptr %range_table47, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %25, i32 1, i32 19
  %31 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mf6x4_ao_insn_write, ptr %insn_write, align 4
  %call48 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subdevices, align 4
  %type54 = getelementptr %struct.comedi_subdevice, ptr %33, i32 2, i32 2
  %34 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %type54, align 4
  %subdev_flags55 = getelementptr %struct.comedi_subdevice, ptr %33, i32 2, i32 4
  %35 = ptrtoint ptr %subdev_flags55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 65536, ptr %subdev_flags55, align 4
  %n_chan56 = getelementptr %struct.comedi_subdevice, ptr %33, i32 2, i32 3
  %36 = ptrtoint ptr %n_chan56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %n_chan56, align 4
  %maxdata57 = getelementptr %struct.comedi_subdevice, ptr %33, i32 2, i32 13
  %37 = ptrtoint ptr %maxdata57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %maxdata57, align 4
  %range_table58 = getelementptr %struct.comedi_subdevice, ptr %33, i32 2, i32 15
  %38 = ptrtoint ptr %range_table58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @range_unipolar5, ptr %range_table58, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %33, i32 2, i32 20
  %39 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mf6x4_di_insn_bits, ptr %insn_bits, align 4
  %40 = load ptr, ptr %subdevices, align 4
  %type61 = getelementptr %struct.comedi_subdevice, ptr %40, i32 3, i32 2
  %41 = ptrtoint ptr %type61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %type61, align 4
  %subdev_flags62 = getelementptr %struct.comedi_subdevice, ptr %40, i32 3, i32 4
  %42 = ptrtoint ptr %subdev_flags62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 131072, ptr %subdev_flags62, align 4
  %n_chan63 = getelementptr %struct.comedi_subdevice, ptr %40, i32 3, i32 3
  %43 = ptrtoint ptr %n_chan63 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %n_chan63, align 4
  %maxdata64 = getelementptr %struct.comedi_subdevice, ptr %40, i32 3, i32 13
  %44 = ptrtoint ptr %maxdata64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %maxdata64, align 4
  %range_table65 = getelementptr %struct.comedi_subdevice, ptr %40, i32 3, i32 15
  %45 = ptrtoint ptr %range_table65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @range_unipolar5, ptr %range_table65, align 4
  %insn_bits66 = getelementptr %struct.comedi_subdevice, ptr %40, i32 3, i32 20
  %46 = ptrtoint ptr %insn_bits66 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mf6x4_do_insn_bits, ptr %insn_bits66, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.then.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ -19, %if.end20.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ %call48, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %shl = shl nuw i32 1, %and
  %conv = trunc i32 %shl to i16
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %4) #4, !srcloc !34
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp31.not = icmp eq i32 %6, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 32
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #4, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %call4 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @mf6x4_ai_eoc, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #4, !srcloc !35
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %conv8 = zext i16 %13 to i32
  %14 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxdata, align 4
  %16 = xor i32 %conv8, -1
  %xor.i = and i32 %15, %16
  %shr.i = lshr i32 %15, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.032
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %xor2.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.032, 1
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 0) #4, !srcloc !34
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %for.end ], [ %call4, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %4 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %gpioc_reg = getelementptr inbounds %struct.mf6x4_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %gpioc_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpioc_reg, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %11 = and i32 %10, -32773
  %12 = or i32 %11, 4
  %13 = ptrtoint ptr %gpioc_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpioc_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !40
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17.not = icmp eq i32 %16, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %mul = shl nuw nsw i32 %and, 1
  %add = add nuw nsw i32 %mul, 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %data, i32 %i.018
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3, align 4
  %conv = trunc i32 %18 to i16
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %21) #4, !srcloc !34
  %inc = add nuw i32 %i.018, 1
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %24 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %25, i32 %and
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val.0.lcssa, ptr %arrayidx5, align 4
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !35
  %3 = lshr i16 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %and = zext i16 %3 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #4, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state1, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %gpioc_reg = getelementptr inbounds %struct.mf6x4_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpioc_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpioc_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %5 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf6x4_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @mf6x4_driver, i32 noundef %1) #4
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

!0 = !{ptr @__initcall__kmod_mf6x4__236_306_mf6x4_driver_init6, !1, !"__initcall__kmod_mf6x4__236_306_mf6x4_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 306, i32 1}
!2 = !{ptr @__exitcall_mf6x4_driver_exit, !1, !"__exitcall_mf6x4_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 308, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 309, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 310, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 281, i32 20}
!12 = !{ptr @mf6x4_driver, !13, !"mf6x4_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 280, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 56, i32 21}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 60, i32 21}
!18 = !{ptr @mf6x4_boards, !19, !"mf6x4_boards", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 54, i32 33}
!20 = !{ptr @mf6x4_pci_driver, !21, !"mf6x4_pci_driver", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 299, i32 26}
!22 = !{ptr @mf6x4_pci_table, !23, !"mf6x4_pci_table", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/mf6x4.c", i32 292, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2152536838}
!34 = !{i64 4994646}
!35 = !{i64 4994846}
!36 = !{i64 2152535421}
!37 = !{i64 4995684}
!38 = !{i64 2152536033}
!39 = !{i64 2152537388}
!40 = !{i64 4995266}
