; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_670x.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_670x.c"
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
%struct.ni_670x_board = type { ptr, i16 }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
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
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_ni_670x__236_277_ni_670x_driver_init6 = internal global ptr @ni_670x_driver_init, section ".initcall6.init", align 4
@ni_670x_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @ni_670x_detach, ptr @ni_670x_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ni_670x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ni_670x_pci_table, ptr @ni_670x_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ni_670x_driver_exit = internal global ptr @ni_670x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"ni_670x.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [44 x i8] c"ni_670x.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [44 x i8] c"ni_670x.file=drivers/comedi/drivers/ni_670x\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"ni_670x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ni_670x\00", [24 x i8] zeroinitializer }, align 32
@ni_670x_boards = internal constant { [3 x %struct.ni_670x_board], [40 x i8] } { [3 x %struct.ni_670x_board] [%struct.ni_670x_board { ptr @.str.1, i16 16 }, %struct.ni_670x_board { ptr @.str.2, i16 32 }, %struct.ni_670x_board { ptr @.str.3, i16 32 }], [40 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_0_20mA = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI-6703\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PXI-6704\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI-6704\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ni_670x_pci_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4243, i32 4752, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4243, i32 6432, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4243, i32 11408, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"ni_670x_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 250, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"ni_670x_pci_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 271, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 251, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"ni_670x_boards\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 51, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 53, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 57, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 61, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"ni_670x_pci_table\00", align 1
@___asan_gen_.26 = private constant [36 x i8] c"../drivers/comedi/drivers/ni_670x.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 263, i32 35 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_ni_670x_driver_exit, ptr @__initcall__kmod_ni_670x__236_277_ni_670x_driver_init6, ptr @ni_670x_driver_exit, ptr @ni_670x_driver, ptr @ni_670x_pci_driver, ptr @.str, ptr @ni_670x_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ni_670x_pci_table], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_670x_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_670x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_670x_boards to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_670x_pci_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_670x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @ni_670x_driver, ptr noundef nonnull @ni_670x_pci_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ni_670x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @ni_670x_driver, ptr noundef nonnull @ni_670x_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ni_670x_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @comedi_pci_detach(ptr noundef %dev) #5
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %range_table_list = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %range_table_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %range_table_list, align 4
  tail call void @kfree(ptr noundef %5) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_670x_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %context)
  %cmp = icmp ugt i32 %context, 2
  %arrayidx = getelementptr [3 x %struct.ni_670x_board], ptr @ni_670x_boards, i32 0, i32 %context
  %tobool.not108 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not108
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end2

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

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
  %call3 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup56_crit_edge

if.end2.cleanup56_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end6:                                          ; preds = %if.end2
  %call7 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup56_crit_edge, label %if.end10

if.end6.cleanup56_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end10:                                         ; preds = %if.end6
  %call.i = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.cleanup56_crit_edge, label %if.end14

if.end10.cleanup56_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end14:                                         ; preds = %if.end10
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %or.i = or i32 %5, 128
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !36
  tail call void @iounmap(ptr noundef nonnull %call.i) #5
  %call15 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 1) #5
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %mmio, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end14.cleanup56_crit_edge, label %if.end19

if.end14.cleanup56_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup56_crit_edge

if.end19.cleanup56_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end23:                                         ; preds = %if.end19
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 4
  %11 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 131072, ptr %subdev_flags, align 4
  %ao_chans = getelementptr [3 x %struct.ni_670x_board], ptr @ni_670x_boards, i32 0, i32 %context, i32 1
  %12 = ptrtoint ptr %ao_chans to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ao_chans, align 4
  %conv = zext i16 %13 to i32
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 13
  %15 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65535, ptr %maxdata, align 4
  %16 = add nsw i32 %context, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 128) #8
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.then28.cleanup56_crit_edge, label %if.end32

