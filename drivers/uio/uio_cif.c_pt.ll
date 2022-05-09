; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_cif.c_pt.bc'
source_filename = "../drivers/uio/uio_cif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }

@__initcall__kmod_uio_cif__236_131_hilscher_pci_driver_init6 = internal global ptr @hilscher_pci_driver_init, section ".initcall6.init", align 4
@hilscher_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @hilscher_pci_ids, ptr @hilscher_pci_probe, ptr @hilscher_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hilscher_pci_driver_exit = internal global ptr @hilscher_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [33 x i8] c"uio_cif.file=drivers/uio/uio_cif\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [23 x i8] c"uio_cif.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [47 x i8] c"uio_cif.author=Hans J. Koch, Benedikt Spranger\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uio_cif\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hilscher\00", [23 x i8] zeroinitializer }, align 32
@hilscher_pci_ids = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36912, i32 5400, i32 1072, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 5400, i32 1074, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CIF_Profibus\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CIF_Devicenet\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CIF_???\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"hilscher_pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 124, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 131, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 125, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"hilscher_pci_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 108, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 70, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 73, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 76, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [25 x i8] c"../drivers/uio/uio_cif.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 78, i32 18 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_hilscher_pci_driver_exit, ptr @__initcall__kmod_uio_cif__236_131_hilscher_pci_driver_init6, ptr @hilscher_pci_driver_exit, ptr @hilscher_pci_driver, ptr @.str, ptr @.str.1, ptr @hilscher_pci_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hilscher_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hilscher_pci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hilscher_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @hilscher_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hilscher_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @pci_unregister_driver(ptr noundef nonnull @hilscher_pci_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hilscher_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 284, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_enable_device(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_disable_crit_edge

if.end5.out_disable_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_disable

if.end9:                                          ; preds = %if.end5
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %addr = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool14.not = icmp eq i32 %1, 0
  br i1 %tobool14.not, label %if.end9.out_release_crit_edge, label %if.end16

if.end9.out_release_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_release

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #3
  %internal_addr = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 5
  %3 = ptrtoint ptr %internal_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call17, ptr %internal_addr, align 4
  %tobool23.not = icmp eq ptr %call17, null
  br i1 %tobool23.not, label %if.end16.out_release_crit_edge, label %if.end25

if.end16.out_release_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_release

if.end25:                                         ; preds = %if.end16
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end25.cond.end_crit_edge, label %cond.false

if.end25.cond.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %sub = add i32 %5, 1
  %add = sub i32 %sub, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end25.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end25.cond.end_crit_edge ]
  %size = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %size, align 4
  %memtype = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %memtype, align 4
  %arrayidx39 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx39, align 8
  %addr43 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %12 = ptrtoint ptr %addr43 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addr43, align 4
  %end46 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 1
  %13 = ptrtoint ptr %end46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp47 = icmp eq i32 %14, 0
  %sub56 = sub i32 1, %11
  %add57 = add i32 %sub56, %14
  %cond59 = select i1 %cmp47, i32 0, i32 %add57
  %size62 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 3
  %15 = ptrtoint ptr %size62 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond59, ptr %size62, align 4
  %memtype65 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %16 = ptrtoint ptr %memtype65 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %memtype65, align 4
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3
  %17 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subdevice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074, i32 %18)
  %switch.selectcmp = icmp eq i32 %18, 1074
  %switch.select = select i1 %switch.selectcmp, ptr @.str.3, ptr @.str.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1072, i32 %18)
  %switch.selectcmp115 = icmp eq i32 %18, 1072
  %switch.select116 = select i1 %switch.selectcmp115, ptr @.str.2, ptr %switch.select
  %name68 = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %name68 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %switch.select116, ptr %name68, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.5, ptr %version, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %irq69 = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %irq69 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %irq69, align 4
  %irq_flags = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %irq_flags, align 4
  %handler = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hilscher_handler, ptr %handler, align 4
  %call71 = tail call i32 @__uio_register_device(ptr noundef null, ptr noundef %dev1, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %out_unmap

if.end74:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_unmap:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %internal_addr, align 4
  tail call void @iounmap(ptr noundef %28) #3
  br label %out_release

out_release:                                      ; preds = %out_unmap, %if.end16.out_release_crit_edge, %if.end9.out_release_crit_edge
  tail call void @pci_release_regions(ptr noundef %dev) #3
  br label %out_disable

out_disable:                                      ; preds = %out_release, %if.end5.out_disable_crit_edge
  tail call void @pci_disable_device(ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %out_disable, %if.end74, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %out_disable ], [ 0, %if.end74 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hilscher_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @uio_unregister_device(ptr noundef %1) #3
  tail call void @pci_release_regions(ptr noundef %dev) #3
  tail call void @pci_disable_device(ptr noundef %dev) #3
  %internal_addr = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %internal_addr, align 4
  tail call void @iounmap(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hilscher_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_addr = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 3, i32 0, i32 5
  %0 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %3 = and i8 %2, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.not = icmp eq i8 %3, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %5 = and i8 %4, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %5) #3, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_uio_cif__236_131_hilscher_pci_driver_init6, !1, !"__initcall__kmod_uio_cif__236_131_hilscher_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_cif.c", i32 131, i32 1}
!2 = !{ptr @__exitcall_hilscher_pci_driver_exit, !1, !"__exitcall_hilscher_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_cif.c", i32 133, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author239, !7, !"__UNIQUE_ID_author239", i1 false, i1 false}
!7 = !{!"../drivers/uio/uio_cif.c", i32 134, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/uio/uio_cif.c", i32 125, i32 10}
!11 = !{ptr @hilscher_pci_driver, !12, !"hilscher_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/uio/uio_cif.c", i32 124, i32 26}
!13 = !{ptr @hilscher_pci_ids, !14, !"hilscher_pci_ids", i1 false, i1 false}
!14 = !{!"../drivers/uio/uio_cif.c", i32 108, i32 29}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/uio/uio_cif.c", i32 70, i32 17}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/uio/uio_cif.c", i32 73, i32 17}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/uio/uio_cif.c", i32 76, i32 17}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/uio/uio_cif.c", i32 78, i32 18}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 4981390}
!33 = !{i64 2152520735}
!34 = !{i64 2152522340}
!35 = !{i64 4980995}