if.then28.cleanup56_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %range_table_list33 = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 16
  %19 = ptrtoint ptr %range_table_list33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %range_table_list33, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @range_bipolar10, ptr %call7.i.i, align 8
  %arrayidx37 = getelementptr ptr, ptr %call7.i.i, i32 16
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @range_0_20mA, ptr %arrayidx37, align 8
  %arrayidx36.1 = getelementptr ptr, ptr %call7.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @range_bipolar10, ptr %arrayidx36.1, align 4
  %arrayidx37.1 = getelementptr ptr, ptr %call7.i.i, i32 17
  %23 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @range_0_20mA, ptr %arrayidx37.1, align 4
  %arrayidx36.2 = getelementptr ptr, ptr %call7.i.i, i32 2
  %24 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @range_bipolar10, ptr %arrayidx36.2, align 8
  %arrayidx37.2 = getelementptr ptr, ptr %call7.i.i, i32 18
  %25 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @range_0_20mA, ptr %arrayidx37.2, align 8
  %arrayidx36.3 = getelementptr ptr, ptr %call7.i.i, i32 3
  %26 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @range_bipolar10, ptr %arrayidx36.3, align 4
  %arrayidx37.3 = getelementptr ptr, ptr %call7.i.i, i32 19
  %27 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @range_0_20mA, ptr %arrayidx37.3, align 4
  %arrayidx36.4 = getelementptr ptr, ptr %call7.i.i, i32 4
  %28 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @range_bipolar10, ptr %arrayidx36.4, align 8
  %arrayidx37.4 = getelementptr ptr, ptr %call7.i.i, i32 20
  %29 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @range_0_20mA, ptr %arrayidx37.4, align 8
  %arrayidx36.5 = getelementptr ptr, ptr %call7.i.i, i32 5
  %30 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @range_bipolar10, ptr %arrayidx36.5, align 4
  %arrayidx37.5 = getelementptr ptr, ptr %call7.i.i, i32 21
  %31 = ptrtoint ptr %arrayidx37.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @range_0_20mA, ptr %arrayidx37.5, align 4
  %arrayidx36.6 = getelementptr ptr, ptr %call7.i.i, i32 6
  %32 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @range_bipolar10, ptr %arrayidx36.6, align 8
  %arrayidx37.6 = getelementptr ptr, ptr %call7.i.i, i32 22
  %33 = ptrtoint ptr %arrayidx37.6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @range_0_20mA, ptr %arrayidx37.6, align 8
  %arrayidx36.7 = getelementptr ptr, ptr %call7.i.i, i32 7
  %34 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @range_bipolar10, ptr %arrayidx36.7, align 4
  %arrayidx37.7 = getelementptr ptr, ptr %call7.i.i, i32 23
  %35 = ptrtoint ptr %arrayidx37.7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @range_0_20mA, ptr %arrayidx37.7, align 4
  %arrayidx36.8 = getelementptr ptr, ptr %call7.i.i, i32 8
  %36 = ptrtoint ptr %arrayidx36.8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @range_bipolar10, ptr %arrayidx36.8, align 8
  %arrayidx37.8 = getelementptr ptr, ptr %call7.i.i, i32 24
  %37 = ptrtoint ptr %arrayidx37.8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @range_0_20mA, ptr %arrayidx37.8, align 8
  %arrayidx36.9 = getelementptr ptr, ptr %call7.i.i, i32 9
  %38 = ptrtoint ptr %arrayidx36.9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @range_bipolar10, ptr %arrayidx36.9, align 4
  %arrayidx37.9 = getelementptr ptr, ptr %call7.i.i, i32 25
  %39 = ptrtoint ptr %arrayidx37.9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @range_0_20mA, ptr %arrayidx37.9, align 4
  %arrayidx36.10 = getelementptr ptr, ptr %call7.i.i, i32 10
  %40 = ptrtoint ptr %arrayidx36.10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @range_bipolar10, ptr %arrayidx36.10, align 8
  %arrayidx37.10 = getelementptr ptr, ptr %call7.i.i, i32 26
  %41 = ptrtoint ptr %arrayidx37.10 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @range_0_20mA, ptr %arrayidx37.10, align 8
  %arrayidx36.11 = getelementptr ptr, ptr %call7.i.i, i32 11
  %42 = ptrtoint ptr %arrayidx36.11 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @range_bipolar10, ptr %arrayidx36.11, align 4
  %arrayidx37.11 = getelementptr ptr, ptr %call7.i.i, i32 27
  %43 = ptrtoint ptr %arrayidx37.11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @range_0_20mA, ptr %arrayidx37.11, align 4
  %arrayidx36.12 = getelementptr ptr, ptr %call7.i.i, i32 12
  %44 = ptrtoint ptr %arrayidx36.12 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @range_bipolar10, ptr %arrayidx36.12, align 8
  %arrayidx37.12 = getelementptr ptr, ptr %call7.i.i, i32 28
  %45 = ptrtoint ptr %arrayidx37.12 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @range_0_20mA, ptr %arrayidx37.12, align 8
  %arrayidx36.13 = getelementptr ptr, ptr %call7.i.i, i32 13
  %46 = ptrtoint ptr %arrayidx36.13 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @range_bipolar10, ptr %arrayidx36.13, align 4
  %arrayidx37.13 = getelementptr ptr, ptr %call7.i.i, i32 29
  %47 = ptrtoint ptr %arrayidx37.13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @range_0_20mA, ptr %arrayidx37.13, align 4
  %arrayidx36.14 = getelementptr ptr, ptr %call7.i.i, i32 14
  %48 = ptrtoint ptr %arrayidx36.14 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @range_bipolar10, ptr %arrayidx36.14, align 8
  %arrayidx37.14 = getelementptr ptr, ptr %call7.i.i, i32 30
  %49 = ptrtoint ptr %arrayidx37.14 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @range_0_20mA, ptr %arrayidx37.14, align 8
  %arrayidx36.15 = getelementptr ptr, ptr %call7.i.i, i32 15
  %50 = ptrtoint ptr %arrayidx36.15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @range_bipolar10, ptr %arrayidx36.15, align 4
  %arrayidx37.15 = getelementptr ptr, ptr %call7.i.i, i32 31
  %51 = ptrtoint ptr %arrayidx37.15 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @range_0_20mA, ptr %arrayidx37.15, align 4
  br label %if.end38

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 15
  %52 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @range_bipolar10, ptr %range_table, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end32
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 19
  %53 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ni_670x_ao_insn_write, ptr %insn_write, align 4
  %call39 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup56_crit_edge

if.end38.cleanup56_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %subdevices, align 4
  %type45 = getelementptr %struct.comedi_subdevice, ptr %55, i32 1, i32 2
  %56 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %type45, align 4
  %subdev_flags46 = getelementptr %struct.comedi_subdevice, ptr %55, i32 1, i32 4
  %57 = ptrtoint ptr %subdev_flags46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 196608, ptr %subdev_flags46, align 4
  %n_chan47 = getelementptr %struct.comedi_subdevice, ptr %55, i32 1, i32 3
  %58 = ptrtoint ptr %n_chan47 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %n_chan47, align 4
  %maxdata48 = getelementptr %struct.comedi_subdevice, ptr %55, i32 1, i32 13
  %59 = ptrtoint ptr %maxdata48 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %maxdata48, align 4
  %range_table49 = getelementptr %struct.comedi_subdevice, ptr %55, i32 1, i32 15
  %60 = ptrtoint ptr %range_table49 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @range_unipolar5, ptr %range_table49, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %55, i32 1, i32 20
  %61 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ni_670x_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %55, i32 1, i32 21
  %62 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ni_670x_dio_insn_config, ptr %insn_config, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio, align 4
  %add.ptr55 = getelementptr i8, ptr %66, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #5, !srcloc !36
  br label %cleanup56

cleanup56:                                        ; preds = %if.end42, %if.end38.cleanup56_crit_edge, %if.then28.cleanup56_crit_edge, %if.end19.cleanup56_crit_edge, %if.end14.cleanup56_crit_edge, %if.end10.cleanup56_crit_edge, %if.end6.cleanup56_crit_edge, %if.end2.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.1 = phi i32 [ 0, %if.end42 ], [ -19, %entry.cleanup56_crit_edge ], [ %call3, %if.end2.cleanup56_crit_edge ], [ -12, %if.end6.cleanup56_crit_edge ], [ -12, %if.end14.cleanup56_crit_edge ], [ %call20, %if.end19.cleanup56_crit_edge ], [ %call39, %if.end38.cleanup56_crit_edge ], [ -12, %if.then28.cleanup56_crit_edge ], [ -12, %if.end10.cleanup56_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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
define internal i32 @ni_670x_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22.not = icmp eq i32 %7, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %and2 = shl i32 %1, 1
  %shl = and i32 %and2, 30
  %and3 = lshr i32 %1, 4
  %shr = and i32 %and3, 1
  %or = or i32 %shl, %shr
  %8 = shl nuw nsw i32 %or, 24
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.023
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %10)
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !36
  %inc = add nuw i32 %i.023, 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %10, %for.body.for.end_crit_edge ]
  %18 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %readback, align 4
  %arrayidx10 = getelementptr i32, ptr %19, i32 %and
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val.0.lcssa, ptr %arrayidx10, align 4
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_670x_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %mmio1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio1, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !42
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_670x_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_bits, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !36
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_670x_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @ni_670x_driver, i32 noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_ni_670x__236_277_ni_670x_driver_init6, !1, !"__initcall__kmod_ni_670x__236_277_ni_670x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 277, i32 1}
!2 = !{ptr @__exitcall_ni_670x_driver_exit, !1, !"__exitcall_ni_670x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 279, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 280, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 281, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 251, i32 17}
!12 = !{ptr @ni_670x_driver, !13, !"ni_670x_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 250, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 53, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 57, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 61, i32 12}
!20 = !{ptr @ni_670x_boards, !21, !"ni_670x_boards", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 51, i32 35}
!22 = !{ptr @ni_670x_pci_driver, !23, !"ni_670x_pci_driver", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 271, i32 26}
!24 = !{ptr @ni_670x_pci_table, !25, !"ni_670x_pci_table", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/ni_670x.c", i32 263, i32 35}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2154529296}
!36 = !{i64 4620663}
!37 = !{i64 2154530478}
!38 = !{i64 2154530874}
!39 = !{i64 2154526919}
!40 = !{i64 2154527419}
!41 = !{i64 2154527816}
!42 = !{i64 4621081}
!43 = !{i64 2154528492}
!44 = !{i64 2154528717}
